all: Endometriosis_Analysis.html

output/table1.rds: code/02_create_table.R data/structured_endometriosis_data.csv
	Rscript code/02_create_table.R

output/plot.png: code/03_create_figure.R data/structured_endometriosis_data.csv
	Rscript code/03_create_figure.R

output/regression_table.rds: code/04_create_regression.R data/structured_endometriosis_data.csv
	Rscript code/04_create_regression.R

Endometriosis_Analysis.html: Endometriosis_Analysis.Rmd render_report.R output/table1.rds output/plot.png output/regression_table.rds
	Rscript render_report.R
	
