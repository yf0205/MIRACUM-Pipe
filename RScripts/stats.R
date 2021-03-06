stats <- function(path = path2coverage, outfile_pdf = coverage_out, stats_td,
      stats_gd){
  #' Statistics
  #'
  #' @description Information about Coverage and Readdepth
  #'
  #' @param path string. Path to statistics data
  #' @param outfile_pdf string. Filename for coverage plot
  #' @param stats_td numerical. Total reads for tumor
  #' @param stats_gd numerical. Total reads for germline
  #' 
  #' @return list of
  #' @return cover vector. Mean coverage 
  #' @return avreads vector. Total reads for germline and tumor
  #'
  #' @details Statistical numbers are extracted from alignment's statistics.
  cover <- coverage_plot(path = path2coverage, outfilePDF = coverage_out)
  avreads <- reads(stats_td, stats_gd)
  return(list(cover = cover, avreads = avreads))
}