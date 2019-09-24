test_that('Appending objects to RData and retrive', {
  test_object <- "a test object"
  names(test_object) <- "test name"
  resave(test_object, file = "test_data.RData")
  load(file = "test_data.RData")
  expect_named(test_object)
})
