################################ read_luminance_file ################################
red_lum_file <- function(fname) {
  print(paste0("reading", fname))
  ld <- read_csv(fname, col_names = FALSE)
  ld <- as.data.frame(t(ld[,-1]), row.names = FALSE)
  colnames(ld) <- c('red_channel', 'green_channel', 'blue_channel')
  filename <- str_replace(basename(fname), "_RGB.csv", "")
  ld$file <- rep(filename, nrow(ld))
  ld$frame_num <- 1:nrow(ld)
  return(ld)
}



