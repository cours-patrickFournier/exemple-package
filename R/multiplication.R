#' Multiplie par 2
#'
#' Fonction générique permettant de multiplier un objet par 2.
#'
#' @param x objet à multiplier par 2
#'
#' @return Un objet du même type que \code{x} correspondant au produit
#'     de \code{x} avec 2.
#'
#' @export
mult2 <- function(x, ...) UseMethod("mult2")

#' @rdname mult2
#' @export
mult2.numeric <- function(x, ...) 2.0 * x

#' @rdname mult2
#' @export
mult2.integer <- function(x, ...) {
    for (i in seq_along(x))
        for (j in 1:x[i])
            x[i] <- plus1(x[i])

    x
}

#' @rdname mult2
#' @export
mult2.list <- function(x, ...)
    lapply(x, mult2)
