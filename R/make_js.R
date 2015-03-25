# make crayons.js

outfile = "../crayons.js"

library(broman)
library(RJSONIO)
cat("// colors from http://en.wikipedia.org/wiki/List_of_Crayola_crayon_colors\n\n",
    file=outfile)
cat("crayons = ", file=outfile, append=TRUE)
cat(RJSONIO::toJSON(brocolors("crayons")),
    file=outfile, append=TRUE)
cat(";", file=outfile, append=TRUE)
