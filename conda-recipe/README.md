# conda recipe
Built a conda recipe from github URL and upload into anaconda.

## install required conda packages
```
conda install conda-build anaconda-client
```

## prepare conda recipe
```
conda skeleton cran https://github.com/sk-sahu/sahu
```

## built conda recipe
```
conda-build r-sahu
```

## upload ro anaconda
```
anaconda upload /home/sangram/miniconda3/conda-bld/linux-64/r-sahu-0.1.0-r35_0.tar.bz2
```