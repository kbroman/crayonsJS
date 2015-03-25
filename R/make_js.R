# make crayons.js

outfile = "../crayons.js"

library(broman)
library(RJSONIO)

colors <- RJSONIO::toJSON(brocolors("crayons"))
colors <- gsub("\\n", "", colors)
colors <- gsub(": ", ":", colors)
colors <- gsub(" \\}", "}", colors)
colors <- gsub("\\{ ", "{", colors)

cat("// colors from http://en.wikipedia.org/wiki/List_of_Crayola_crayon_colors\n\n",
    file=outfile)
cat("crayons=", file=outfile, append=TRUE)
cat(colors, file=outfile, append=TRUE)
cat(";", file=outfile, append=TRUE)
