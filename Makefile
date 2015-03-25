all: crayons.js crayons.png
.PHONY: all

# R options (--vanilla, but without --no-environ)
R_OPTS=--no-save --no-restore --no-init-file --no-site-file

crayons.js: R/make_js.R
	cd $(<D);R CMD BATCH $(R_OPTS) $(<F)

crayons.png: R/make_png.R
	cd $(<D);R CMD BATCH $(R_OPTS) $(<F)
