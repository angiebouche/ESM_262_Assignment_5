test_that("this will print the CO2 emission statement", {
  expect_that(print('CO2 emissions increase global temperatures!'), prints_text('CO2 emissions increase global temperatures!'))
})

print(test_that("this will print the CO2 emission statement", {
  expect_that(print('CO2 emissions increase global temperatures!'), prints_text('CO2 emissions increase global temperatures!'))
}))

