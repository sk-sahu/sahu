# sahu

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Launch Rstudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/sk-sahu/sahu/master?urlpath=rstudio)
[![Build Status](https://dev.azure.com/sahu-sk/r-sahu/_apis/build/status/sk-sahu.sahu?branchName=master)](https://dev.azure.com/sahu-sk/r-sahu/_build/latest?definitionId=1&branchName=master)
[![Build status](https://ci.appveyor.com/api/projects/status/3au402927srg81by?svg=true)](https://ci.appveyor.com/project/sk-sahu/sahu)
[![Travis build status](https://img.shields.io/travis/sk-sahu/sahu.svg?logo=travis)](https://travis-ci.org/sk-sahu/sahu)
[![codecov](https://codecov.io/gh/sk-sahu/sahu/branch/master/graph/badge.svg)](https://codecov.io/gh/sk-sahu/sahu)
[![Install with Anaconda][bioconda-badge]](https://anaconda.org/sksahu/r-sahu)
<!-- badges: end -->

## Utility functions and APIs library
Compilation of some utility and wraper functions, along with API calls use in daily tasks.

**This is a work in progress. In Development**

## Install
```r
require(devtools)
devtools::install_github("sk-sahu/sahu")
```

## Web APIs and Apps
Use functions via Web API and Apps hosted on OpenCPU server: https://sk-sahu.ocpu.io/sahu/www


---
[bioconda-badge]:https://img.shields.io/badge/install%20with-Anaconda-green.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADEAAAAyCAYAAAD1CDOyAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAN1wAADdcBQiibeAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAa2SURBVGiBxZprjFVXFcd/e2aA6UAoYGrk0aZYKvXdwWAyoDyswRqhxmpNjQFrNOIHTR+aJhoxrWBoAz4aGz80bdWCsW1qq5IGSlvDQA1aUGw7BEuR4dFCrVSY0qFYYH5+WHt674zzOHdm7sw/uTn7nLP2Put/z9prr7X2SQwh1InASqAJmAyMBcYDbUA7cAR4HngOaAZ2ppTODqUOA4Jar16mTsjnU9THLIYT6j3qPDWNlPI/V29X31T3qV9Ux6tJ/WlBIp14Vl2m1lZb8Tnqwtz+XH54i7olt9eoreqMTOSOComo/kVtrIbyo9Ufqe3qWLVR3azuzg++LR9vzcfvq+/NRO4bAJEz6koLvpWaAgQmAVuAm4DtKaV2YBlwBfBIFuucnOOADmAKsCalJPDriv6xQB3wPeBx9YL+hPskoU4hvEhTvvRCPp7IfccBp4HZ+V4jsBeYASxXa4AVlXN4CwuBreqFfQn1SkJtAL4N7AG2AvuBV/LtscBh4FribSwANgMfBp4G/pRSOgzcCMwdBAmAy4Bt6rRBjtMV6i3qDdl+V+TjLfn4NUtu99QA5kNv2G2sQ/+HHn2zegmwBJgEzAcOAuuB4ymlHVmmFvgK8BFgFvBX4HJgaUrpWfVtwCjgVD5OA94DzMtjTx3A//cosCTPtd6hvl99PbPfpD6S283q17PMSnV2bjeoi8yutwjUWvXThnuuFDcWGXyz4Sr/mzvtVNfl9t1Z7ol8fldRxft43nL13xWQeMOwlF4H/WAWbM9E9ufz/cZCtifL3aduVScPhkTZc6dbWnOK4A99DTY/K38gC/9G/V1uH1NXZLkr1fOGgkDZsyeoT1ZAZF5Pg0xVP5oFHlbvVM+qe9QfG6vovqFUvAcdxqnPFSTxaPfO09WfGK7xP1nouLpK3WG4ytvsb1INDZFLy3ToCx3qzPKOt2alG9Ql6sYspGH7q9TvWu0Is6TPsoJv4wflnf6ZL35LPV+9X12oXmX4+2GFWmOE5v1hb2eHi/KFM+qasoHOM5KV76gb1DnDTGRJwbdxMeoX1O1G6FyrfsaYGzeUCR4wgrnhJJEsufi+cF0N8C8iWhwD3A6sBe4G7gDuyWM+kFLqGE4SObR4qIDoLOCtgK4j/14wXOxydZQReiyuqsa9QP1EgTexKakfB64DJgIX5t+EPM43iaTGlNKJESDxdsJS+sK+pL5KRKsALwOHgKNEmeUUsDqldKhqmvYD9SSRfPWGYxiVip5w1lh0BpOZDRrq4X7M6XQdkSfUAqOJ3HYUUJ+vTQSOjRiDQH8OJdUB19D1db1BVOqOAgeAjVVRrTjO7+f+63XA9UQhYAxB5gKiBNkIfAmYpLallI5XU9OeYKSj/ZFoQ61Tf9bNzl4zQpCp2SavHA6lu0NdUMDFPlkHfBZYRZjNHOBiYDuwDthG5MZNwKYR4FEk5d2LulQ9alQpGtSrjSrf/WVs9zgCBV+LZXvLO3OJThw0MqxLM5GPqavVv6vzh5lAEVNSnVmXUmpVXyJKKE8R5vM34DHgGeBVYCml6t9wEEjA6gKiL6aUnu/stCaz+oD6DXW9USzQiKXWGZHu+6qqfUY26SJYW95pprG/ME09lwVeU39hKRx+ybJ8o4oEphlztAgau3depl6bb/7RrpWHjca+wYtG5je6SgTq83OKoLmnAWoykXvV01mwLZ+fVA+pDxrZ3ga1fogJjFV/X5CA9rZ2GRWPTmyztPfWalT9Dlh6W09YYO+gIIEpRlWlKLbam8tXZxt12HvVI7nDP9SncnujelPZYK+onx8kgWssPgc0agFdHEyXvDlXvK8HvkzET7uIvGIu0EJsoHTmHmeAPwMz1B+qCypQvFb9pLoNeBB4RwW8V6WUWrro3cMDRhHbW4kICmcBuzMZgV8SIfpB4GYikfoUsRFzCbG+PA60EtFwGxHmTyVK+/OBxQystN8MXJFSOtcniUykAfgQEbvUE3sPY4hUcTxwF7EgLiJ2iBYBDwNXD0CxotgPzEkp9ZeulqBOVH9leIynjZJ6u/pVY8+iQ91leLI31WcqsOtK8bI6Y0DUjVrUkW4DXmUpMPttPm6xemhV39WXnn0WxFJKu4md0R1llycD7yZs/fJ8rVop7HZgbkpp76BHMkL0Ow0TWm9EtRvyP1UNUzqnrjWczNDCCM13qjdbCkuah5jALrWpf20GR6RWfadRJdTSvBgsWoywp66qBHogs9j45qNtgIqfMCLlhQ6iYD0kKac6hsjDm4gqyXTgIqCBqKC0AScpfbTVQumjrXM9jVkJ/gfEGHquO3j8DQAAAABJRU5ErkJggg==
