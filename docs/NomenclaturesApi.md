# NomenclaturesApi

All URIs are relative to *https://data.statistiques.developpement-durable.gouv.fr/dido/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExportCsvNomenclatureBilanEnergie**](NomenclaturesApi.md#ExportCsvNomenclatureBilanEnergie) | **GET** /v1/nomenclatures/bilanEnergie/csv | Export csv \&quot;nomenclature - bilanEnergie\&quot;
[**ExportCsvNomenclatureCslFilieres**](NomenclaturesApi.md#ExportCsvNomenclatureCslFilieres) | **GET** /v1/nomenclatures/cslFilieres/csv | Export csv \&quot;nomenclature - cslFilieres\&quot;
[**ExportCsvNomenclatureCslOperations**](NomenclaturesApi.md#ExportCsvNomenclatureCslOperations) | **GET** /v1/nomenclatures/cslOperations/csv | Export csv \&quot;nomenclature - cslOperations\&quot;
[**ExportJsonNomenclatureBilanEnergie**](NomenclaturesApi.md#ExportJsonNomenclatureBilanEnergie) | **GET** /v1/nomenclatures/bilanEnergie/json | Export json \&quot;nomenclature - bilanEnergie\&quot;
[**ExportJsonNomenclatureCslFilieres**](NomenclaturesApi.md#ExportJsonNomenclatureCslFilieres) | **GET** /v1/nomenclatures/cslFilieres/json | Export json \&quot;nomenclature - cslFilieres\&quot;
[**ExportJsonNomenclatureCslOperations**](NomenclaturesApi.md#ExportJsonNomenclatureCslOperations) | **GET** /v1/nomenclatures/cslOperations/json | Export json \&quot;nomenclature - cslOperations\&quot;
[**ExportXlsxNomenclatureBilanEnergie**](NomenclaturesApi.md#ExportXlsxNomenclatureBilanEnergie) | **GET** /v1/nomenclatures/bilanEnergie/xlsx | Export xlsx \&quot;nomenclature - bilanEnergie\&quot;
[**ExportXlsxNomenclatureCslFilieres**](NomenclaturesApi.md#ExportXlsxNomenclatureCslFilieres) | **GET** /v1/nomenclatures/cslFilieres/xlsx | Export xlsx \&quot;nomenclature - cslFilieres\&quot;
[**ExportXlsxNomenclatureCslOperations**](NomenclaturesApi.md#ExportXlsxNomenclatureCslOperations) | **GET** /v1/nomenclatures/cslOperations/xlsx | Export xlsx \&quot;nomenclature - cslOperations\&quot;
[**GetIdNomenclatureBilanEnergie**](NomenclaturesApi.md#GetIdNomenclatureBilanEnergie) | **GET** /v1/nomenclatures/bilanEnergie/{id} | Détail de l&#39;élément avec l&#39;identifiant :id de \&quot;nomenclature - bilanEnergie\&quot;
[**GetIdNomenclatureCslFilieres**](NomenclaturesApi.md#GetIdNomenclatureCslFilieres) | **GET** /v1/nomenclatures/cslFilieres/{id} | Détail de l&#39;élément avec l&#39;identifiant :id de \&quot;nomenclature - cslFilieres\&quot;
[**GetIdNomenclatureCslOperations**](NomenclaturesApi.md#GetIdNomenclatureCslOperations) | **GET** /v1/nomenclatures/cslOperations/{id} | Détail de l&#39;élément avec l&#39;identifiant :id de \&quot;nomenclature - cslOperations\&quot;
[**PaginateNomenclatureBilanEnergie**](NomenclaturesApi.md#PaginateNomenclatureBilanEnergie) | **GET** /v1/nomenclatures/bilanEnergie | Pagination \&quot;nomenclature - bilanEnergie\&quot;
[**PaginateNomenclatureCslFilieres**](NomenclaturesApi.md#PaginateNomenclatureCslFilieres) | **GET** /v1/nomenclatures/cslFilieres | Pagination \&quot;nomenclature - cslFilieres\&quot;
[**PaginateNomenclatureCslOperations**](NomenclaturesApi.md#PaginateNomenclatureCslOperations) | **GET** /v1/nomenclatures/cslOperations | Pagination \&quot;nomenclature - cslOperations\&quot;


# **ExportCsvNomenclatureBilanEnergie**
> character ExportCsvNomenclatureBilanEnergie(with.column.name, with.column.description, order.by=var.order.by, columns=var.columns, CODE=var.CODE, NAME=var.NAME, UNIT=var.UNIT, LEVEL=var.LEVEL, DATA_TYPE=var.DATA_TYPE, FLOW_TYPE=var.FLOW_TYPE)

Export csv \"nomenclature - bilanEnergie\"

Permet d'obtenir un export csv d'éléments de \"nomenclature - bilanEnergie\". Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.

### Example
```R
library(didoscalie)

var.with.column.name <- 'with.column.name_example' # character | faut-il ajouter le nom des colonnes en entête du fichier csv ?
var.with.column.description <- 'with.column.description_example' # character | faut-il ajouter la description des colonnes en entête du fichier csv ?
var.order.by <- list("CODE") # array[character] | Options de tri
var.columns <- list("CODE") # array[character] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE, NAME, UNIT, LEVEL, DATA_TYPE, FLOW_TYPE
var.CODE <- 'CODE_example' # character | Pour filtrer selon la valeur de CODE. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE sont: eq, ne, startsWith, endsWith, in, nin
var.NAME <- 'NAME_example' # character | Pour filtrer selon la valeur de NAME. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME sont: eq, ne, startsWith, endsWith, in, nin
var.UNIT <- 'UNIT_example' # character | Pour filtrer selon la valeur de UNIT. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour UNIT sont: eq, ne, startsWith, endsWith, in, nin
var.LEVEL <- 'LEVEL_example' # character | Pour filtrer selon la valeur de LEVEL. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour LEVEL sont: eq, ne, startsWith, endsWith, in, nin
var.DATA_TYPE <- 'DATA_TYPE_example' # character | Pour filtrer selon la valeur de DATA_TYPE. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour DATA_TYPE sont: eq, ne, startsWith, endsWith, in, nin
var.FLOW_TYPE <- 'FLOW_TYPE_example' # character | Pour filtrer selon la valeur de FLOW_TYPE. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour FLOW_TYPE sont: eq, ne, startsWith, endsWith, in, nin

#Export csv \"nomenclature - bilanEnergie\"
api.instance <- NomenclaturesApi$new()
result <- api.instance$ExportCsvNomenclatureBilanEnergie(var.with.column.name, var.with.column.description, order.by=var.order.by, columns=var.columns, CODE=var.CODE, NAME=var.NAME, UNIT=var.UNIT, LEVEL=var.LEVEL, DATA_TYPE=var.DATA_TYPE, FLOW_TYPE=var.FLOW_TYPE)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **with.column.name** | **character**| faut-il ajouter le nom des colonnes en entête du fichier csv ? | 
 **with.column.description** | **character**| faut-il ajouter la description des colonnes en entête du fichier csv ? | 
 **order.by** | Enum [CODE, NAME, UNIT, LEVEL, DATA_TYPE, FLOW_TYPE, -CODE, -NAME, -UNIT, -LEVEL, -DATA_TYPE, -FLOW_TYPE] | Options de tri | [optional] 
 **columns** | Enum [CODE, NAME, UNIT, LEVEL, DATA_TYPE, FLOW_TYPE] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE, NAME, UNIT, LEVEL, DATA_TYPE, FLOW_TYPE | [optional] 
 **CODE** | **character**| Pour filtrer selon la valeur de CODE. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **NAME** | **character**| Pour filtrer selon la valeur de NAME. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **UNIT** | **character**| Pour filtrer selon la valeur de UNIT. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour UNIT sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **LEVEL** | **character**| Pour filtrer selon la valeur de LEVEL. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour LEVEL sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **DATA_TYPE** | **character**| Pour filtrer selon la valeur de DATA_TYPE. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour DATA_TYPE sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **FLOW_TYPE** | **character**| Pour filtrer selon la valeur de FLOW_TYPE. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour FLOW_TYPE sont: eq, ne, startsWith, endsWith, in, nin | [optional] 

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv; charset=utf-8, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec un export csv d&#39;éléments |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **ExportCsvNomenclatureCslFilieres**
> character ExportCsvNomenclatureCslFilieres(with.column.name, with.column.description, order.by=var.order.by, columns=var.columns, CODE=var.CODE, NAME=var.NAME)

Export csv \"nomenclature - cslFilieres\"

Permet d'obtenir un export csv d'éléments de \"nomenclature - cslFilieres\". Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.

### Example
```R
library(didoscalie)

var.with.column.name <- 'with.column.name_example' # character | faut-il ajouter le nom des colonnes en entête du fichier csv ?
var.with.column.description <- 'with.column.description_example' # character | faut-il ajouter la description des colonnes en entête du fichier csv ?
var.order.by <- list("CODE") # array[character] | Options de tri
var.columns <- list("CODE") # array[character] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE, NAME
var.CODE <- 'CODE_example' # character | Pour filtrer selon la valeur de CODE. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE sont: eq, ne, startsWith, endsWith, in, nin
var.NAME <- 'NAME_example' # character | Pour filtrer selon la valeur de NAME. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME sont: eq, ne, startsWith, endsWith, in, nin

#Export csv \"nomenclature - cslFilieres\"
api.instance <- NomenclaturesApi$new()
result <- api.instance$ExportCsvNomenclatureCslFilieres(var.with.column.name, var.with.column.description, order.by=var.order.by, columns=var.columns, CODE=var.CODE, NAME=var.NAME)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **with.column.name** | **character**| faut-il ajouter le nom des colonnes en entête du fichier csv ? | 
 **with.column.description** | **character**| faut-il ajouter la description des colonnes en entête du fichier csv ? | 
 **order.by** | Enum [CODE, NAME, -CODE, -NAME] | Options de tri | [optional] 
 **columns** | Enum [CODE, NAME] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE, NAME | [optional] 
 **CODE** | **character**| Pour filtrer selon la valeur de CODE. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **NAME** | **character**| Pour filtrer selon la valeur de NAME. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME sont: eq, ne, startsWith, endsWith, in, nin | [optional] 

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv; charset=utf-8, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec un export csv d&#39;éléments |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **ExportCsvNomenclatureCslOperations**
> character ExportCsvNomenclatureCslOperations(with.column.name, with.column.description, order.by=var.order.by, columns=var.columns, code.1=var.code.1, name.1=var.name.1, code.2=var.code.2, name.2=var.name.2, code.3=var.code.3, name.3=var.name.3, code.4=var.code.4, name.4=var.name.4)

Export csv \"nomenclature - cslOperations\"

Permet d'obtenir un export csv d'éléments de \"nomenclature - cslOperations\". Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.

### Example
```R
library(didoscalie)

var.with.column.name <- 'with.column.name_example' # character | faut-il ajouter le nom des colonnes en entête du fichier csv ?
var.with.column.description <- 'with.column.description_example' # character | faut-il ajouter la description des colonnes en entête du fichier csv ?
var.order.by <- list("CODE_1") # array[character] | Options de tri
var.columns <- list("CODE_1") # array[character] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE_1, NAME_1, CODE_2, NAME_2, CODE_3, NAME_3, CODE_4, NAME_4
var.code.1 <- 'code.1_example' # character | Pour filtrer selon la valeur de CODE_1. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE_1 sont: eq, ne, startsWith, endsWith, in, nin
var.name.1 <- 'name.1_example' # character | Pour filtrer selon la valeur de NAME_1. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME_1 sont: eq, ne, startsWith, endsWith, in, nin
var.code.2 <- 'code.2_example' # character | Pour filtrer selon la valeur de CODE_2. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE_2 sont: eq, ne, startsWith, endsWith, in, nin
var.name.2 <- 'name.2_example' # character | Pour filtrer selon la valeur de NAME_2. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME_2 sont: eq, ne, startsWith, endsWith, in, nin
var.code.3 <- 'code.3_example' # character | Pour filtrer selon la valeur de CODE_3. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE_3 sont: eq, ne, startsWith, endsWith, in, nin
var.name.3 <- 'name.3_example' # character | Pour filtrer selon la valeur de NAME_3. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME_3 sont: eq, ne, startsWith, endsWith, in, nin
var.code.4 <- 'code.4_example' # character | Pour filtrer selon la valeur de CODE_4. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE_4 sont: eq, ne, startsWith, endsWith, in, nin
var.name.4 <- 'name.4_example' # character | Pour filtrer selon la valeur de NAME_4. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME_4 sont: eq, ne, startsWith, endsWith, in, nin

#Export csv \"nomenclature - cslOperations\"
api.instance <- NomenclaturesApi$new()
result <- api.instance$ExportCsvNomenclatureCslOperations(var.with.column.name, var.with.column.description, order.by=var.order.by, columns=var.columns, code.1=var.code.1, name.1=var.name.1, code.2=var.code.2, name.2=var.name.2, code.3=var.code.3, name.3=var.name.3, code.4=var.code.4, name.4=var.name.4)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **with.column.name** | **character**| faut-il ajouter le nom des colonnes en entête du fichier csv ? | 
 **with.column.description** | **character**| faut-il ajouter la description des colonnes en entête du fichier csv ? | 
 **order.by** | Enum [CODE_1, NAME_1, CODE_2, NAME_2, CODE_3, NAME_3, CODE_4, NAME_4, -CODE_1, -NAME_1, -CODE_2, -NAME_2, -CODE_3, -NAME_3, -CODE_4, -NAME_4] | Options de tri | [optional] 
 **columns** | Enum [CODE_1, NAME_1, CODE_2, NAME_2, CODE_3, NAME_3, CODE_4, NAME_4] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE_1, NAME_1, CODE_2, NAME_2, CODE_3, NAME_3, CODE_4, NAME_4 | [optional] 
 **code.1** | **character**| Pour filtrer selon la valeur de CODE_1. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE_1 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **name.1** | **character**| Pour filtrer selon la valeur de NAME_1. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME_1 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **code.2** | **character**| Pour filtrer selon la valeur de CODE_2. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE_2 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **name.2** | **character**| Pour filtrer selon la valeur de NAME_2. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME_2 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **code.3** | **character**| Pour filtrer selon la valeur de CODE_3. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE_3 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **name.3** | **character**| Pour filtrer selon la valeur de NAME_3. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME_3 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **code.4** | **character**| Pour filtrer selon la valeur de CODE_4. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE_4 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **name.4** | **character**| Pour filtrer selon la valeur de NAME_4. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME_4 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv; charset=utf-8, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec un export csv d&#39;éléments |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **ExportJsonNomenclatureBilanEnergie**
> character ExportJsonNomenclatureBilanEnergie(order.by=var.order.by, columns=var.columns, CODE=var.CODE, NAME=var.NAME, UNIT=var.UNIT, LEVEL=var.LEVEL, DATA_TYPE=var.DATA_TYPE, FLOW_TYPE=var.FLOW_TYPE)

Export json \"nomenclature - bilanEnergie\"

Permet d'obtenir un export json d'éléments de \"nomenclature - bilanEnergie\". Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.

### Example
```R
library(didoscalie)

var.order.by <- list("CODE") # array[character] | Options de tri
var.columns <- list("CODE") # array[character] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE, NAME, UNIT, LEVEL, DATA_TYPE, FLOW_TYPE
var.CODE <- 'CODE_example' # character | Pour filtrer selon la valeur de CODE. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE sont: eq, ne, startsWith, endsWith, in, nin
var.NAME <- 'NAME_example' # character | Pour filtrer selon la valeur de NAME. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME sont: eq, ne, startsWith, endsWith, in, nin
var.UNIT <- 'UNIT_example' # character | Pour filtrer selon la valeur de UNIT. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour UNIT sont: eq, ne, startsWith, endsWith, in, nin
var.LEVEL <- 'LEVEL_example' # character | Pour filtrer selon la valeur de LEVEL. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour LEVEL sont: eq, ne, startsWith, endsWith, in, nin
var.DATA_TYPE <- 'DATA_TYPE_example' # character | Pour filtrer selon la valeur de DATA_TYPE. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour DATA_TYPE sont: eq, ne, startsWith, endsWith, in, nin
var.FLOW_TYPE <- 'FLOW_TYPE_example' # character | Pour filtrer selon la valeur de FLOW_TYPE. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour FLOW_TYPE sont: eq, ne, startsWith, endsWith, in, nin

#Export json \"nomenclature - bilanEnergie\"
api.instance <- NomenclaturesApi$new()
result <- api.instance$ExportJsonNomenclatureBilanEnergie(order.by=var.order.by, columns=var.columns, CODE=var.CODE, NAME=var.NAME, UNIT=var.UNIT, LEVEL=var.LEVEL, DATA_TYPE=var.DATA_TYPE, FLOW_TYPE=var.FLOW_TYPE)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order.by** | Enum [CODE, NAME, UNIT, LEVEL, DATA_TYPE, FLOW_TYPE, -CODE, -NAME, -UNIT, -LEVEL, -DATA_TYPE, -FLOW_TYPE] | Options de tri | [optional] 
 **columns** | Enum [CODE, NAME, UNIT, LEVEL, DATA_TYPE, FLOW_TYPE] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE, NAME, UNIT, LEVEL, DATA_TYPE, FLOW_TYPE | [optional] 
 **CODE** | **character**| Pour filtrer selon la valeur de CODE. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **NAME** | **character**| Pour filtrer selon la valeur de NAME. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **UNIT** | **character**| Pour filtrer selon la valeur de UNIT. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour UNIT sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **LEVEL** | **character**| Pour filtrer selon la valeur de LEVEL. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour LEVEL sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **DATA_TYPE** | **character**| Pour filtrer selon la valeur de DATA_TYPE. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour DATA_TYPE sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **FLOW_TYPE** | **character**| Pour filtrer selon la valeur de FLOW_TYPE. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour FLOW_TYPE sont: eq, ne, startsWith, endsWith, in, nin | [optional] 

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec un export json d&#39;éléments |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **ExportJsonNomenclatureCslFilieres**
> character ExportJsonNomenclatureCslFilieres(order.by=var.order.by, columns=var.columns, CODE=var.CODE, NAME=var.NAME)

Export json \"nomenclature - cslFilieres\"

Permet d'obtenir un export json d'éléments de \"nomenclature - cslFilieres\". Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.

### Example
```R
library(didoscalie)

var.order.by <- list("CODE") # array[character] | Options de tri
var.columns <- list("CODE") # array[character] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE, NAME
var.CODE <- 'CODE_example' # character | Pour filtrer selon la valeur de CODE. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE sont: eq, ne, startsWith, endsWith, in, nin
var.NAME <- 'NAME_example' # character | Pour filtrer selon la valeur de NAME. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME sont: eq, ne, startsWith, endsWith, in, nin

#Export json \"nomenclature - cslFilieres\"
api.instance <- NomenclaturesApi$new()
result <- api.instance$ExportJsonNomenclatureCslFilieres(order.by=var.order.by, columns=var.columns, CODE=var.CODE, NAME=var.NAME)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order.by** | Enum [CODE, NAME, -CODE, -NAME] | Options de tri | [optional] 
 **columns** | Enum [CODE, NAME] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE, NAME | [optional] 
 **CODE** | **character**| Pour filtrer selon la valeur de CODE. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **NAME** | **character**| Pour filtrer selon la valeur de NAME. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME sont: eq, ne, startsWith, endsWith, in, nin | [optional] 

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec un export json d&#39;éléments |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **ExportJsonNomenclatureCslOperations**
> character ExportJsonNomenclatureCslOperations(order.by=var.order.by, columns=var.columns, code.1=var.code.1, name.1=var.name.1, code.2=var.code.2, name.2=var.name.2, code.3=var.code.3, name.3=var.name.3, code.4=var.code.4, name.4=var.name.4)

Export json \"nomenclature - cslOperations\"

Permet d'obtenir un export json d'éléments de \"nomenclature - cslOperations\". Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.

### Example
```R
library(didoscalie)

var.order.by <- list("CODE_1") # array[character] | Options de tri
var.columns <- list("CODE_1") # array[character] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE_1, NAME_1, CODE_2, NAME_2, CODE_3, NAME_3, CODE_4, NAME_4
var.code.1 <- 'code.1_example' # character | Pour filtrer selon la valeur de CODE_1. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE_1 sont: eq, ne, startsWith, endsWith, in, nin
var.name.1 <- 'name.1_example' # character | Pour filtrer selon la valeur de NAME_1. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME_1 sont: eq, ne, startsWith, endsWith, in, nin
var.code.2 <- 'code.2_example' # character | Pour filtrer selon la valeur de CODE_2. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE_2 sont: eq, ne, startsWith, endsWith, in, nin
var.name.2 <- 'name.2_example' # character | Pour filtrer selon la valeur de NAME_2. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME_2 sont: eq, ne, startsWith, endsWith, in, nin
var.code.3 <- 'code.3_example' # character | Pour filtrer selon la valeur de CODE_3. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE_3 sont: eq, ne, startsWith, endsWith, in, nin
var.name.3 <- 'name.3_example' # character | Pour filtrer selon la valeur de NAME_3. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME_3 sont: eq, ne, startsWith, endsWith, in, nin
var.code.4 <- 'code.4_example' # character | Pour filtrer selon la valeur de CODE_4. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE_4 sont: eq, ne, startsWith, endsWith, in, nin
var.name.4 <- 'name.4_example' # character | Pour filtrer selon la valeur de NAME_4. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME_4 sont: eq, ne, startsWith, endsWith, in, nin

#Export json \"nomenclature - cslOperations\"
api.instance <- NomenclaturesApi$new()
result <- api.instance$ExportJsonNomenclatureCslOperations(order.by=var.order.by, columns=var.columns, code.1=var.code.1, name.1=var.name.1, code.2=var.code.2, name.2=var.name.2, code.3=var.code.3, name.3=var.name.3, code.4=var.code.4, name.4=var.name.4)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order.by** | Enum [CODE_1, NAME_1, CODE_2, NAME_2, CODE_3, NAME_3, CODE_4, NAME_4, -CODE_1, -NAME_1, -CODE_2, -NAME_2, -CODE_3, -NAME_3, -CODE_4, -NAME_4] | Options de tri | [optional] 
 **columns** | Enum [CODE_1, NAME_1, CODE_2, NAME_2, CODE_3, NAME_3, CODE_4, NAME_4] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE_1, NAME_1, CODE_2, NAME_2, CODE_3, NAME_3, CODE_4, NAME_4 | [optional] 
 **code.1** | **character**| Pour filtrer selon la valeur de CODE_1. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE_1 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **name.1** | **character**| Pour filtrer selon la valeur de NAME_1. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME_1 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **code.2** | **character**| Pour filtrer selon la valeur de CODE_2. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE_2 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **name.2** | **character**| Pour filtrer selon la valeur de NAME_2. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME_2 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **code.3** | **character**| Pour filtrer selon la valeur de CODE_3. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE_3 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **name.3** | **character**| Pour filtrer selon la valeur de NAME_3. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME_3 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **code.4** | **character**| Pour filtrer selon la valeur de CODE_4. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE_4 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **name.4** | **character**| Pour filtrer selon la valeur de NAME_4. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME_4 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec un export json d&#39;éléments |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **ExportXlsxNomenclatureBilanEnergie**
> data.frame ExportXlsxNomenclatureBilanEnergie(with.column.name, with.column.description, order.by=var.order.by, columns=var.columns, CODE=var.CODE, NAME=var.NAME, UNIT=var.UNIT, LEVEL=var.LEVEL, DATA_TYPE=var.DATA_TYPE, FLOW_TYPE=var.FLOW_TYPE)

Export xlsx \"nomenclature - bilanEnergie\"

Permet d'obtenir un export xlsx d'éléments de \"nomenclature - bilanEnergie\". Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.

### Example
```R
library(didoscalie)

var.with.column.name <- 'with.column.name_example' # character | faut-il ajouter le nom des colonnes en entête du fichier csv ?
var.with.column.description <- 'with.column.description_example' # character | faut-il ajouter la description des colonnes en entête du fichier csv ?
var.order.by <- list("CODE") # array[character] | Options de tri
var.columns <- list("CODE") # array[character] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE, NAME, UNIT, LEVEL, DATA_TYPE, FLOW_TYPE
var.CODE <- 'CODE_example' # character | Pour filtrer selon la valeur de CODE. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE sont: eq, ne, startsWith, endsWith, in, nin
var.NAME <- 'NAME_example' # character | Pour filtrer selon la valeur de NAME. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME sont: eq, ne, startsWith, endsWith, in, nin
var.UNIT <- 'UNIT_example' # character | Pour filtrer selon la valeur de UNIT. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour UNIT sont: eq, ne, startsWith, endsWith, in, nin
var.LEVEL <- 'LEVEL_example' # character | Pour filtrer selon la valeur de LEVEL. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour LEVEL sont: eq, ne, startsWith, endsWith, in, nin
var.DATA_TYPE <- 'DATA_TYPE_example' # character | Pour filtrer selon la valeur de DATA_TYPE. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour DATA_TYPE sont: eq, ne, startsWith, endsWith, in, nin
var.FLOW_TYPE <- 'FLOW_TYPE_example' # character | Pour filtrer selon la valeur de FLOW_TYPE. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour FLOW_TYPE sont: eq, ne, startsWith, endsWith, in, nin

#Export xlsx \"nomenclature - bilanEnergie\"
api.instance <- NomenclaturesApi$new()
result <- api.instance$ExportXlsxNomenclatureBilanEnergie(var.with.column.name, var.with.column.description, order.by=var.order.by, columns=var.columns, CODE=var.CODE, NAME=var.NAME, UNIT=var.UNIT, LEVEL=var.LEVEL, DATA_TYPE=var.DATA_TYPE, FLOW_TYPE=var.FLOW_TYPE)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **with.column.name** | **character**| faut-il ajouter le nom des colonnes en entête du fichier csv ? | 
 **with.column.description** | **character**| faut-il ajouter la description des colonnes en entête du fichier csv ? | 
 **order.by** | Enum [CODE, NAME, UNIT, LEVEL, DATA_TYPE, FLOW_TYPE, -CODE, -NAME, -UNIT, -LEVEL, -DATA_TYPE, -FLOW_TYPE] | Options de tri | [optional] 
 **columns** | Enum [CODE, NAME, UNIT, LEVEL, DATA_TYPE, FLOW_TYPE] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE, NAME, UNIT, LEVEL, DATA_TYPE, FLOW_TYPE | [optional] 
 **CODE** | **character**| Pour filtrer selon la valeur de CODE. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **NAME** | **character**| Pour filtrer selon la valeur de NAME. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **UNIT** | **character**| Pour filtrer selon la valeur de UNIT. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour UNIT sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **LEVEL** | **character**| Pour filtrer selon la valeur de LEVEL. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour LEVEL sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **DATA_TYPE** | **character**| Pour filtrer selon la valeur de DATA_TYPE. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour DATA_TYPE sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **FLOW_TYPE** | **character**| Pour filtrer selon la valeur de FLOW_TYPE. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour FLOW_TYPE sont: eq, ne, startsWith, endsWith, in, nin | [optional] 

### Return type

**data.frame**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec un export xlsx d&#39;éléments |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **ExportXlsxNomenclatureCslFilieres**
> data.frame ExportXlsxNomenclatureCslFilieres(with.column.name, with.column.description, order.by=var.order.by, columns=var.columns, CODE=var.CODE, NAME=var.NAME)

Export xlsx \"nomenclature - cslFilieres\"

Permet d'obtenir un export xlsx d'éléments de \"nomenclature - cslFilieres\". Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.

### Example
```R
library(didoscalie)

var.with.column.name <- 'with.column.name_example' # character | faut-il ajouter le nom des colonnes en entête du fichier csv ?
var.with.column.description <- 'with.column.description_example' # character | faut-il ajouter la description des colonnes en entête du fichier csv ?
var.order.by <- list("CODE") # array[character] | Options de tri
var.columns <- list("CODE") # array[character] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE, NAME
var.CODE <- 'CODE_example' # character | Pour filtrer selon la valeur de CODE. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE sont: eq, ne, startsWith, endsWith, in, nin
var.NAME <- 'NAME_example' # character | Pour filtrer selon la valeur de NAME. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME sont: eq, ne, startsWith, endsWith, in, nin

#Export xlsx \"nomenclature - cslFilieres\"
api.instance <- NomenclaturesApi$new()
result <- api.instance$ExportXlsxNomenclatureCslFilieres(var.with.column.name, var.with.column.description, order.by=var.order.by, columns=var.columns, CODE=var.CODE, NAME=var.NAME)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **with.column.name** | **character**| faut-il ajouter le nom des colonnes en entête du fichier csv ? | 
 **with.column.description** | **character**| faut-il ajouter la description des colonnes en entête du fichier csv ? | 
 **order.by** | Enum [CODE, NAME, -CODE, -NAME] | Options de tri | [optional] 
 **columns** | Enum [CODE, NAME] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE, NAME | [optional] 
 **CODE** | **character**| Pour filtrer selon la valeur de CODE. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **NAME** | **character**| Pour filtrer selon la valeur de NAME. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME sont: eq, ne, startsWith, endsWith, in, nin | [optional] 

### Return type

**data.frame**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec un export xlsx d&#39;éléments |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **ExportXlsxNomenclatureCslOperations**
> data.frame ExportXlsxNomenclatureCslOperations(with.column.name, with.column.description, order.by=var.order.by, columns=var.columns, code.1=var.code.1, name.1=var.name.1, code.2=var.code.2, name.2=var.name.2, code.3=var.code.3, name.3=var.name.3, code.4=var.code.4, name.4=var.name.4)

Export xlsx \"nomenclature - cslOperations\"

Permet d'obtenir un export xlsx d'éléments de \"nomenclature - cslOperations\". Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.

### Example
```R
library(didoscalie)

var.with.column.name <- 'with.column.name_example' # character | faut-il ajouter le nom des colonnes en entête du fichier csv ?
var.with.column.description <- 'with.column.description_example' # character | faut-il ajouter la description des colonnes en entête du fichier csv ?
var.order.by <- list("CODE_1") # array[character] | Options de tri
var.columns <- list("CODE_1") # array[character] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE_1, NAME_1, CODE_2, NAME_2, CODE_3, NAME_3, CODE_4, NAME_4
var.code.1 <- 'code.1_example' # character | Pour filtrer selon la valeur de CODE_1. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE_1 sont: eq, ne, startsWith, endsWith, in, nin
var.name.1 <- 'name.1_example' # character | Pour filtrer selon la valeur de NAME_1. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME_1 sont: eq, ne, startsWith, endsWith, in, nin
var.code.2 <- 'code.2_example' # character | Pour filtrer selon la valeur de CODE_2. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE_2 sont: eq, ne, startsWith, endsWith, in, nin
var.name.2 <- 'name.2_example' # character | Pour filtrer selon la valeur de NAME_2. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME_2 sont: eq, ne, startsWith, endsWith, in, nin
var.code.3 <- 'code.3_example' # character | Pour filtrer selon la valeur de CODE_3. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE_3 sont: eq, ne, startsWith, endsWith, in, nin
var.name.3 <- 'name.3_example' # character | Pour filtrer selon la valeur de NAME_3. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME_3 sont: eq, ne, startsWith, endsWith, in, nin
var.code.4 <- 'code.4_example' # character | Pour filtrer selon la valeur de CODE_4. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE_4 sont: eq, ne, startsWith, endsWith, in, nin
var.name.4 <- 'name.4_example' # character | Pour filtrer selon la valeur de NAME_4. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME_4 sont: eq, ne, startsWith, endsWith, in, nin

#Export xlsx \"nomenclature - cslOperations\"
api.instance <- NomenclaturesApi$new()
result <- api.instance$ExportXlsxNomenclatureCslOperations(var.with.column.name, var.with.column.description, order.by=var.order.by, columns=var.columns, code.1=var.code.1, name.1=var.name.1, code.2=var.code.2, name.2=var.name.2, code.3=var.code.3, name.3=var.name.3, code.4=var.code.4, name.4=var.name.4)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **with.column.name** | **character**| faut-il ajouter le nom des colonnes en entête du fichier csv ? | 
 **with.column.description** | **character**| faut-il ajouter la description des colonnes en entête du fichier csv ? | 
 **order.by** | Enum [CODE_1, NAME_1, CODE_2, NAME_2, CODE_3, NAME_3, CODE_4, NAME_4, -CODE_1, -NAME_1, -CODE_2, -NAME_2, -CODE_3, -NAME_3, -CODE_4, -NAME_4] | Options de tri | [optional] 
 **columns** | Enum [CODE_1, NAME_1, CODE_2, NAME_2, CODE_3, NAME_3, CODE_4, NAME_4] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE_1, NAME_1, CODE_2, NAME_2, CODE_3, NAME_3, CODE_4, NAME_4 | [optional] 
 **code.1** | **character**| Pour filtrer selon la valeur de CODE_1. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE_1 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **name.1** | **character**| Pour filtrer selon la valeur de NAME_1. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME_1 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **code.2** | **character**| Pour filtrer selon la valeur de CODE_2. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE_2 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **name.2** | **character**| Pour filtrer selon la valeur de NAME_2. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME_2 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **code.3** | **character**| Pour filtrer selon la valeur de CODE_3. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE_3 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **name.3** | **character**| Pour filtrer selon la valeur de NAME_3. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME_3 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **code.4** | **character**| Pour filtrer selon la valeur de CODE_4. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE_4 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **name.4** | **character**| Pour filtrer selon la valeur de NAME_4. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME_4 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 

### Return type

**data.frame**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec un export xlsx d&#39;éléments |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **GetIdNomenclatureBilanEnergie**
> ItemBilanEnergie GetIdNomenclatureBilanEnergie(id)

Détail de l'élément avec l'identifiant :id de \"nomenclature - bilanEnergie\"

Permet d'obtenir le détail d'un élément de \"nomenclature - bilanEnergie\" dont on connaît l'id.

### Example
```R
library(didoscalie)

var.id <- 'id_example' # character | identifiant de l'élement dans \"nomenclature - bilanEnergie\"

#Détail de l'élément avec l'identifiant :id de \"nomenclature - bilanEnergie\"
api.instance <- NomenclaturesApi$new()
result <- api.instance$GetIdNomenclatureBilanEnergie(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| identifiant de l&#39;élement dans \&quot;nomenclature - bilanEnergie\&quot; | 

### Return type

[**ItemBilanEnergie**](item_bilanEnergie.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec une le détail d&#39;un élément |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **GetIdNomenclatureCslFilieres**
> ItemCslFilieres GetIdNomenclatureCslFilieres(id)

Détail de l'élément avec l'identifiant :id de \"nomenclature - cslFilieres\"

Permet d'obtenir le détail d'un élément de \"nomenclature - cslFilieres\" dont on connaît l'id.

### Example
```R
library(didoscalie)

var.id <- 'id_example' # character | identifiant de l'élement dans \"nomenclature - cslFilieres\"

#Détail de l'élément avec l'identifiant :id de \"nomenclature - cslFilieres\"
api.instance <- NomenclaturesApi$new()
result <- api.instance$GetIdNomenclatureCslFilieres(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| identifiant de l&#39;élement dans \&quot;nomenclature - cslFilieres\&quot; | 

### Return type

[**ItemCslFilieres**](item_cslFilieres.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec une le détail d&#39;un élément |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **GetIdNomenclatureCslOperations**
> ItemCslOperations GetIdNomenclatureCslOperations(id)

Détail de l'élément avec l'identifiant :id de \"nomenclature - cslOperations\"

Permet d'obtenir le détail d'un élément de \"nomenclature - cslOperations\" dont on connaît l'id.

### Example
```R
library(didoscalie)

var.id <- 'id_example' # character | identifiant de l'élement dans \"nomenclature - cslOperations\"

#Détail de l'élément avec l'identifiant :id de \"nomenclature - cslOperations\"
api.instance <- NomenclaturesApi$new()
result <- api.instance$GetIdNomenclatureCslOperations(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| identifiant de l&#39;élement dans \&quot;nomenclature - cslOperations\&quot; | 

### Return type

[**ItemCslOperations**](item_cslOperations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec une le détail d&#39;un élément |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **PaginateNomenclatureBilanEnergie**
> PaginateListBilanEnergie PaginateNomenclatureBilanEnergie(page, page.size, order.by=var.order.by, columns=var.columns, CODE=var.CODE, NAME=var.NAME, UNIT=var.UNIT, LEVEL=var.LEVEL, DATA_TYPE=var.DATA_TYPE, FLOW_TYPE=var.FLOW_TYPE)

Pagination \"nomenclature - bilanEnergie\"

Permet d'obtenir une liste paginée d'éléments de \"nomenclature - bilanEnergie\". Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.

### Example
```R
library(didoscalie)

var.page <- 56 # integer | Numéro de la page à afficher
var.page.size <- 'page.size_example' # character | Nombre de lignes par page
var.order.by <- list("CODE") # array[character] | Options de tri
var.columns <- list("CODE") # array[character] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE, NAME, UNIT, LEVEL, DATA_TYPE, FLOW_TYPE
var.CODE <- 'CODE_example' # character | Pour filtrer selon la valeur de CODE. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE sont: eq, ne, startsWith, endsWith, in, nin
var.NAME <- 'NAME_example' # character | Pour filtrer selon la valeur de NAME. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME sont: eq, ne, startsWith, endsWith, in, nin
var.UNIT <- 'UNIT_example' # character | Pour filtrer selon la valeur de UNIT. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour UNIT sont: eq, ne, startsWith, endsWith, in, nin
var.LEVEL <- 'LEVEL_example' # character | Pour filtrer selon la valeur de LEVEL. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour LEVEL sont: eq, ne, startsWith, endsWith, in, nin
var.DATA_TYPE <- 'DATA_TYPE_example' # character | Pour filtrer selon la valeur de DATA_TYPE. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour DATA_TYPE sont: eq, ne, startsWith, endsWith, in, nin
var.FLOW_TYPE <- 'FLOW_TYPE_example' # character | Pour filtrer selon la valeur de FLOW_TYPE. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour FLOW_TYPE sont: eq, ne, startsWith, endsWith, in, nin

#Pagination \"nomenclature - bilanEnergie\"
api.instance <- NomenclaturesApi$new()
result <- api.instance$PaginateNomenclatureBilanEnergie(var.page, var.page.size, order.by=var.order.by, columns=var.columns, CODE=var.CODE, NAME=var.NAME, UNIT=var.UNIT, LEVEL=var.LEVEL, DATA_TYPE=var.DATA_TYPE, FLOW_TYPE=var.FLOW_TYPE)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**| Numéro de la page à afficher | 
 **page.size** | Enum [10, 20, 50, 100] | Nombre de lignes par page | 
 **order.by** | Enum [CODE, NAME, UNIT, LEVEL, DATA_TYPE, FLOW_TYPE, -CODE, -NAME, -UNIT, -LEVEL, -DATA_TYPE, -FLOW_TYPE] | Options de tri | [optional] 
 **columns** | Enum [CODE, NAME, UNIT, LEVEL, DATA_TYPE, FLOW_TYPE] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE, NAME, UNIT, LEVEL, DATA_TYPE, FLOW_TYPE | [optional] 
 **CODE** | **character**| Pour filtrer selon la valeur de CODE. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **NAME** | **character**| Pour filtrer selon la valeur de NAME. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **UNIT** | **character**| Pour filtrer selon la valeur de UNIT. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour UNIT sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **LEVEL** | **character**| Pour filtrer selon la valeur de LEVEL. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour LEVEL sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **DATA_TYPE** | **character**| Pour filtrer selon la valeur de DATA_TYPE. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour DATA_TYPE sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **FLOW_TYPE** | **character**| Pour filtrer selon la valeur de FLOW_TYPE. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour FLOW_TYPE sont: eq, ne, startsWith, endsWith, in, nin | [optional] 

### Return type

[**PaginateListBilanEnergie**](paginateList_bilanEnergie.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec une liste paginée d&#39;éléments |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **PaginateNomenclatureCslFilieres**
> PaginateListCslFilieres PaginateNomenclatureCslFilieres(page, page.size, order.by=var.order.by, columns=var.columns, CODE=var.CODE, NAME=var.NAME)

Pagination \"nomenclature - cslFilieres\"

Permet d'obtenir une liste paginée d'éléments de \"nomenclature - cslFilieres\". Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.

### Example
```R
library(didoscalie)

var.page <- 56 # integer | Numéro de la page à afficher
var.page.size <- 'page.size_example' # character | Nombre de lignes par page
var.order.by <- list("CODE") # array[character] | Options de tri
var.columns <- list("CODE") # array[character] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE, NAME
var.CODE <- 'CODE_example' # character | Pour filtrer selon la valeur de CODE. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE sont: eq, ne, startsWith, endsWith, in, nin
var.NAME <- 'NAME_example' # character | Pour filtrer selon la valeur de NAME. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME sont: eq, ne, startsWith, endsWith, in, nin

#Pagination \"nomenclature - cslFilieres\"
api.instance <- NomenclaturesApi$new()
result <- api.instance$PaginateNomenclatureCslFilieres(var.page, var.page.size, order.by=var.order.by, columns=var.columns, CODE=var.CODE, NAME=var.NAME)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**| Numéro de la page à afficher | 
 **page.size** | Enum [10, 20, 50, 100] | Nombre de lignes par page | 
 **order.by** | Enum [CODE, NAME, -CODE, -NAME] | Options de tri | [optional] 
 **columns** | Enum [CODE, NAME] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE, NAME | [optional] 
 **CODE** | **character**| Pour filtrer selon la valeur de CODE. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **NAME** | **character**| Pour filtrer selon la valeur de NAME. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME sont: eq, ne, startsWith, endsWith, in, nin | [optional] 

### Return type

[**PaginateListCslFilieres**](paginateList_cslFilieres.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec une liste paginée d&#39;éléments |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **PaginateNomenclatureCslOperations**
> PaginateListCslOperations PaginateNomenclatureCslOperations(page, page.size, order.by=var.order.by, columns=var.columns, code.1=var.code.1, name.1=var.name.1, code.2=var.code.2, name.2=var.name.2, code.3=var.code.3, name.3=var.name.3, code.4=var.code.4, name.4=var.name.4)

Pagination \"nomenclature - cslOperations\"

Permet d'obtenir une liste paginée d'éléments de \"nomenclature - cslOperations\". Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.

### Example
```R
library(didoscalie)

var.page <- 56 # integer | Numéro de la page à afficher
var.page.size <- 'page.size_example' # character | Nombre de lignes par page
var.order.by <- list("CODE_1") # array[character] | Options de tri
var.columns <- list("CODE_1") # array[character] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE_1, NAME_1, CODE_2, NAME_2, CODE_3, NAME_3, CODE_4, NAME_4
var.code.1 <- 'code.1_example' # character | Pour filtrer selon la valeur de CODE_1. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE_1 sont: eq, ne, startsWith, endsWith, in, nin
var.name.1 <- 'name.1_example' # character | Pour filtrer selon la valeur de NAME_1. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME_1 sont: eq, ne, startsWith, endsWith, in, nin
var.code.2 <- 'code.2_example' # character | Pour filtrer selon la valeur de CODE_2. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE_2 sont: eq, ne, startsWith, endsWith, in, nin
var.name.2 <- 'name.2_example' # character | Pour filtrer selon la valeur de NAME_2. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME_2 sont: eq, ne, startsWith, endsWith, in, nin
var.code.3 <- 'code.3_example' # character | Pour filtrer selon la valeur de CODE_3. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE_3 sont: eq, ne, startsWith, endsWith, in, nin
var.name.3 <- 'name.3_example' # character | Pour filtrer selon la valeur de NAME_3. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME_3 sont: eq, ne, startsWith, endsWith, in, nin
var.code.4 <- 'code.4_example' # character | Pour filtrer selon la valeur de CODE_4. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour CODE_4 sont: eq, ne, startsWith, endsWith, in, nin
var.name.4 <- 'name.4_example' # character | Pour filtrer selon la valeur de NAME_4. Le format doit être de la forme \"typeFiltre:valeurFiltre\". Les types de filtres disponibles pour NAME_4 sont: eq, ne, startsWith, endsWith, in, nin

#Pagination \"nomenclature - cslOperations\"
api.instance <- NomenclaturesApi$new()
result <- api.instance$PaginateNomenclatureCslOperations(var.page, var.page.size, order.by=var.order.by, columns=var.columns, code.1=var.code.1, name.1=var.name.1, code.2=var.code.2, name.2=var.name.2, code.3=var.code.3, name.3=var.name.3, code.4=var.code.4, name.4=var.name.4)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**| Numéro de la page à afficher | 
 **page.size** | Enum [10, 20, 50, 100] | Nombre de lignes par page | 
 **order.by** | Enum [CODE_1, NAME_1, CODE_2, NAME_2, CODE_3, NAME_3, CODE_4, NAME_4, -CODE_1, -NAME_1, -CODE_2, -NAME_2, -CODE_3, -NAME_3, -CODE_4, -NAME_4] | Options de tri | [optional] 
 **columns** | Enum [CODE_1, NAME_1, CODE_2, NAME_2, CODE_3, NAME_3, CODE_4, NAME_4] | Liste des colonnes à inclure dans le résultat. Les colonnes doivent être saisies en séparant chaque valeur par une virgule. La liste des colonnes disponibles est la suivante: CODE_1, NAME_1, CODE_2, NAME_2, CODE_3, NAME_3, CODE_4, NAME_4 | [optional] 
 **code.1** | **character**| Pour filtrer selon la valeur de CODE_1. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE_1 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **name.1** | **character**| Pour filtrer selon la valeur de NAME_1. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME_1 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **code.2** | **character**| Pour filtrer selon la valeur de CODE_2. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE_2 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **name.2** | **character**| Pour filtrer selon la valeur de NAME_2. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME_2 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **code.3** | **character**| Pour filtrer selon la valeur de CODE_3. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE_3 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **name.3** | **character**| Pour filtrer selon la valeur de NAME_3. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME_3 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **code.4** | **character**| Pour filtrer selon la valeur de CODE_4. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour CODE_4 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 
 **name.4** | **character**| Pour filtrer selon la valeur de NAME_4. Le format doit être de la forme \&quot;typeFiltre:valeurFiltre\&quot;. Les types de filtres disponibles pour NAME_4 sont: eq, ne, startsWith, endsWith, in, nin | [optional] 

### Return type

[**PaginateListCslOperations**](paginateList_cslOperations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec une liste paginée d&#39;éléments |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

