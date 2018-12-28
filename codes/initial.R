# initial methods

# location of the current working directory as an absolute path

# Sets a working directory to the location of the current script
# Params:
# dir .. the root directory of the script considered the 'current' one
set_wd <- function(dir) {
        setwd(file.path(this.dir, dir))
}

