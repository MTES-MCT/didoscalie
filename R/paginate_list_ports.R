# DiDo - API diffusion
#
# API de diffusion des données de DiDo sur Internet
#
# The version of the OpenAPI document: 1.0.0
# Contact: support-dido@developpement-durable.gouv.fr
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title PaginateListPorts
#'
#' @description PaginateListPorts Class
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
#' @field data  list( \link{ItemPorts} ) 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PaginateListPorts <- R6::R6Class(
  'PaginateListPorts',
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
      PaginateListPortsObject <- list()
      if (!is.null(self$`pageSize`)) {
        PaginateListPortsObject[['pageSize']] <-
          self$`pageSize`
      }
      if (!is.null(self$`page`)) {
        PaginateListPortsObject[['page']] <-
          self$`page`
      }
      if (!is.null(self$`total`)) {
        PaginateListPortsObject[['total']] <-
          self$`total`
      }
      if (!is.null(self$`firstPage`)) {
        PaginateListPortsObject[['firstPage']] <-
          self$`firstPage`
      }
      if (!is.null(self$`previousPage`)) {
        PaginateListPortsObject[['previousPage']] <-
          self$`previousPage`
      }
      if (!is.null(self$`nextPage`)) {
        PaginateListPortsObject[['nextPage']] <-
          self$`nextPage`
      }
      if (!is.null(self$`lastPage`)) {
        PaginateListPortsObject[['lastPage']] <-
          self$`lastPage`
      }
      if (!is.null(self$`data`)) {
        PaginateListPortsObject[['data']] <-
          lapply(self$`data`, function(x) x$toJSON())
      }

      PaginateListPortsObject
    },
    fromJSON = function(PaginateListPortsJson) {
      PaginateListPortsObject <- jsonlite::fromJSON(PaginateListPortsJson)
      if (!is.null(PaginateListPortsObject$`pageSize`)) {
        self$`pageSize` <- PaginateListPortsObject$`pageSize`
      }
      if (!is.null(PaginateListPortsObject$`page`)) {
        self$`page` <- PaginateListPortsObject$`page`
      }
      if (!is.null(PaginateListPortsObject$`total`)) {
        self$`total` <- PaginateListPortsObject$`total`
      }
      if (!is.null(PaginateListPortsObject$`firstPage`)) {
        self$`firstPage` <- PaginateListPortsObject$`firstPage`
      }
      if (!is.null(PaginateListPortsObject$`previousPage`)) {
        self$`previousPage` <- PaginateListPortsObject$`previousPage`
      }
      if (!is.null(PaginateListPortsObject$`nextPage`)) {
        self$`nextPage` <- PaginateListPortsObject$`nextPage`
      }
      if (!is.null(PaginateListPortsObject$`lastPage`)) {
        self$`lastPage` <- PaginateListPortsObject$`lastPage`
      }
      if (!is.null(PaginateListPortsObject$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(PaginateListPortsObject$`data`, "array[ItemPorts]", loadNamespace("didoscalie"))
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
    fromJSONString = function(PaginateListPortsJson) {
      PaginateListPortsObject <- jsonlite::fromJSON(PaginateListPortsJson)
      self$`pageSize` <- PaginateListPortsObject$`pageSize`
      self$`page` <- PaginateListPortsObject$`page`
      self$`total` <- PaginateListPortsObject$`total`
      self$`firstPage` <- PaginateListPortsObject$`firstPage`
      self$`previousPage` <- PaginateListPortsObject$`previousPage`
      self$`nextPage` <- PaginateListPortsObject$`nextPage`
      self$`lastPage` <- PaginateListPortsObject$`lastPage`
      self$`data` <- ApiClient$new()$deserializeObj(PaginateListPortsObject$`data`, "array[ItemPorts]", loadNamespace("didoscalie"))
      self
    }
  )
)
