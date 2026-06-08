# make crayons.js

outfile = "../crayons.js"

library(broman)
library(jsonlite)

crayons <- brocolors("crayons")
w <- which(names(crayons) == "Violet (Purple)")
names(crayons)[w] <- "Violet"
crayons["Purple"] <- crayons["Violet"]
crayons <- crayons[order(names(crayons))]

colors <- jsonlite::toJSON(as.list(crayons), auto_unbox=TRUE)
colors <- gsub("\\n", "", colors)
colors <- gsub(": ", ":", colors)
colors <- gsub(" \\}", "}", colors)
colors <- gsub("\\{ ", "{", colors)

cat("// crayons.js, https://github.com/kbroman/crayonsJS\n",
    file=outfile)
cat("// colors from http://en.wikipedia.org/wiki/List_of_Crayola_crayon_colors\n\n",
    file=outfile, append=TRUE)
cat("crayons=", file=outfile, append=TRUE)
cat(colors, file=outfile, append=TRUE)
cat(";\n", file=outfile, append=TRUE)
