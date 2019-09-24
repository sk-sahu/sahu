load(file.path("test_data.RData"))

test_that('Testing if ENSEMBL API returns same dimention table', {
  expect_equal(dim(getGeneinfo("ENSG00000157764")), 
               dim(mygeneinfo))
})