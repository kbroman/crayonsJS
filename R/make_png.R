# make PNG with examples

library(broman)
png("../crayons.png", height=1000, width=1000, pointsize=18)
plot_crayons()
dev.off()
