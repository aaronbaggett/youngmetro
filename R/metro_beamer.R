#' A Custom Beamer Theme in R Markdown
#'
#' A custom R Markdown Beamer presentation theme based on sthlm, HSRM, and 
#' Metropolis themes.
#' @inheritParams rmarkdown::beamer_presentation
#' @return A modified \code{beamer_presentation}  based on sthlm, HSRM, and
#' Metropolis themes.
#' @export
#' @examples
#' \dontrun{
#' # Generate slide deck from beamer template
#' rmarkdown::draft("slide_deck.Rmd", template = "metro_beamer", package = "youngmetro")
#'
#' # Compile the document
#' rmarkdown::render("slide_deck.Rmd")
#' }
metro_beamer <- function(toc = FALSE,
                        slide_level = 2,
                        incremental = FALSE,
                        fig_width = 10,
                        fig_height = 7,
                        fig_crop = TRUE,
                        fig_caption = TRUE,
                        dev = 'pdf',
                        df_print = "default",
                        fonttheme = "default",
                        highlight = "tango",
                        keep_tex = FALSE,
                        latex_engine = "xelatex",
                        citation_package = c("none", "natbib", "biblatex"),
                        includes = NULL,
                        md_extensions = NULL,
                        pandoc_args = NULL){

  template <- find_resource("metro_beamer", "template.tex")

  rmarkdown::beamer_presentation(template = template,
                                 toc = toc,
                                 slide_level = slide_level,
                                 incremental = incremental,
                                 fig_width = fig_width,
                                 fig_height = fig_height,
                                 fig_crop = fig_crop,
                                 fig_caption = fig_caption,
                                 dev = dev,
                                 df_print = df_print,
                                 fonttheme = fonttheme,
                                 highlight = highlight,
                                 keep_tex = keep_tex,
                                 latex_engine = latex_engine,
                                 citation_package = citation_package,
                                 includes = includes,
                                 md_extensions = md_extensions,
                                 pandoc_args = pandoc_args)

}