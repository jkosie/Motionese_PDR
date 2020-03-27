hanning_filter <- function(pupil, degree){
  i <- 0:(degree - 1)
  w <- 0.5 - 0.5 * cos((2 * pi * i)/(degree - 1))
  w <- w/sum(w)
  # class(w) <- 'Ma'
  y <- as.vector(stats::filter(pupil, w))
  y<-zoo::na.approx(y, rule=2)
  return (y)
}