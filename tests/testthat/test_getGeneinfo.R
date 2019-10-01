readRDS(file.path("test_data.RData"))

test_that('Testing if ENSEMBL API returns same dimention table', {
  expect_true(is.data.frame((getGeneinfo("ENSG00000157764"))))
})