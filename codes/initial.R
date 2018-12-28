# initial methods

# location of the current working directory as an absolute path

# set a working directory to the location of the current script
# parameters:
# dir .. the root directory of the script considered the 'current' one
set_wd <- function(dir) {
        setwd(file.path(this.dir, dir))
}

# resume the working directory to the original location.
# this method is supposed to be called at the end of the client script
resume_wd <- function() {
        setwd(this.dir)
}

# install the required packages if needed and imports them
load_packages <- function(...) {
        packages <- c(...)
        lapply(packages, function(pkg) {
                if (!pkg %in% installed.packages()) 
                        install.packages(pkg)
        })
        sapply(packages, require, character.only = TRUE, quietly = TRUE)
}

