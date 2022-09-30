test_that("Tests pour mult2", {
    expect_type(mult2(1L), "integer")
    expect_type(mult2(1.0), "double")
    
    expect_equal(mult2(21), 42)
    
    expect_error(mult2(c(1:2, NA, 4:10)))
})