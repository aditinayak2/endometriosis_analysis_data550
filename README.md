
# Endometriosis Data Analysis

## Project Description

This project analyzes a synthetic endometriosis dataset from Kaggle containing 10,000 simulated observations.

The analysis includes:
- A descriptive table comparing characteristics by endometriosis diagnosis
- A boxplot showing chronic pain levels by diagnosis and menstrual irregularity
- A logistic regression examining factors associated with endometriosis diagnosis

## Project Organization

- `data/` - Contains the original dataset
- `code/01_load_data.R` - Loads the dataset (I did not need to recode or prepare the dataset in anyway, so I know this is an unnecessary step but I still wanted to show a script here.)
- `code/02_create_table.R` - Creates the descriptive table
- `code/03_create_figure.R` - Creates the boxplot
- `code/04_regression_tables.R` - Creates the logistic regression table
- `output/` - Contains the generated tables and figure
- `Endometriosis_Analysis.Rmd` - R Markdown report
- `render_report.R` - Renders the report
- `Makefile` - Automates the analysis and report generation

## How to Generate the Report

Open the project in RStudio. In the Terminal tab, run:

    make

This runs the analysis scripts and generates `Endometriosis_Analysis.html`.

## Data Source

Synthetic Endometriosis Dataset, Kaggle:
https://www.kaggle.com/datasets/michaelanietie/endometriosis-dataset
