# An implemention of compound inequalities.
# Jonathan Dobres, 2018-02-10
# http://jdobr.es
#
# Usage:
# 2 %<<% 4 %<<% 6
# TRUE
#
# 2 %<<% 1 %<<% 6
# FALSE

compound.inequality <- function(lhs, rhs, comparison) {
  if (is.null(attr(lhs, 'compound-inequality-partial'))) {
    out <- rhs
    attr(out, 'compound-inequality-partial') <- do.call(comparison, list(lhs, rhs))
  } else {
    out <- do.call(comparison, list(lhs, rhs)) & attr(lhs, 'compound-inequality-partial')
  }
  
  return(out)
}

'%<<%' <- function(lhs, rhs) {
  return(compound.inequality(lhs, rhs, '<'))
}

'%<<=%' <- function(lhs, rhs) {
  return(compound.inequality(lhs, rhs, '<='))
}

'%>>%' <- function(lhs, rhs) {
  return(compound.inequality(lhs, rhs, '>'))
}

'%>>=%' <- function(lhs, rhs) {
  return(compound.inequality(lhs, rhs, '>='))
}
