# youngmetro <img src="inst/rmarkdown/templates/metro_beamer/skeleton/figs/youngmetro_logo.png" align="right" />

<br>

> Way too many questions you must think I trust you  
> You searching for answers I do not know nothing

***

The **uiucthemes** package includes my collection of UIUC themed templates.

Presently, only the UIUC Beamer Theme is embedded within the package.

## UIUC Beamer Theme - Example

Within an `RMarkdown` file, add the following:

```yaml
---
title: "UIUC Beamer Theme"
short-title: "Beamer Slides"
author: "John and Mary Doe"
short-author: "J & M Doe"
date: '`r format(Sys.Date(), "%B %d, %Y")`'      # Month DD, YYYY (Main Slide)
short-date: '`r format(Sys.Date(), "%m/%d/%Y")`' # MM/DD/YYYY (Lower Right)
institute: "University of Illinois at Urbana-Champaign"
short-institute: "UIUC"
department: "Department of Magic"                # Institute must be defined
license: "Did you license this slide deck? "
section-titles: false                            # Provides slide headings
safe-columns: true                               # Enables special latex macros for columns.
output: 
   uiucthemes::uiuc_beamer
---

# Section title     
## Subsection title 

### Frame Title

Frame content 

**Unordered List**

- [University of Illinois at Urbana-Champaign (UIUC)](http://illinois.edu)
- [Department of Statistics](http://www.stat.illinois.edu/)
- [Illinois Informatics Institute](http://www.informatics.illinois.edu/)

*Ordered List*

1. <http://thecoatlessprofessor.com>
2. <http://smac-group.com>


#### Title for block box

Content inside of a box 

### \LaTeX

\begin{exampleblock}{Binomial Theorem}
\begin{equation} 
  f\left(k\right) = \binom{n}{k} p^k\left(1-p\right)^{n-k}
  \label{eq:binom}
\end{equation} 
\end{exampleblock}

Hello Equation \ref{eq:binom}

### Redux \LaTeX 

This theme supports special LaTeX macros `\beingcols` and `\endcols` that allows
for markdown to be blended with LaTeX without triggering the [`raw_tex`](http://pandoc.org/MANUAL.html#raw-tex) 
extension. To enable this feature, the `safe-columns` key in the YML head matter
must be set equal to `true`.

\begincols

\column{.49\linewidth}

- _Hello!_

\column{.49\linewidth}

1. **Goodbye!**

\endcols
```