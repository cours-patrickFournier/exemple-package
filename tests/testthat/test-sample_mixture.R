set.seed(0)
n <- 10L
sam <- sample_mixture(n)

plot_sam <- function(n) {
    file = "sam.png"
    png(file)
    hist(sample_mixture(n), probability = TRUE)
    curve(dchisq(x, 1.0), add = TRUE, col = "red", lwd = 5L)
    dev.off()
    
    file
}

test_that("sample_mixture", {
    expect_length(sam, n)
    expect_type(sam, "double")
    expect_true(all(sam > 0))
    expect_length(sample_mixture(0), 0L)
    expect_s3_class(sam, NA)
    
    expect_error(sample_mixture(-1))
    
    set.seed(665)
    expect_snapshot_file(plot_sam(10000))
})
