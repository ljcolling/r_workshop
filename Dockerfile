FROM rocker/tidyverse:4.0.2

RUN install2.r --error \
    -- deps TRUE \
    afex \
    psych 