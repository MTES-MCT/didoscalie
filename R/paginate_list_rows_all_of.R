# DiDo - API diffusion
#
# API de diffusion des données de DiDo sur Internet
#
# The version of the OpenAPI document: 1.0.0
# Contact: support-dido@developpement-durable.gouv.fr
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title PaginateListRowsAllOf
#'
#' @description PaginateListRowsAllOf Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field data  list( object ) 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PaginateListRowsAllOf <- R6::R6Class(
  'PaginateListRowsAllOf',
  public = list(
    `data` = NULL,
    initialize = function(
        `data`, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(is.character(x)))
        self$`data` <- `data`
      }
    },
    toJSON = function() {
      PaginateListRowsAllOfObject <- list()
      if (!is.null(self$`data`)) {
        PaginateListRowsAllOfObject[['data']] <-
          self$`data`
      }

      PaginateListRowsAllOfObject
    },
    fromJSON = function(PaginateListRowsAllOfJson) {
      PaginateListRowsAllOfObject <- jsonlite::fromJSON(PaginateListRowsAllOfJson)
      if (!is.null(PaginateListRowsAllOfObject$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(PaginateListRowsAllOfObject$`data`, "array[object]", loadNamespace("didoscalie"))
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`data`)) {
        sprintf(
        '"data":
           [%s]
        ',
        paste(unlist(lapply(self$`data`, function(x) paste0('"', x, '"'))), collapse=",")
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(PaginateListRowsAllOfJson) {
      PaginateListRowsAllOfObject <- jsonlite::fromJSON(PaginateListRowsAllOfJson)
      self$`data` <- ApiClient$new()$deserializeObj(PaginateListRowsAllOfObject$`data`, "array[object]", loadNamespace("didoscalie"))
      self
    }
  )
)
