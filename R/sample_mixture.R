#' Mélange entre uniforme et chi2
#' 
#' Fonction qui génère d'un mélange entre une uniforme et 
#' une chi2 à 1 degré de liberté.
#' 
#' @param n nombre d'observations
#' 
#' @return Un vecteur contenant \code{n} réalisations de
#' la distribution mélange.
#'  
#' @importFrom stats rbinom rchisq runif
#' @export
sample_mixture <- function(n)
    sapply(as.logical(rbinom(n, 1, 0.5)),
           \(pi) if (pi) runif(1) else rchisq(1, 1))