#' Synthesizing Truncated Count Data
#'
#' This package provides an R wrapper function ([link here]) for the statistical
#' model proposed in "Synthesizing Truncated Count Data for Confidentiality," which was originally written
#' in C++ and developed by Sam Hawala, Jerry Reiter and Quanli Wang.
#'
#' @section Background:
#' To maintain confidentiality, national statistical agencies traditionally do not include
#' small counts in publicly released tabular data products. They typically delete these
#' small counts, or combine them with counts in adjacent table cells to preserve the totals
#' at higher levels of aggregation.  In some cases these suppression procedures result in
#' too much loss of information. To increase data utility and make more data publicly
#' available, Hawala et. al. created methods and software (in C++) to generate
#' synthetic values for the small counts from a Bayesian hierarchical model.  The software
#' generates synthetic data and computes several measures of disclosure risk, and was
#' applied by the Census Bureau in synthesizing small county-to-county migration counts.
#'
#' This package provides an R-interface for implementing the code.
#' The original source C++ model is left unchanged aside from minor additions for R-compatibility. All inputs
#' and outputs from the model are R objects, as described in the documentation for [link here].
#'
#'
#' @section Functions:
#' This package contains two functions: mtcdForEntireDataFrame and mtcdForSmallCount. mtcdForEntireDataFrame takes in a data frame and generate synthetic data for each row in the data frame, while mtcdForSmallCount allows users to specify an upper limit that defines "small count", and only synthesize counts that are smaller than or equal to the specified number.
#'
#' @section Properties:
#' \tabular{ll}{
#' Package: \tab Rmtcd\cr
#' Version: \tab 0.1\cr
#' Date: \tab Aug 24 2015 \cr
#' License: \tab This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. To view a copy of this license, visit \url{http://creativecommons.org/licenses/by-nc-sa/4.0/} or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.\cr
#' }
#'
#' @references The original source code in C++ is available at \url{http://sites.duke.edu/tcrn/research-projects/downloadable-software/}
#'
#' This package is maintained at \url{https://github.com/ncrncornell/Rmtcd}
#'
#' Development was supported by the NSF Census Research Network grant #1131848 to Cornell University (\url{https://www.ncrn.cornell.edu/})
#'
#' @author In order of contribution: Yuxin (Charley) Chen (\email{yc769@@cornell.edu}),
#' Hautahi Kingi (\email{hrk55@@cornell.edu}),
#' Alice Chou (\email{aec247@@cornell.edu}),
#' Lars Vilhuber (\email{lars.vilhuber@@cornell.edu}). Please direct queries to the Labor Dynamics Institute (\email{ldi@@cornell.edu})
#' @docType package
#' @name Rmtcd
NULL
