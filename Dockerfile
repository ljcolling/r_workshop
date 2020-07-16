FROM rocker/tidyverse:4.0.2


RUN R -e 'xfun::pkg_attach2("tidyverse")'
RUN R -e 'xfun::pkg_attach2("emmeans")'
RUN R -e 'xfun::pkg_attach2("afex")'
RUN R -e 'xfun::pkg_attach2("psych")'

COPY rara_0.1.0.tar.gz rara_0.1.0.tar.gz 
COPY teachingtools_0.0.0.9000.tar.gz teachingtools_0.0.0.9000.tar.gz
RUN R CMD INSTALL rara_0.1.0.tar.gz 
RUN R CMD INSTALL teachingtools_0.0.0.9000.tar.gz

RUN R -e 'xfun::pkg_attach2("apa")'
RUN R -e 'xfun::pkg_attach2("here")'
RUN R -e 'xfun::pkg_attach2("ggbeeswarm")'