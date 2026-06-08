# make crayons.js

outfile = "../crayons.js"

library(broman)
library(jsonlite)

colors <- jsonlite::toJSON(as.list(brocolors("crayons")), auto_unbox=TRUE)
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
cat(";", file=outfile, append=TRUE)
