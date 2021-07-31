# DatafilesApi

All URIs are relative to *https://data.statistiques.developpement-durable.gouv.fr/dido/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExportCsvMillesimeDatafile**](DatafilesApi.md#ExportCsvMillesimeDatafile) | **GET** /v1/datafiles/{rid}/csv | Export csv d&#39;un milléime de fichier de données
[**ExportGeojsonMillesimeDatafile**](DatafilesApi.md#ExportGeojsonMillesimeDatafile) | **GET** /v1/datafiles/{rid}/spatial/geojson | Export geojson d&#39;un milléime de fichier de données
[**ExportJsonMillesimeDatafile**](DatafilesApi.md#ExportJsonMillesimeDatafile) | **GET** /v1/datafiles/{rid}/json | Export json d&#39;un milléime de fichier de données
[**ExportShapefileMillesimeDatafile**](DatafilesApi.md#ExportShapefileMillesimeDatafile) | **GET** /v1/datafiles/{rid}/spatial/shapefile | Export shapefile d&#39;un milléime de fichier de données
[**ExportXlsxMillesimeDatafile**](DatafilesApi.md#ExportXlsxMillesimeDatafile) | **GET** /v1/datafiles/{rid}/xlsx | Export xlsx d&#39;un milléime de fichier de données
[**GetMillesimeDatafile**](DatafilesApi.md#GetMillesimeDatafile) | **GET** /v1/datafiles/{rid} | Détail du millésime d&#39;un fichier de données (identifiée par son rid et son numéro de millésime -le dernier si le millésime n&#39;est pas saisi).
[**PaginateDatafiles**](DatafilesApi.md#PaginateDatafiles) | **GET** /v1/datafiles | Pagination des fichiers de données
[**PaginateMillesimeDatafile**](DatafilesApi.md#PaginateMillesimeDatafile) | **GET** /v1/datafiles/{rid}/rows | Pagination des données d&#39;un millésime d&#39;un fichier de données


# **ExportCsvMillesimeDatafile**
> character ExportCsvMillesimeDatafile(rid, with.column.name, with.column.description, with.column.unit, millesime=var.millesime, order.by=var.order.by, columns=var.columns)

Export csv d'un milléime de fichier de données

Permet d'obtenir un export csv d'un millésime de fichier de données.              Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.              Il existe une apidoc dédiée à chaque millésime où les paramètres de tri, de sélection de colonnes et de tri spécifique au millésime sont détaillés:              https://data.statistiques.developpement-durable.gouv.fr/dido/api/v1/datafiles/{rid}/millesime={millesime}/apidoc.html

### Example
```R
library(didoscalie)

var.rid <- 'rid_example' # character | Identifiant du fichier de données.
var.with.column.name <- 'with.column.name_example' # character | faut-il ajouter le nom des colonnes en entête du fichier csv ?
var.with.column.description <- 'with.column.description_example' # character | faut-il ajouter la description des colonnes en entête du fichier csv ?
var.with.column.unit <- 'with.column.unit_example' # character | faut-il ajouter l'unité des colonnes en entête du fichier csv ?
var.millesime <- 'millesime_example' # character | Millésime du fichier de données (le dernier millésime sera retournée si valeur omise) - format YYYY-MM
var.order.by <- list("inner_example") # array[character] | Options de tri.       Les différents champs doivent être séparés par une virgule. Si il s'agit d'un tri descendant, il faut rajouter - devant.       Par exemple pour un fichier ayant les entêtes colonne1 et colonne2, une valeur pourrait être \"-colonne1,colonne2' pour trier d'abord par entete1 de manière décroissante puis par entete2 de manière croissante
var.columns <- list("inner_example") # array[character] | Les colonnes à récupérer.       Les colonnes à récupérer séparées par une virgule. Par exemple \"colonne,colonne2\" pour récupérer uniquement les colonnes entete1 et entete2.

#Export csv d'un milléime de fichier de données
api.instance <- DatafilesApi$new()
result <- api.instance$ExportCsvMillesimeDatafile(var.rid, var.with.column.name, var.with.column.description, var.with.column.unit, millesime=var.millesime, order.by=var.order.by, columns=var.columns)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **character**| Identifiant du fichier de données. | 
 **with.column.name** | **character**| faut-il ajouter le nom des colonnes en entête du fichier csv ? | 
 **with.column.description** | **character**| faut-il ajouter la description des colonnes en entête du fichier csv ? | 
 **with.column.unit** | **character**| faut-il ajouter l&#39;unité des colonnes en entête du fichier csv ? | 
 **millesime** | **character**| Millésime du fichier de données (le dernier millésime sera retournée si valeur omise) - format YYYY-MM | [optional] 
 **order.by** | list( **character** )| Options de tri.       Les différents champs doivent être séparés par une virgule. Si il s&#39;agit d&#39;un tri descendant, il faut rajouter - devant.       Par exemple pour un fichier ayant les entêtes colonne1 et colonne2, une valeur pourrait être \&quot;-colonne1,colonne2&#39; pour trier d&#39;abord par entete1 de manière décroissante puis par entete2 de manière croissante | [optional] 
 **columns** | list( **character** )| Les colonnes à récupérer.       Les colonnes à récupérer séparées par une virgule. Par exemple \&quot;colonne,colonne2\&quot; pour récupérer uniquement les colonnes entete1 et entete2. | [optional] 

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

# **ExportGeojsonMillesimeDatafile**
> character ExportGeojsonMillesimeDatafile(rid, geo.field, millesime=var.millesime, order.by=var.order.by, columns=var.columns)

Export geojson d'un milléime de fichier de données

Permet d'obtenir un export geojson d'un millésime de fichier de données.              Cette route n'existe que pour les fichiers de données qui utilisent un référentiel géographique.             Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.              Il existe une apidoc dédiée à chaque millésime où les paramètres de tri, de sélection de colonnes et de tri spécifique au millésime sont détaillés:              https://data.statistiques.developpement-durable.gouv.fr/dido/api/v1/datafiles/{rid}/millesime={millesime}/apidoc.html

### Example
```R
library(didoscalie)

var.rid <- 'rid_example' # character | Identifiant du fichier de données.
var.geo.field <- 'COMMUNE' # character | Champ pivot pour la génération du geojson ou du shapefile
var.millesime <- 'millesime_example' # character | Millésime du fichier de données (le dernier millésime sera retournée si valeur omise) - format YYYY-MM
var.order.by <- list("inner_example") # array[character] | Options de tri.       Les différents champs doivent être séparés par une virgule. Si il s'agit d'un tri descendant, il faut rajouter - devant.       Par exemple pour un fichier ayant les entêtes colonne1 et colonne2, une valeur pourrait être \"-colonne1,colonne2' pour trier d'abord par entete1 de manière décroissante puis par entete2 de manière croissante
var.columns <- list("inner_example") # array[character] | Les colonnes à récupérer.       Les colonnes à récupérer séparées par une virgule. Par exemple \"colonne,colonne2\" pour récupérer uniquement les colonnes entete1 et entete2.

#Export geojson d'un milléime de fichier de données
api.instance <- DatafilesApi$new()
result <- api.instance$ExportGeojsonMillesimeDatafile(var.rid, var.geo.field, millesime=var.millesime, order.by=var.order.by, columns=var.columns)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **character**| Identifiant du fichier de données. | 
 **geo.field** | **character**| Champ pivot pour la génération du geojson ou du shapefile | 
 **millesime** | **character**| Millésime du fichier de données (le dernier millésime sera retournée si valeur omise) - format YYYY-MM | [optional] 
 **order.by** | list( **character** )| Options de tri.       Les différents champs doivent être séparés par une virgule. Si il s&#39;agit d&#39;un tri descendant, il faut rajouter - devant.       Par exemple pour un fichier ayant les entêtes colonne1 et colonne2, une valeur pourrait être \&quot;-colonne1,colonne2&#39; pour trier d&#39;abord par entete1 de manière décroissante puis par entete2 de manière croissante | [optional] 
 **columns** | list( **character** )| Les colonnes à récupérer.       Les colonnes à récupérer séparées par une virgule. Par exemple \&quot;colonne,colonne2\&quot; pour récupérer uniquement les colonnes entete1 et entete2. | [optional] 

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
| **200** | Réponse avec un export geojson d&#39;éléments |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **ExportJsonMillesimeDatafile**
> character ExportJsonMillesimeDatafile(rid, millesime=var.millesime, order.by=var.order.by, columns=var.columns)

Export json d'un milléime de fichier de données

Permet d'obtenir un export json d'un millésime de fichier de données.              Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.              Il existe une apidoc dédiée à chaque millésime où les paramètres de tri, de sélection de colonnes et de tri spécifique au millésime sont détaillés:              https://data.statistiques.developpement-durable.gouv.fr/dido/api/v1/datafiles/{rid}/millesime={millesime}/apidoc.html

### Example
```R
library(didoscalie)

var.rid <- 'rid_example' # character | Identifiant du fichier de données.
var.millesime <- 'millesime_example' # character | Millésime du fichier de données (le dernier millésime sera retournée si valeur omise) - format YYYY-MM
var.order.by <- list("inner_example") # array[character] | Options de tri.       Les différents champs doivent être séparés par une virgule. Si il s'agit d'un tri descendant, il faut rajouter - devant.       Par exemple pour un fichier ayant les entêtes colonne1 et colonne2, une valeur pourrait être \"-colonne1,colonne2' pour trier d'abord par entete1 de manière décroissante puis par entete2 de manière croissante
var.columns <- list("inner_example") # array[character] | Les colonnes à récupérer.       Les colonnes à récupérer séparées par une virgule. Par exemple \"colonne,colonne2\" pour récupérer uniquement les colonnes entete1 et entete2.

#Export json d'un milléime de fichier de données
api.instance <- DatafilesApi$new()
result <- api.instance$ExportJsonMillesimeDatafile(var.rid, millesime=var.millesime, order.by=var.order.by, columns=var.columns)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **character**| Identifiant du fichier de données. | 
 **millesime** | **character**| Millésime du fichier de données (le dernier millésime sera retournée si valeur omise) - format YYYY-MM | [optional] 
 **order.by** | list( **character** )| Options de tri.       Les différents champs doivent être séparés par une virgule. Si il s&#39;agit d&#39;un tri descendant, il faut rajouter - devant.       Par exemple pour un fichier ayant les entêtes colonne1 et colonne2, une valeur pourrait être \&quot;-colonne1,colonne2&#39; pour trier d&#39;abord par entete1 de manière décroissante puis par entete2 de manière croissante | [optional] 
 **columns** | list( **character** )| Les colonnes à récupérer.       Les colonnes à récupérer séparées par une virgule. Par exemple \&quot;colonne,colonne2\&quot; pour récupérer uniquement les colonnes entete1 et entete2. | [optional] 

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

# **ExportShapefileMillesimeDatafile**
> data.frame ExportShapefileMillesimeDatafile(rid, geo.field, millesime=var.millesime, order.by=var.order.by, columns=var.columns)

Export shapefile d'un milléime de fichier de données

Permet d'obtenir un export shapefile d'un millésime de fichier de données.              Cette route n'existe que pour les fichiers de données qui utilisent un référentiel géographique.             Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.              Il existe une apidoc dédiée à chaque millésime où les paramètres de tri, de sélection de colonnes et de tri spécifique au millésime sont détaillés:              https://data.statistiques.developpement-durable.gouv.fr/dido/api/v1/datafiles/{rid}/millesime={millesime}/apidoc.html

### Example
```R
library(didoscalie)

var.rid <- 'rid_example' # character | Identifiant du fichier de données.
var.geo.field <- 'COMMUNE' # character | Champ pivot pour la génération du geojson ou du shapefile
var.millesime <- 'millesime_example' # character | Millésime du fichier de données (le dernier millésime sera retournée si valeur omise) - format YYYY-MM
var.order.by <- list("inner_example") # array[character] | Options de tri.       Les différents champs doivent être séparés par une virgule. Si il s'agit d'un tri descendant, il faut rajouter - devant.       Par exemple pour un fichier ayant les entêtes colonne1 et colonne2, une valeur pourrait être \"-colonne1,colonne2' pour trier d'abord par entete1 de manière décroissante puis par entete2 de manière croissante
var.columns <- list("inner_example") # array[character] | Les colonnes à récupérer.       Les colonnes à récupérer séparées par une virgule. Par exemple \"colonne,colonne2\" pour récupérer uniquement les colonnes entete1 et entete2.

#Export shapefile d'un milléime de fichier de données
api.instance <- DatafilesApi$new()
result <- api.instance$ExportShapefileMillesimeDatafile(var.rid, var.geo.field, millesime=var.millesime, order.by=var.order.by, columns=var.columns)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **character**| Identifiant du fichier de données. | 
 **geo.field** | **character**| Champ pivot pour la génération du geojson ou du shapefile | 
 **millesime** | **character**| Millésime du fichier de données (le dernier millésime sera retournée si valeur omise) - format YYYY-MM | [optional] 
 **order.by** | list( **character** )| Options de tri.       Les différents champs doivent être séparés par une virgule. Si il s&#39;agit d&#39;un tri descendant, il faut rajouter - devant.       Par exemple pour un fichier ayant les entêtes colonne1 et colonne2, une valeur pourrait être \&quot;-colonne1,colonne2&#39; pour trier d&#39;abord par entete1 de manière décroissante puis par entete2 de manière croissante | [optional] 
 **columns** | list( **character** )| Les colonnes à récupérer.       Les colonnes à récupérer séparées par une virgule. Par exemple \&quot;colonne,colonne2\&quot; pour récupérer uniquement les colonnes entete1 et entete2. | [optional] 

### Return type

**data.frame**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec un export shapefile d&#39;éléments |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **ExportXlsxMillesimeDatafile**
> data.frame ExportXlsxMillesimeDatafile(rid, with.column.name, with.column.description, with.column.unit, millesime=var.millesime, order.by=var.order.by, columns=var.columns)

Export xlsx d'un milléime de fichier de données

Permet d'obtenir un export xlsx d'un millésime de fichier de données.              Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.              Il existe une apidoc dédiée à chaque millésime où les paramètres de tri, de sélection de colonnes et de tri spécifique au millésime sont détaillés:              https://data.statistiques.developpement-durable.gouv.fr/dido/api/v1/datafiles/{rid}/millesime={millesime}/apidoc.html

### Example
```R
library(didoscalie)

var.rid <- 'rid_example' # character | Identifiant du fichier de données.
var.with.column.name <- 'with.column.name_example' # character | faut-il ajouter le nom des colonnes en entête du fichier csv ?
var.with.column.description <- 'with.column.description_example' # character | faut-il ajouter la description des colonnes en entête du fichier csv ?
var.with.column.unit <- 'with.column.unit_example' # character | faut-il ajouter l'unité des colonnes en entête du fichier csv ?
var.millesime <- 'millesime_example' # character | Millésime du fichier de données (le dernier millésime sera retournée si valeur omise) - format YYYY-MM
var.order.by <- list("inner_example") # array[character] | Options de tri.       Les différents champs doivent être séparés par une virgule. Si il s'agit d'un tri descendant, il faut rajouter - devant.       Par exemple pour un fichier ayant les entêtes colonne1 et colonne2, une valeur pourrait être \"-colonne1,colonne2' pour trier d'abord par entete1 de manière décroissante puis par entete2 de manière croissante
var.columns <- list("inner_example") # array[character] | Les colonnes à récupérer.       Les colonnes à récupérer séparées par une virgule. Par exemple \"colonne,colonne2\" pour récupérer uniquement les colonnes entete1 et entete2.

#Export xlsx d'un milléime de fichier de données
api.instance <- DatafilesApi$new()
result <- api.instance$ExportXlsxMillesimeDatafile(var.rid, var.with.column.name, var.with.column.description, var.with.column.unit, millesime=var.millesime, order.by=var.order.by, columns=var.columns)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **character**| Identifiant du fichier de données. | 
 **with.column.name** | **character**| faut-il ajouter le nom des colonnes en entête du fichier csv ? | 
 **with.column.description** | **character**| faut-il ajouter la description des colonnes en entête du fichier csv ? | 
 **with.column.unit** | **character**| faut-il ajouter l&#39;unité des colonnes en entête du fichier csv ? | 
 **millesime** | **character**| Millésime du fichier de données (le dernier millésime sera retournée si valeur omise) - format YYYY-MM | [optional] 
 **order.by** | list( **character** )| Options de tri.       Les différents champs doivent être séparés par une virgule. Si il s&#39;agit d&#39;un tri descendant, il faut rajouter - devant.       Par exemple pour un fichier ayant les entêtes colonne1 et colonne2, une valeur pourrait être \&quot;-colonne1,colonne2&#39; pour trier d&#39;abord par entete1 de manière décroissante puis par entete2 de manière croissante | [optional] 
 **columns** | list( **character** )| Les colonnes à récupérer.       Les colonnes à récupérer séparées par une virgule. Par exemple \&quot;colonne,colonne2\&quot; pour récupérer uniquement les colonnes entete1 et entete2. | [optional] 

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

# **GetMillesimeDatafile**
> MillesimeDatafile GetMillesimeDatafile(rid, millesime=var.millesime)

Détail du millésime d'un fichier de données (identifiée par son rid et son numéro de millésime -le dernier si le millésime n'est pas saisi).

Permet d'obtenir le détail d'un fichier de données qui est identifié par son rid et son numéro de millésime. Si le numéro de millésime n'est pas précisé, le dernier millésime du fichier de données est renvoyé.

### Example
```R
library(didoscalie)

var.rid <- 'rid_example' # character | Identifiant du fichier de données.
var.millesime <- 'millesime_example' # character | Millésime du fichier de données (le dernier millésime sera retournée si valeur omise) - format YYYY-MM

#Détail du millésime d'un fichier de données (identifiée par son rid et son numéro de millésime -le dernier si le millésime n'est pas saisi).
api.instance <- DatafilesApi$new()
result <- api.instance$GetMillesimeDatafile(var.rid, millesime=var.millesime)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **character**| Identifiant du fichier de données. | 
 **millesime** | **character**| Millésime du fichier de données (le dernier millésime sera retournée si valeur omise) - format YYYY-MM | [optional] 

### Return type

[**MillesimeDatafile**](millesimeDatafile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec une le détail d&#39;un millésime de fichier de données |  -  |
| **206** | Réponse avec une le détail d&#39;un millésime de fichier de données qui est encore sous embargo (la date de publication est dans le future) |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **PaginateDatafiles**
> PaginateListDatafiles PaginateDatafiles(page, page.size, order.by=var.order.by, text=var.text)

Pagination des fichiers de données

Permet d'obtenir une liste paginée des fichiers de données présents dans DiDo. Il est possible de spécifier le nombre de jeux de données à retourner, le numéro de la page à retourner et ajouter des critères de tri et de filtrage.

### Example
```R
library(didoscalie)

var.page <- 56 # integer | Numéro de la page à afficher
var.page.size <- 'page.size_example' # character | Nombre de lignes par page
var.order.by <- list("title") # array[character] | Options de tri des fichiers de données
var.text <- 'text_example' # character | Texte à rechercher dans le titre ou la description du fichier de données

#Pagination des fichiers de données
api.instance <- DatafilesApi$new()
result <- api.instance$PaginateDatafiles(var.page, var.page.size, order.by=var.order.by, text=var.text)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**| Numéro de la page à afficher | 
 **page.size** | Enum [all, 10, 20, 50, 100] | Nombre de lignes par page | 
 **order.by** | Enum [title, -title, last_modified, -last_modified] | Options de tri des fichiers de données | [optional] 
 **text** | **character**| Texte à rechercher dans le titre ou la description du fichier de données | [optional] 

### Return type

[**PaginateListDatafiles**](paginateList_datafiles.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec une liste paginée de fichier de données |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **PaginateMillesimeDatafile**
> PaginateListRows PaginateMillesimeDatafile(rid, page, page.size, millesime=var.millesime, order.by=var.order.by, columns=var.columns)

Pagination des données d'un millésime d'un fichier de données

Permet d'obtenir une liste paginée des données d'un millésime de fichier de données.              Il est possible de trier, filtrer et sélectionner les colonnes souhaitées.              Il existe une apidoc dédiée à chaque millésime où les paramètres de tri, de sélection de colonnes et de tri spécifique au millésime sont détaillés:              https://data.statistiques.developpement-durable.gouv.fr/dido/api/v1/datafiles/{rid}/millesime={millesime}/apidoc.html

### Example
```R
library(didoscalie)

var.rid <- 'rid_example' # character | Identifiant du fichier de données.
var.page <- 56 # integer | Numéro de la page à afficher
var.page.size <- 'page.size_example' # character | Nombre de lignes par page
var.millesime <- 'millesime_example' # character | Millésime du fichier de données (le dernier millésime sera retournée si valeur omise) - format YYYY-MM
var.order.by <- list("inner_example") # array[character] | Options de tri.       Les différents champs doivent être séparés par une virgule. Si il s'agit d'un tri descendant, il faut rajouter - devant.       Par exemple pour un fichier ayant les entêtes colonne1 et colonne2, une valeur pourrait être \"-colonne1,colonne2' pour trier d'abord par entete1 de manière décroissante puis par entete2 de manière croissante
var.columns <- list("inner_example") # array[character] | Les colonnes à récupérer.       Les colonnes à récupérer séparées par une virgule. Par exemple \"colonne,colonne2\" pour récupérer uniquement les colonnes entete1 et entete2.

#Pagination des données d'un millésime d'un fichier de données
api.instance <- DatafilesApi$new()
result <- api.instance$PaginateMillesimeDatafile(var.rid, var.page, var.page.size, millesime=var.millesime, order.by=var.order.by, columns=var.columns)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **character**| Identifiant du fichier de données. | 
 **page** | **integer**| Numéro de la page à afficher | 
 **page.size** | Enum [10, 20, 50, 100] | Nombre de lignes par page | 
 **millesime** | **character**| Millésime du fichier de données (le dernier millésime sera retournée si valeur omise) - format YYYY-MM | [optional] 
 **order.by** | list( **character** )| Options de tri.       Les différents champs doivent être séparés par une virgule. Si il s&#39;agit d&#39;un tri descendant, il faut rajouter - devant.       Par exemple pour un fichier ayant les entêtes colonne1 et colonne2, une valeur pourrait être \&quot;-colonne1,colonne2&#39; pour trier d&#39;abord par entete1 de manière décroissante puis par entete2 de manière croissante | [optional] 
 **columns** | list( **character** )| Les colonnes à récupérer.       Les colonnes à récupérer séparées par une virgule. Par exemple \&quot;colonne,colonne2\&quot; pour récupérer uniquement les colonnes entete1 et entete2. | [optional] 

### Return type

[**PaginateListRows**](paginateList_rows.md)

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

