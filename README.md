# CHAS
Sample datasets, queries and templates of the Cultural Heritage ASessor pipeline (CHAS), created by the Dutch Cultural Heritaga Agency, to be presented at the Europeana Tech Conference 2023. 

CHAS: 
   -  demonstrates how cultural heritage institutions can convert collections to linked open data (LOD); <br>
-  assesses how easily terms from their linked data collection can be alligned with thesauri or other term lists. 

**All steps can be performed using open source software and applications.**
 
A demonstration is available on the CHAS homepage, where two sample collections of the Dutch Cultural Heritage Agency are used: https://cultureelerfgoed.github.io/CHAS

## If you want to use the pipeline for your own collection data, these are the required steps:

  1. Make an export of (a subset of) your collection, either as csv of XML.
  2. Follow the steps in the [demonstration](https://cultureelerfgoed.github.io/CHAS) until you have created a linked data version of your collection.
  4. Upload this to a local or online triplestore, such as the free desktop version of [GraphDB](https://graphdb.ontotext.com/) or the free online version of [Triply](https://triplydb.com/).
  5. Start a SPARQL service on the collection dataset in your triplestore, and write down the URL of this service.
  6. Install [R and R Studio](https://rstudio-education.github.io/hopr/starting.html) (in a next version we aim to provide a Python version too).
  7. Download and open the [CHAS_report file](https://github.com/cultureelerfgoed/CHAS/blob/main/CHAS_report.Rmd) in R Studio.
  8. In the code chuncks (that start with `{r message=FALSE, warning=FALSE, echo=TRUE}` or similar), replace the bit after `url` with the URL link to your own SPARQL service (don't forget to use quotation marks). If you did not follow the data model from the demonstration, you might also need to change some predicates.
  9. Now you can execute all the SPARQL queries, and see the results for your own collection. You can either run the file per code chunck (top right of each code chunck) or run the complete file at once (top right of the [source pane](https://www.google.com/url?sa=i&url=https%3A%2F%2Fdocs.posit.co%2Fide%2Fuser%2Fide%2Fguide%2Fui%2Fui-panes.html&psig=AOvVaw33U6EMQlgI7WDbqx0x3Cet&ust=1695468140540000&source=images&cd=vfe&opi=89978449&ved=2ahUKEwilnp2Tjb6BAxWalKQKHeSABBsQr4kDegQIARBS)).
  10. If you want to save the output as a PDF report, select "Knit" in the top of your source pane in R Studio. This will generate and save a PDF in the same folder as your CHAS_report file.

Questions? E-mail [RCE Thesauri](mailto:thesauri@cultureelerfgoed.nl)
     

