FROM rocker/tidyverse:4.0.2

RUN R -e 'xfun::pkg_attach2("afex")'
RUN R -e 'xfun::pkg_attach2("psych")'