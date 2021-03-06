# DiDo - API diffusion
#
# API de diffusion des données de DiDo sur Internet
#
# The version of the OpenAPI document: 1.0.0
# Contact: support-dido@developpement-durable.gouv.fr
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title PaginateListCslFilieresAllOf
#'
#' @description PaginateListCslFilieresAllOf Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field data  list( \link{ItemCslFilieres} ) 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PaginateListCslFilieresAllOf <- R6::R6Class(
  'PaginateListCslFilieresAllOf',
  public = list(
    `data` = NULL,
    initialize = function(
        `data`, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
      }
    },
    toJSON = function() {
      PaginateListCslFilieresAllOfObject <- list()
      if (!is.null(self$`data`)) {
        PaginateListCslFilieresAllOfObject[['data']] <-
          lapply(self$`data`, function(x) x$toJSON())
      }

      PaginateListCslFilieresAllOfObject
    },
    fromJSON = function(PaginateListCslFilieresAllOfJson) {
      PaginateListCslFilieresAllOfObject <- jsonlite::fromJSON(PaginateListCslFilieresAllOfJson)
      if (!is.null(PaginateListCslFilieresAllOfObject$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(PaginateListCslFilieresAllOfObject$`data`, "array[ItemCslFilieres]", loadNamespace("didoscalie"))
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
        paste(sapply(self$`data`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(PaginateListCslFilieresAllOfJson) {
      PaginateListCslFilieresAllOfObject <- jsonlite::fromJSON(PaginateListCslFilieresAllOfJson)
      self$`data` <- ApiClient$new()$deserializeObj(PaginateListCslFilieresAllOfObject$`data`, "array[ItemCslFilieres]", loadNamespace("didoscalie"))
      self
    }
  )
)
