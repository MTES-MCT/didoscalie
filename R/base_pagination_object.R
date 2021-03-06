# DiDo - API diffusion
#
# API de diffusion des données de DiDo sur Internet
#
# The version of the OpenAPI document: 1.0.0
# Contact: support-dido@developpement-durable.gouv.fr
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title BasePaginationObject
#'
#' @description BasePaginationObject Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field pageSize  character 
#'
#' @field page  integer 
#'
#' @field total  integer 
#'
#' @field firstPage  character 
#'
#' @field previousPage  character 
#'
#' @field nextPage  character 
#'
#' @field lastPage  character 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BasePaginationObject <- R6::R6Class(
  'BasePaginationObject',
  public = list(
    `pageSize` = NULL,
    `page` = NULL,
    `total` = NULL,
    `firstPage` = NULL,
    `previousPage` = NULL,
    `nextPage` = NULL,
    `lastPage` = NULL,
    initialize = function(
        `pageSize`, `page`, `total`, `firstPage`, `previousPage`, `nextPage`, `lastPage`, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`pageSize`)) {
        stopifnot(is.character(`pageSize`), length(`pageSize`) == 1)
        self$`pageSize` <- `pageSize`
      }
      if (!missing(`page`)) {
        stopifnot(is.numeric(`page`), length(`page`) == 1)
        self$`page` <- `page`
      }
      if (!missing(`total`)) {
        stopifnot(is.numeric(`total`), length(`total`) == 1)
        self$`total` <- `total`
      }
      if (!missing(`firstPage`)) {
        stopifnot(is.character(`firstPage`), length(`firstPage`) == 1)
        self$`firstPage` <- `firstPage`
      }
      if (!missing(`previousPage`)) {
        stopifnot(is.character(`previousPage`), length(`previousPage`) == 1)
        self$`previousPage` <- `previousPage`
      }
      if (!missing(`nextPage`)) {
        stopifnot(is.character(`nextPage`), length(`nextPage`) == 1)
        self$`nextPage` <- `nextPage`
      }
      if (!missing(`lastPage`)) {
        stopifnot(is.character(`lastPage`), length(`lastPage`) == 1)
        self$`lastPage` <- `lastPage`
      }
    },
    toJSON = function() {
      BasePaginationObjectObject <- list()
      if (!is.null(self$`pageSize`)) {
        BasePaginationObjectObject[['pageSize']] <-
          self$`pageSize`
      }
      if (!is.null(self$`page`)) {
        BasePaginationObjectObject[['page']] <-
          self$`page`
      }
      if (!is.null(self$`total`)) {
        BasePaginationObjectObject[['total']] <-
          self$`total`
      }
      if (!is.null(self$`firstPage`)) {
        BasePaginationObjectObject[['firstPage']] <-
          self$`firstPage`
      }
      if (!is.null(self$`previousPage`)) {
        BasePaginationObjectObject[['previousPage']] <-
          self$`previousPage`
      }
      if (!is.null(self$`nextPage`)) {
        BasePaginationObjectObject[['nextPage']] <-
          self$`nextPage`
      }
      if (!is.null(self$`lastPage`)) {
        BasePaginationObjectObject[['lastPage']] <-
          self$`lastPage`
      }

      BasePaginationObjectObject
    },
    fromJSON = function(BasePaginationObjectJson) {
      BasePaginationObjectObject <- jsonlite::fromJSON(BasePaginationObjectJson)
      if (!is.null(BasePaginationObjectObject$`pageSize`)) {
        self$`pageSize` <- BasePaginationObjectObject$`pageSize`
      }
      if (!is.null(BasePaginationObjectObject$`page`)) {
        self$`page` <- BasePaginationObjectObject$`page`
      }
      if (!is.null(BasePaginationObjectObject$`total`)) {
        self$`total` <- BasePaginationObjectObject$`total`
      }
      if (!is.null(BasePaginationObjectObject$`firstPage`)) {
        self$`firstPage` <- BasePaginationObjectObject$`firstPage`
      }
      if (!is.null(BasePaginationObjectObject$`previousPage`)) {
        self$`previousPage` <- BasePaginationObjectObject$`previousPage`
      }
      if (!is.null(BasePaginationObjectObject$`nextPage`)) {
        self$`nextPage` <- BasePaginationObjectObject$`nextPage`
      }
      if (!is.null(BasePaginationObjectObject$`lastPage`)) {
        self$`lastPage` <- BasePaginationObjectObject$`lastPage`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`pageSize`)) {
        sprintf(
        '"pageSize":
          "%s"
                ',
        self$`pageSize`
        )},
        if (!is.null(self$`page`)) {
        sprintf(
        '"page":
          %d
                ',
        self$`page`
        )},
        if (!is.null(self$`total`)) {
        sprintf(
        '"total":
          %d
                ',
        self$`total`
        )},
        if (!is.null(self$`firstPage`)) {
        sprintf(
        '"firstPage":
          "%s"
                ',
        self$`firstPage`
        )},
        if (!is.null(self$`previousPage`)) {
        sprintf(
        '"previousPage":
          "%s"
                ',
        self$`previousPage`
        )},
        if (!is.null(self$`nextPage`)) {
        sprintf(
        '"nextPage":
          "%s"
                ',
        self$`nextPage`
        )},
        if (!is.null(self$`lastPage`)) {
        sprintf(
        '"lastPage":
          "%s"
                ',
        self$`lastPage`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(BasePaginationObjectJson) {
      BasePaginationObjectObject <- jsonlite::fromJSON(BasePaginationObjectJson)
      self$`pageSize` <- BasePaginationObjectObject$`pageSize`
      self$`page` <- BasePaginationObjectObject$`page`
      self$`total` <- BasePaginationObjectObject$`total`
      self$`firstPage` <- BasePaginationObjectObject$`firstPage`
      self$`previousPage` <- BasePaginationObjectObject$`previousPage`
      self$`nextPage` <- BasePaginationObjectObject$`nextPage`
      self$`lastPage` <- BasePaginationObjectObject$`lastPage`
      self
    }
  )
)
