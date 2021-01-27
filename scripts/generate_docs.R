# Template details --------------------------------------------------------
yaml<- "scripts/yaml_template.yml" 
skeletonFile <- "scripts/template.Rmd"


# Datasets ----------------------------------------------------------------
render_report = function(yaml, skeletonFile, dat, path="_docs/data") {
	#get all data file
	var <- chronosphere::datasets(dat$dat)
	
	if(length(unique(var$var))== 1){
		# get latest version
		var <- var[ which.max(var$access_date),]
		
		#get size
		link <- sprintf("https://www.cnidaria.nat.fau.de/tersane/public/chronosphere/chrono-arch-2/%s/%s/%s",var$dat, var$var, var$archive_name)
		
		response = httr::HEAD(link)
		size <- as.numeric(httr::headers(response)[["Content-Length"]])
		size <- R.utils::hsize(size)
		
		#write temp file for code chunk, basic function
		fetch_function_01 <- sprintf('
```{r eval=FALSE}
ctdb <- fetch(dat = %s)
```', 
									 var$dat[1])
		
		fetch_function_02 <- sprintf('
```{r eval=FALSE}
ctdb <- fetch(dat = %s, var = %s, dir, verbose=FALSE)

```', var$dat[1], var$var[1])
		
		# read in the YAML + src file
		yaml <- readLines(yaml)
		rmd <- readLines(skeletonFile)
		
		#replace title
		rmd <- gsub("Sample Title", dat$dat_name, rmd)
		rmd <- gsub("perma__link", dat$dat, rmd)
		# replace fetch_functions
		rmd <- gsub("fetch_function_01", fetch_function_01, rmd)
		rmd <- gsub("fetch_function_02", fetch_function_02, rmd)
		# insert the YAML in after the first ---
		# I'm assuming all my RMDs have properly-formed YAML and that the first
		# occurence of --- starts the YAML. You could do proper validation if you wanted.
		yamlHeader <- grep('^---$', rmd)[1]
		# put the yaml in
		rmd <- append(rmd, yaml, after=yamlHeader)
		
		write(rmd, file="test.Rmd")
		
		rmarkdown::render(
			"test.Rmd", params = list(
				var=var$var[1],
				dat=var$dat[1],
				vars=paste(var$var, collapse="\n"),
				res=paste(var$res, collapse="\n"),
				url=var$url[1],
				archive_name=var$archive_name,
				archive_size = size,
				ver=paste(var$ver, collapse="\n"),
				licence = var$licence,
				citation= gsub("\\\\n", "<br><br>", var$citation)
			),
			output_file = file.path(path, paste0(var$dat, ".html"))
		)
		
		file.remove(file.path(path, paste0(var$dat, ".html")))
		
		# delete params from md file
		md_file <- readLines(file.path(path, paste0(var$dat, ".md")))
		
		#parameters
		start <- grep("params",md_file)
		end <- grep("title",md_file) -1
		md_file <- md_file[-c(start:end)]
		
		#output
		start <- grep("output:",md_file)
		end <- grep("keep_md",md_file)
		md_file <- md_file[-c(start:end)]
		
		write(md_file, file=file.path(path, paste0(var$dat, ".md")))
		
	}
}

# render all reports

dat <- chronosphere::datasets()

for(i in 1:nrow(dat)){
	render_report(yaml, skeletonFile, dat[i,])
}



