# Europeana
 Scripts for Europeana Tech Conference 2023 on the Cultural Heritage ASessor pipeline. CHAS helps you through all the steps to convert collections to LOD and evaluate how easily terms can be alligned with thesauri or other term lists. All steps can be performed using open source software or tools. 
 
All the steps can be followed on the CHAS homepage, where an example export of the Dutch Cultural Heritage Agency is used: https://cultureelerfgoed.github.io/CHAS

If you want to use the pipeline for your own collection, these are the required steps:
  1. Make an export of (a subset of) your collection, either as csv of XML
  2. Follow the [demonstration](https://cultureelerfgoed.github.io/CHAS) until you have created a linked data version of your collection
  4. Upload this to a triplestore, such as the free version of [GraphDB](https://graphdb.ontotext.com/)
  5. Start a SPARQL endpoint on the collections dataset in your triplestore
  6. Install [R and R Studio](https://rstudio-education.github.io/hopr/starting.html). 
  7. Download and open the [CHAS_report file](https://github.com/cultureelerfgoed/CHAS/blob/main/CHAS_report.Rmd) in R Studio
  8. In the code chuncks (that start with `{r message=FALSE, warning=FALSE, echo=TRUE}`, replace the bit after `url` with the URL link to your own SPARQL endpoint (don't forget to use quotation marks). Now you can execute all the SPARQL queries, and see the results for your own collection.
  9. If you want to save the output, select "Knit" in the top of your R Studio environment, and it will generate a PDF.

Questions? E-mail [RCE Thesauri](mailto:thesauri@cultureelerfgoed.nl)
     

