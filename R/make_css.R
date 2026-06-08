# make crayons.css

outfile = "../crayons.css"

library(broman)
library(jsonlite)

crayons <- brocolors("crayons")
w <- which(names(crayons) == "Violet (Purple)")
names(crayons)[w] <- "Violet"
crayons["Purple"] <- crayons["Violet"]
crayons <- crayons[order(names(crayons))]

colors <- paste0("  --", gsub(" ", "", names(crayons)), ": ", crayons, ";")
colors <- gsub("'", "", colors)

cat("/* crayons.css, https://github.com/kbroman/crayonsjs */\n",
    file=outfile)
cat("/* colors from http://en.wikipedia.org/wiki/List_of_Crayola_crayon_colors */\n\n",
    file=outfile, append=TRUE)
cat(":root {\n", file=outfile, append=TRUE)
cat(colors, sep="\n", file=outfile, append=TRUE)
cat("}\n", file=outfile, append=TRUE)
