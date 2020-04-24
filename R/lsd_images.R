#' Function to perform line segment detection on images of a build
#'
#' @param start_here integer number of first file in build.
#' @param end_here integer number of last file in build.
#' @param directory string directory images are held.
#'
#' @return res vector count of detected line segments per layer.
#'
#' @importFrom magick image_read
#' @importFrom magick image_convert
#' @importFrom magick image_write
#' @importFrom pixmap read.pnm
#'
#'

#######################################################################
########### FUNCTION TO LSD A BUNCH OF IMAGES ########################
#######################################################################

lsd_images<-function(start_here,end_here,directory){
  res=rep(numeric(),end_here)
  for (i in start_here:end_here){
    f <- tempfile(fileext = ".pgm")
    read=Sys.glob((paste(directory,"*0000000",i,"_*",sep="")))
    x <- image_read(read)
    x <- image_convert(x, format = "pgm", depth = 8)
    image_write(x, path = f, format = "pgm")
    image <- read.pnm(file = f, cellres = 1)
    linesegments <- image_line_segment_detector(image@grey * 255)
    # Too slow plot(image)
    # plot(linesegments, add = FALSE, col = "red")
    res[i-(start_here-1)] <- linesegments$n
  }
  return(res)
}
