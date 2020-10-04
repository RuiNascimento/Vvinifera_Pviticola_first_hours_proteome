library("devtools")
library("AnnotationDbi")

# Method 1:
## Install custom AnnotationForge package to use with Ensembl Plants
devtools::install_github("https://github.com/RuiNascimento/AnnotationForge")
library("AnnotationForge")

# Method 2:
## Clone or download the custom git repo from https://github.com/RuiNascimento/AnnotationForge and load with devtools:
#devtools::load_all("Path to custom AnnotationForge")


# Create the Vitis vinifera package
# WARNING: it takes a long time to complete!
makeOrgPackageFromNCBI(version = "0.2",
                       author = "Rui Nascimento <rfnascimento@fc.ul.pt>",
                       maintainer = "Rui Nascimento <rfnascimento@fc.ul.pt>",
                       outputDir = ".",
                       tax_id = "29760",
                       genus = "Vitis",
                       species = "vinifera",
                       rebuildCache = TRUE)

# Install the locally created package
install.packages("./org.Vvinifera.eg.db", repos=NULL)