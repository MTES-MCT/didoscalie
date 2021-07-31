# DatasetsApi

All URIs are relative to *https://data.statistiques.developpement-durable.gouv.fr/dido/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetIdDataset**](DatasetsApi.md#GetIdDataset) | **GET** /v1/datasets/{id} | Détail d&#39;un jeu de données (identifié par son id)
[**PaginateDatasets**](DatasetsApi.md#PaginateDatasets) | **GET** /v1/datasets | Pagination des jeux de données


# **GetIdDataset**
> DatasetFull GetIdDataset(id)

Détail d'un jeu de données (identifié par son id)

Permet d'obtenir le détail d'un jeu de données qui est identifié par son id.

### Example
```R
library(didoscalie)

var.id <- 'id_example' # character | Identifiant du jeu de données.

#Détail d'un jeu de données (identifié par son id)
api.instance <- DatasetsApi$new()
result <- api.instance$GetIdDataset(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| Identifiant du jeu de données. | 

### Return type

[**DatasetFull**](datasetFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec une le détail d&#39;un jeu de données |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **404** | Réponse si élément non trouvé |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

# **PaginateDatasets**
> PaginateListDatasets PaginateDatasets(page, page.size, order.by=var.order.by, text=var.text, topics=var.topics, tags=var.tags, licenses=var.licenses, organizations=var.organizations, min.last.modified=var.min.last.modified, max.last.modified=var.max.last.modified)

Pagination des jeux de données

Permet d'obtenir une liste paginée des jeux de données présents dans DiDo. Il est possible de spécifier le nombre de jeux de données à retourner, le numéro de la page à retourner et ajouter des critères de tri et de filtrage.

### Example
```R
library(didoscalie)

var.page <- 56 # integer | Numéro de la page à afficher
var.page.size <- 'page.size_example' # character | Nombre de lignes par page
var.order.by <- list("title") # array[character] | Options de tri des jeux de données
var.text <- 'text_example' # character | Texte à rechercher dans le titre ou la description du jeu de données
var.topics <- list("Environnement") # array[character] | Permet de filtrer les jeux de données par thème. Le thèmes doivent être séparés par des virgules.
var.tags <- list("inner_example") # array[character] | Permet de filtrer les jeux de données par mot-clé. Le mots-clé doivent être séparés par des virgules.
var.licenses <- list("inner_example") # array[character] | Permet de filtrer les jeux de données par licence. Les licences doivent être séparées par des virgules.
var.organizations <- list("inner_example") # array[character] | Permet de filtrer les jeux de données par producteur. Les identifiants de chaque producteur doivent être séparés par des virgules.
var.min.last.modified <- 'min.last.modified_example' # character | Date de mise-à-jour minimale pour filtrer les jeux de données (format iso 8601).
var.max.last.modified <- 'max.last.modified_example' # character | Date de mise-à-jour maximale pour filtrer les jeux de données (format iso 8601).

#Pagination des jeux de données
api.instance <- DatasetsApi$new()
result <- api.instance$PaginateDatasets(var.page, var.page.size, order.by=var.order.by, text=var.text, topics=var.topics, tags=var.tags, licenses=var.licenses, organizations=var.organizations, min.last.modified=var.min.last.modified, max.last.modified=var.max.last.modified)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**| Numéro de la page à afficher | 
 **page.size** | Enum [all, 10, 20, 50, 100] | Nombre de lignes par page | 
 **order.by** | Enum [title, last_modified, -title, -last_modified] | Options de tri des jeux de données | [optional] 
 **text** | **character**| Texte à rechercher dans le titre ou la description du jeu de données | [optional] 
 **topics** | Enum [Environnement, Énergie, Transports, Logement, Changement climatique] | Permet de filtrer les jeux de données par thème. Le thèmes doivent être séparés par des virgules. | [optional] 
 **tags** | list( **character** )| Permet de filtrer les jeux de données par mot-clé. Le mots-clé doivent être séparés par des virgules. | [optional] 
 **licenses** | list( **character** )| Permet de filtrer les jeux de données par licence. Les licences doivent être séparées par des virgules. | [optional] 
 **organizations** | list( **character** )| Permet de filtrer les jeux de données par producteur. Les identifiants de chaque producteur doivent être séparés par des virgules. | [optional] 
 **min.last.modified** | **character**| Date de mise-à-jour minimale pour filtrer les jeux de données (format iso 8601). | [optional] 
 **max.last.modified** | **character**| Date de mise-à-jour maximale pour filtrer les jeux de données (format iso 8601). | [optional] 

### Return type

[**PaginateListDatasets**](paginateList_datasets.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Réponse avec une liste paginée de jeux de données |  -  |
| **400** | Réponse dans le cas d&#39;une erreur de validation |  -  |
| **500** | Réponse si erreur interne au serveur |  -  |

