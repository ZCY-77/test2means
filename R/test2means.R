#' Compare two sample means or medians
#'
#' This is a function compare the two means or medians of
#' two samples based on the distributions of the samples.
#'
#'
#' @param x, a vector of sample x
#' @param y, a vector of the second sample y
#'
#' @return the test output object
#'
#' @export
auto_test2means <- function(x, y) {

  p1 <- shapiro.test(x)
  p2 <- shapiro.test(y)
  #use t test
  if(p1$p.value > 0.05 & p2$p.value > 0.05) {

    #variance test
    r <- var.test(x, y)


    #use equal variance
    if(r$p.value > 0.05) {

     r2 <- t.test(x, y, var.equal = TRUE)

    #use unequal variance
    } else {

     r2 <- t.test(x, y, var.equal = FALSE)

    }
  # use wilcox test to compare medians
  } else {

    r2 <- wilcox.test(x, y)

  }

  return(r2)

}





