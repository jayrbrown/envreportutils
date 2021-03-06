# Copyright 2015 Province of British Columbia
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and limitations under the License.

#' Default theme for EnvReportBC graphs and plots
#' 
#' @import ggplot2 ggthemes extrafont
#' @param  base_size base font size (default = 12)
#' @param  base_family base font family (default = Verdana)
#' @param  use_sizes use relative font sizes (?)
#' @export
#' @keywords plotting theme
#' @return returns a plot theme

theme_soe <- function(base_size=12, base_family="Verdana", use_sizes=TRUE) {
  thm <- theme_soe_foundation(base_size = base_size, base_family = base_family, 
                       use_sizes = use_sizes)
  thm
}  

#' Soe plot theme for facetted graphs
#' 
#' @import ggplot2 ggthemes
#' @param  base_size base font size (default = 12)
#' @param  base_family base font family (default = Verdana)
#' @param  use_sizes use relative font sizes (?)
#' @export
#' @keywords plotting theme
#' @return a ggplot2 theme

theme_soe_facet <- function(base_size=12, base_family="Verdana", use_sizes=TRUE) {
  
  theme_soe_foundation(base_size = base_size, base_family = base_family, 
                       use_sizes = use_sizes) + 
    theme(
      panel.margin.x = unit(.6,"lines"),
      panel.margin.y = unit(.6,"lines"),
      panel.border = element_rect(colour = "black", fill = NA),
      strip.background = element_rect(colour = "black", fill = "grey85"))
  
}

theme_soe_foundation <- function(base_size, base_family, use_sizes, facet) {
  thm <- ggthemes::theme_foundation(base_size = base_size, 
                                    base_family = base_family, 
                                    use_sizes = use_sizes)
  thm <- thm + 
    theme(
      text = element_text(color="black"),
      axis.line = element_line(colour="black"),
      axis.text = element_text(color = 'black'),
      axis.text.y = element_text(hjust = 1),
      axis.ticks = element_blank(),
      plot.title = element_text(vjust=2),
      legend.title = element_text(face="plain"),
      panel.background = element_blank(),
      panel.border = element_blank(),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(colour = "grey80",size=0.5),
      axis.title.y = element_text(vjust=1, angle = 90),
      axis.title.x = element_text(vjust=0),
      panel.margin.x = unit(0, "lines"),
      panel.margin.y = unit(0, "lines"),
      plot.background = element_blank(),
      panel.border = element_blank(),
      legend.key = element_blank())
  
  thm
}

