# DiDo - API diffusion
#
# API de diffusion des données de DiDo sur Internet
#
# The version of the OpenAPI document: 1.0.0
# Contact: support-dido@developpement-durable.gouv.fr
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title PaginateListPolluantsEau
#'
#' @description PaginateListPolluantsEau Class
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
#' @field data  list( \link{ItemPolluantsEau} ) 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PaginateListPolluantsEau <- R6::R6Class(
  'PaginateListPolluantsEau',
  public = list(
    `pageSize` = NULL,
    `page` = NULL,
    `total` = NULL,
    `firstPage` = NULL,
    `previousPage` = NULL,
    `nextPage` = NULL,
    `lastPage` = NULL,
    `data` = NULL,
    initialize = function(
        `pageSize`, `page`, `total`, `firstPage`, `previousPage`, `nextPage`, `lastPage`, `data`, ...
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
      if (!missing(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
      }
    },
    toJSON = function() {
      PaginateListPolluantsEauObject <- list()
      if (!is.null(self$`pageSize`)) {
        PaginateListPolluantsEauObject[['pageSize']] <-
          self$`pageSize`
      }
      if (!is.null(self$`page`)) {
        PaginateListPolluantsEauObject[['page']] <-
          self$`page`
      }
      if (!is.null(self$`total`)) {
        PaginateListPolluantsEauObject[['total']] <-
          self$`total`
      }
      if (!is.null(self$`firstPage`)) {
        PaginateListPolluantsEauObject[['firstPage']] <-
          self$`firstPage`
      }
      if (!is.null(self$`previousPage`)) {
        PaginateListPolluantsEauObject[['previousPage']] <-
          self$`previousPage`
      }
      if (!is.null(self$`nextPage`)) {
        PaginateListPolluantsEauObject[['nextPage']] <-
          self$`nextPage`
      }
      if (!is.null(self$`lastPage`)) {
        PaginateListPolluantsEauObject[['lastPage']] <-
          self$`lastPage`
      }
      if (!is.null(self$`data`)) {
        PaginateListPolluantsEauObject[['data']] <-
          lapply(self$`data`, function(x) x$toJSON())
      }

      PaginateListPolluantsEauObject
    },
    fromJSON = function(PaginateListPolluantsEauJson) {
      PaginateListPolluantsEauObject <- jsonlite::fromJSON(PaginateListPolluantsEauJson)
      if (!is.null(PaginateListPolluantsEauObject$`pageSize`)) {
        self$`pageSize` <- PaginateListPolluantsEauObject$`pageSize`
      }
      if (!is.null(PaginateListPolluantsEauObject$`page`)) {
        self$`page` <- PaginateListPolluantsEauObject$`page`
      }
      if (!is.null(PaginateListPolluantsEauObject$`total`)) {
        self$`total` <- PaginateListPolluantsEauObject$`total`
      }
      if (!is.null(PaginateListPolluantsEauObject$`firstPage`)) {
        self$`firstPage` <- PaginateListPolluantsEauObject$`firstPage`
      }
      if (!is.null(PaginateListPolluantsEauObject$`previousPage`)) {
        self$`previousPage` <- PaginateListPolluantsEauObject$`previousPage`
      }
      if (!is.null(PaginateListPolluantsEauObject$`nextPage`)) {
        self$`nextPage` <- PaginateListPolluantsEauObject$`nextPage`
      }
      if (!is.null(PaginateListPolluantsEauObject$`lastPage`)) {
        self$`lastPage` <- PaginateListPolluantsEauObject$`lastPage`
      }
      if (!is.null(PaginateListPolluantsEauObject$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(PaginateListPolluantsEauObject$`data`, "array[ItemPolluantsEau]", loadNamespace("didoscalie"))
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
        )},
        if (!is.null(self$`data`)) {
        sprintf(
        '"data":
        [%s]
',
        paste(sapply(self$`data`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(PaginateListPolluantsEauJson) {
      PaginateListPolluantsEauObject <- jsonlite::fromJSON(PaginateListPolluantsEauJson)
      self$`pageSize` <- PaginateListPolluantsEauObject$`pageSize`
      self$`page` <- PaginateListPolluantsEauObject$`page`
      self$`total` <- PaginateListPolluantsEauObject$`total`
      self$`firstPage` <- PaginateListPolluantsEauObject$`firstPage`
      self$`previousPage` <- PaginateListPolluantsEauObject$`previousPage`
      self$`nextPage` <- PaginateListPolluantsEauObject$`nextPage`
      self$`lastPage` <- PaginateListPolluantsEauObject$`lastPage`
      self$`data` <- ApiClient$new()$deserializeObj(PaginateListPolluantsEauObject$`data`, "array[ItemPolluantsEau]", loadNamespace("didoscalie"))
      self
    }
  )
)
