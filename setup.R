# initialise renv
renv::init()

# check all R libraries are OK
renv::snapshot()

# install a newer version of python
reticulate::install_python("3.9:latest")

# macos bug:
#   > clang: error: invalid version number in 'MACOSX_DEPLOYMENT_TARGET=12.7'
# fix: 
# https://stackoverflow.com/a/64838849

# create the python venv
renv::use_python(name = "vetiver-workshop")

# tip to remove all of the virtual environments I created while 
# figuring things out: https://stackoverflow.com/a/11005505

# installs requirements.txt to the newly created virtual environment
# https://rstudio.github.io/renv/articles/python.html
renv::restore()

# once the python libraries get installed, document the entire dependency tree
renv::snapshot()

# install docker
# https://docs.docker.com/desktop/install/mac-install/
