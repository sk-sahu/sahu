load(file.path("test_data.RData"))

test_that('testing pheatmap graphics', {
  file <- system.file("extdata", "pasilla_gene_counts.csv", package = "sahu")
  expect_doppelganger(plotHeatmap(file), my_heatmap)
})