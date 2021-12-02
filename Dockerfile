FROM r-base:4.0.3

RUN apt-get update

RUN echo 'APT::Get::Install-Recommends "false";' >> /etc/apt/apt.conf
RUN echo 'options(Ncpus=4, repos=structure(c(CRAN="https://cloud.r-project.org")))' > ~/.Rprofile
RUN echo 'installOrQuit <- function(p) {tryCatch(install.packages(p), warning=function(e){q(status=1)})}' >> ~/.Rprofile

# external dependencies
RUN apt-get install -y gnupg
RUN apt-get install -y software-properties-common
RUN add-apt-repository --yes ppa:deadsnakes/ppa
RUN apt-get install python3.8 python3-pip python3-pandas python3-setuptools
RUN pip3 install --upgrade pip
RUN pip install -r requirements.txt
RUN apt-get install -y pandoc pandoc-citeproc && apt-get clean

# prefer binary R packages, if they are available
RUN apt-get install -y \
r-cran-data.table r-cran-DT \
r-cran-tidyverse r-cran-bookdown

# add missing source packages in blocks of 4
RUN Rscript -e "installOrQuit(c('assertr', 'pacman', 'here', 'lemon'))"
