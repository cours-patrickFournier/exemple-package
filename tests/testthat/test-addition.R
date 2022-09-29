vec <- 1:10

create_norm11 <- function() {
    file = "norm11.png"
    png(file)
    hist(plus1(rnorm(1000)), probability = TRUE)
    curve(dnorm(x, 1), add = TRUE, col = "red", lwd = 5)
    dev.off()
    
    file
}

test_that("Tests pour plus1", {
    expect_gt(plus1(vec)[6], vec[6])
    
    set.seed(42)
    expect_snapshot_file(create_norm11())
})