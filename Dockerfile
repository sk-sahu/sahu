FROM rocker/tidyverse:3.6.1

# Install R packages
RUN install2.r --error \
    jsonlite
    
