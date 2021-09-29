#' Plein de N(0, 1) iid!!!
#'
#' Jeu de donnéesdont toutes les entrées sont indépendantes et
#' identiquement distribuées N(0, 1). Pour votre plaisir personnel :)
#'
#' @format
#' Un \code{data.frame} de 100 rangées par 10 colonnes.
#'
#' @references Gauss, Carolo Friderico (1809) Theoria motvs corporvm
#'     coelestivm in sectionibvs conicis solem ambientivm
#'
#' @seealso
#' \code{\link{rnorm}}
#'
#' @examples
#' head(grosgauss)
#'
#' shapiro.test(unlist(grosgauss))
"grosgauss"
