
youngmetro <img src="http://aaronbaggett.com/images/youngmetro_logo.png" align="right" />
=========================================================================================

<br>

> Way too many questions you must think I trust you  
> You searching for answers I do not know nothing

------------------------------------------------------------------------

Overview 🏙
----------

The **youngmetro** package is a semi-custom beamer theme for use in RStudio via R Markdown. This theme borrows heavily from the [HSRM](https://github.com/benjamin-weiss/hsrmbeamertheme), [sthlm](https://github.com/markolsonse/sthlmBeamerTheme), and [Metropolis](https://github.com/matze/mtheme) Beamer themes.

Installation 🔌
--------------

``` r
install.packages("devtools")
devtools::install_github("aaronbaggett/youngmetro")
```

Usage 💻
-------

### RStudio

The `youngmetro` theme is designed to be used primarily within RStudio. Once installed, select *File* &gt; *New File* &gt; *R Markdown* &gt; *From Template* &gt; `youngmetro`. After naming and selecting a location for your prestnation, a new R Markdown document will open in the Source pane. This document contains some basic information that you will want to update (see **Front Matter** below).

<img src="http://aaronbaggett.com/images/from_template.png" align="center" />

### R

The following should work if you would like to use `youngmetro` outside of RStudio:

``` r
rmarkdown::draft("slide_deck.Rmd", template = "metro_beamer", package = "youngmetro")

rmarkdown::render("slide_deck.Rmd")
```

### Front Matter

The Pandoc YAML is pre-populated with the following:

``` yaml
---
title: "Introduction to RStudio"
shorttitle: "Ch. 1"
subtitle: "Getting in There! Doing statistics! Learning! Growing!"
author: "Aaron R. Baggett, Ph.D."
short-author: "Baggett"
date: 'September 08, 2017'
short-date: '09/08/17'
institute: | 
  | University of Mary Hardin-Baylor
  | PSYC 4316: Experimental Psychology
short-institute: "PSYC 2316"
department: "Department of Psychology" # Institute must be defined
mainfont: Roboto
monofont: Lucida Console
fontsize: 14pt
classoption: aspectratio = 1610
output: 
   youngmetro::metro_beamer
---
```

### Title Graphic

I designed this slide deck to pretty much serve myself. I wanted an easy way to generate custom .Rmd Beamer slides for my classes. That said, you probably want to swap out the example image for your own university's logo. Until I come up with a better solution, you will need to do the following:

1.  Rename your title graphic to `title_graphic`
2.  Place *your* `title_graphic` in the `figs` folder
3.  Accept replacement warning

That should do the trick.

### Figures

Place all figures in the `figs` folder and refer directly to the filename with no directory mapping required. For example:

``` r
\includegraphics{file_name.EXT}
```

### XeLaTeX

`youngmetro` uses XeLaTeX as the default TeX typesetting engine. Just comment out the `mainfont:` and `monofont` options in the front matter. This should revert back to Pandoc's defaults.

``` yaml
---
# mainfont: Roboto
# monofont: Lucida Console
---
```

Note: Roboto can be downloaded free from Google Fonts [here](https://fonts.google.com/specimen/Roboto).

### Emoji

There's not really an easy way to add emoji to pdf LaTeX documents 😡. Most packages require including emoji as essentially .png or .pdf files 🤕. Unfortunately, at the moment, the [`emo`](https://github.com/hadley/emo) package does not provide functionality for pdf documents. One alternative would be to use one of several [emoji extractors](https://github.com/rinatkhanov/emoji-extractor). Even still, you are forced to include emoji as an image. One problem with this method is that, althogh the emoji images are fairly high-resolution, they are named in sequential order. In other words, the Unicode characters are lost in the file names, which makes it difficult to search for the emoji you want.
