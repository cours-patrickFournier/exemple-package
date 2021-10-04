#' Linear Feedback Shift Registers
#'
#' LFSR 32 bits destiné à la génération de nombres aléatoires.
#'
#' @param seed entier servant de germe
#' @param prim_poly vecteur d'entiers représentant un polynôme
#'     primitif sur 32 bits
#'
#' \code{prim_poly} liste les puissances associées à un coefficient
#' non nul. 2^0 et 2^31 sont omises.
#'
#' @return Un LFSR.
#'
#' @importFrom bitops %<<%
#' @export
lfsr <- function(seed = 42L, prim_poly = 3L) {
    stopifnot(is.numeric(seed), is.numeric(prim_poly))

    maskp <- Reduce(bitops::bitXor, 2L^prim_poly, 0L)
    maskn <- 1L %<<% 31L

    ret <- structure(list(state = seed, maskp = maskp, maskn = maskn),
                     class = "lfsr")

    shift(ret)

    ret
}

#' Met à jour un générateur aléatoire.
#'
#' @param rng générateur aléatoire
#' @param \dots arguments passés aux méthodes
#'
#' @export
shift <- function(rng, ...) UseMethod("shift")

#' @rdname shift
#' @importFrom bitops %&% %|% %^% %<<%
#' @export
shift.lfsr <- function(rng, ...) {
    a <- rng[["state"]]
    maskn <- rng[["maskn"]]
    maskp <- rng[["maskp"]]

    ifelse(identical(a %&% maskn, 1L),
    ((a %^% maskp) %<<% 1L) %|% 1L,
    a %<<% 1L)
}
