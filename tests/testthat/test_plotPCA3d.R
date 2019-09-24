test_that('testing 3d-pca graphics', {
  file <- system.file("extdata", "pasilla_gene_counts.csv", package = "sahu")
  out <- plotPCA3d(file)
  vdiffr::expect_doppelganger("static pca", out)
})