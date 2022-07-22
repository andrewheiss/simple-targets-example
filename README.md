# Mini example of [{targets}](https://docs.ropensci.org/targets/) and [{tarchetypes}](https://docs.ropensci.org/tarchetypes/)

This example takes a CSV file, cleans it, runs a model with {brms}, knits an R Markdown report, and builds a Quarto website.

## How to run

1. Confirm that you've installed [Quarto](https://quarto.org/) ([instructions](https://quarto.org/docs/get-started/))
2. Install these R packages:
    - tidyverse
    - targets
    - tarchetypes >= 0.6.0.9000 ([from GitHub](https://github.com/ropensci/tarchetypes/))
    - brms
    - tidybayes
    - kableExtra
    - broom.mixed
3. Run `targets::tar_visnetwork()` to see how all the different targets are connected.
4. Run `targets::tar_make()` in your console to build everything.
