# DiDo - API diffusion
#
# API de diffusion des données de DiDo sur Internet
#
# The version of the OpenAPI document: 1.0.0
# Contact: support-dido@developpement-durable.gouv.fr
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title PaginateListStationsAir
#'
#' @description PaginateListStationsAir Class
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
#' @field data  list( \link{ItemStationsAir} ) 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PaginateListStationsAir <- R6::R6Class(
  'PaginateListStationsAir',
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
      PaginateListStationsAirObject <- list()
      if (!is.null(self$`pageSize`)) {
        PaginateListStationsAirObject[['pageSize']] <-
          self$`pageSize`
      }
      if (!is.null(self$`page`)) {
        PaginateListStationsAirObject[['page']] <-
          self$`page`
      }
      if (!is.null(self$`total`)) {
        PaginateListStationsAirObject[['total']] <-
          self$`total`
      }
      if (!is.null(self$`firstPage`)) {
        PaginateListStationsAirObject[['firstPage']] <-
          self$`firstPage`
      }
      if (!is.null(self$`previousPage`)) {
        PaginateListStationsAirObject[['previousPage']] <-
          self$`previousPage`
      }
      if (!is.null(self$`nextPage`)) {
        PaginateListStationsAirObject[['nextPage']] <-
          self$`nextPage`
      }
      if (!is.null(self$`lastPage`)) {
        PaginateListStationsAirObject[['lastPage']] <-
          self$`lastPage`
      }
      if (!is.null(self$`data`)) {
        PaginateListStationsAirObject[['data']] <-
          lapply(self$`data`, function(x) x$toJSON())
      }

      PaginateListStationsAirObject
    },
    fromJSON = function(PaginateListStationsAirJson) {
      PaginateListStationsAirObject <- jsonlite::fromJSON(PaginateListStationsAirJson)
      if (!is.null(PaginateListStationsAirObject$`pageSize`)) {
        self$`pageSize` <- PaginateListStationsAirObject$`pageSize`
      }
      if (!is.null(PaginateListStationsAirObject$`page`)) {
        self$`page` <- PaginateListStationsAirObject$`page`
      }
      if (!is.null(PaginateListStationsAirObject$`total`)) {
        self$`total` <- PaginateListStationsAirObject$`total`
      }
      if (!is.null(PaginateListStationsAirObject$`firstPage`)) {
        self$`firstPage` <- PaginateListStationsAirObject$`firstPage`
      }
      if (!is.null(PaginateListStationsAirObject$`previousPage`)) {
        self$`previousPage` <- PaginateListStationsAirObject$`previousPage`
      }
      if (!is.null(PaginateListStationsAirObject$`nextPage`)) {
        self$`nextPage` <- PaginateListStationsAirObject$`nextPage`
      }
      if (!is.null(PaginateListStationsAirObject$`lastPage`)) {
        self$`lastPage` <- PaginateListStationsAirObject$`lastPage`
      }
      if (!is.null(PaginateListStationsAirObject$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(PaginateListStationsAirObject$`data`, "array[ItemStationsAir]", loadNamespace("didoscalie"))
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
    fromJSONString = function(PaginateListStationsAirJson) {
      PaginateListStationsAirObject <- jsonlite::fromJSON(PaginateListStationsAirJson)
      self$`pageSize` <- PaginateListStationsAirObject$`pageSize`
      self$`page` <- PaginateListStationsAirObject$`page`
      self$`total` <- PaginateListStationsAirObject$`total`
      self$`firstPage` <- PaginateListStationsAirObject$`firstPage`
      self$`previousPage` <- PaginateListStationsAirObject$`previousPage`
      self$`nextPage` <- PaginateListStationsAirObject$`nextPage`
      self$`lastPage` <- PaginateListStationsAirObject$`lastPage`
      self$`data` <- ApiClient$new()$deserializeObj(PaginateListStationsAirObject$`data`, "array[ItemStationsAir]", loadNamespace("didoscalie"))
      self
    }
  )
)
