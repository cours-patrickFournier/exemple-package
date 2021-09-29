#' Additionne 1
#'
#' Ajoute 1 à un vecteur, élément par élément.
#'
#' La fonction \code{plus1} ajoute 1 à son argument. Pour ce faire,
#' elle exécute une opération mathématique connue sous le nom
#' d'addition.
#'
#' L'addition est commutative. En conséquence, ses arguments peuvent
#' commuter sans pour autant changer le résultat.
#'
#' @param x vecteur de nombres.
#'
#' @return Un vecteur contenant les même nombres que \code{x} auxquels
#'     on a ajouté 1.
#'
#' @examples
#' plus1(1:5)
#'
#' @export
plus1 <- function(x) x + 1L
