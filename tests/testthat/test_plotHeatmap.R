#test_that('testing pheatmap graphics', {
#  file <- system.file("extdata", "pasilla_gene_counts.csv", package = "sahu")
#  out <- plotHeatmap(file)
#  vdiffr::expect_doppelganger("static heatmap", out)
#})