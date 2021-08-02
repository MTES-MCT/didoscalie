# R API client for didoscalie

API de diffusion des données de DiDo sur Internet

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project. By using the [OpenAPI spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: 1.0.0
- Package version: 0.1.0.9000
- Build package: org.openapitools.codegen.languages.RClientCodegen
For more information, please visit [https://data.statistiques.developpement-durable.gouv.fr/dido/api/support](https://data.statistiques.developpement-durable.gouv.fr/dido/api/support)

## Installation

### Prerequisites

Install the dependencies

```R
install.packages("jsonlite")
install.packages("httr")
install.packages("base64enc")
```

### Build the package

```sh
git clone https://github.com/MTES-MCT/didoscalie
cd didoscalie
R CMD build .
R CMD check didoscalie_0.1.0.9000.tar.gz --no-manual
R CMD INSTALL didoscalie_0.1.0.9000.tar.gz
```

### Install the package

```R
install.packages("didoscalie")
```

To install directly from Github, use `devtools`:
```R
install.packages("devtools")
library(devtools)
install_github("MTES-MCT/didoscalie")
```

### Usage

```R
library(didoscalie)
```

## Documentation for API Endpoints

All URIs are relative to *https://data.statistiques.developpement-durable.gouv.fr/dido/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DatafilesApi* | [**ExportCsvMillesimeDatafile**](docs/DatafilesApi.md#ExportCsvMillesimeDatafile) | **GET** /v1/datafiles/{rid}/csv | Export csv d'un milléime de fichier de données
*DatafilesApi* | [**ExportGeojsonMillesimeDatafile**](docs/DatafilesApi.md#ExportGeojsonMillesimeDatafile) | **GET** /v1/datafiles/{rid}/spatial/geojson | Export geojson d'un milléime de fichier de données
*DatafilesApi* | [**ExportJsonMillesimeDatafile**](docs/DatafilesApi.md#ExportJsonMillesimeDatafile) | **GET** /v1/datafiles/{rid}/json | Export json d'un milléime de fichier de données
*DatafilesApi* | [**ExportShapefileMillesimeDatafile**](docs/DatafilesApi.md#ExportShapefileMillesimeDatafile) | **GET** /v1/datafiles/{rid}/spatial/shapefile | Export shapefile d'un milléime de fichier de données
*DatafilesApi* | [**ExportXlsxMillesimeDatafile**](docs/DatafilesApi.md#ExportXlsxMillesimeDatafile) | **GET** /v1/datafiles/{rid}/xlsx | Export xlsx d'un milléime de fichier de données
*DatafilesApi* | [**GetMillesimeDatafile**](docs/DatafilesApi.md#GetMillesimeDatafile) | **GET** /v1/datafiles/{rid} | Détail du millésime d'un fichier de données (identifiée par son rid et son numéro de millésime -le dernier si le millésime n'est pas saisi).
*DatafilesApi* | [**PaginateDatafiles**](docs/DatafilesApi.md#PaginateDatafiles) | **GET** /v1/datafiles | Pagination des fichiers de données
*DatafilesApi* | [**PaginateMillesimeDatafile**](docs/DatafilesApi.md#PaginateMillesimeDatafile) | **GET** /v1/datafiles/{rid}/rows | Pagination des données d'un millésime d'un fichier de données
*DatasetsApi* | [**GetIdDataset**](docs/DatasetsApi.md#GetIdDataset) | **GET** /v1/datasets/{id} | Détail d'un jeu de données (identifié par son id)
*DatasetsApi* | [**PaginateDatasets**](docs/DatasetsApi.md#PaginateDatasets) | **GET** /v1/datasets | Pagination des jeux de données
*NomenclaturesApi* | [**ExportCsvNomenclatureBilanEnergie**](docs/NomenclaturesApi.md#ExportCsvNomenclatureBilanEnergie) | **GET** /v1/nomenclatures/bilanEnergie/csv | Export csv \"nomenclature - bilanEnergie\"
*NomenclaturesApi* | [**ExportCsvNomenclatureCslFilieres**](docs/NomenclaturesApi.md#ExportCsvNomenclatureCslFilieres) | **GET** /v1/nomenclatures/cslFilieres/csv | Export csv \"nomenclature - cslFilieres\"
*NomenclaturesApi* | [**ExportCsvNomenclatureCslOperations**](docs/NomenclaturesApi.md#ExportCsvNomenclatureCslOperations) | **GET** /v1/nomenclatures/cslOperations/csv | Export csv \"nomenclature - cslOperations\"
*NomenclaturesApi* | [**ExportJsonNomenclatureBilanEnergie**](docs/NomenclaturesApi.md#ExportJsonNomenclatureBilanEnergie) | **GET** /v1/nomenclatures/bilanEnergie/json | Export json \"nomenclature - bilanEnergie\"
*NomenclaturesApi* | [**ExportJsonNomenclatureCslFilieres**](docs/NomenclaturesApi.md#ExportJsonNomenclatureCslFilieres) | **GET** /v1/nomenclatures/cslFilieres/json | Export json \"nomenclature - cslFilieres\"
*NomenclaturesApi* | [**ExportJsonNomenclatureCslOperations**](docs/NomenclaturesApi.md#ExportJsonNomenclatureCslOperations) | **GET** /v1/nomenclatures/cslOperations/json | Export json \"nomenclature - cslOperations\"
*NomenclaturesApi* | [**ExportXlsxNomenclatureBilanEnergie**](docs/NomenclaturesApi.md#ExportXlsxNomenclatureBilanEnergie) | **GET** /v1/nomenclatures/bilanEnergie/xlsx | Export xlsx \"nomenclature - bilanEnergie\"
*NomenclaturesApi* | [**ExportXlsxNomenclatureCslFilieres**](docs/NomenclaturesApi.md#ExportXlsxNomenclatureCslFilieres) | **GET** /v1/nomenclatures/cslFilieres/xlsx | Export xlsx \"nomenclature - cslFilieres\"
*NomenclaturesApi* | [**ExportXlsxNomenclatureCslOperations**](docs/NomenclaturesApi.md#ExportXlsxNomenclatureCslOperations) | **GET** /v1/nomenclatures/cslOperations/xlsx | Export xlsx \"nomenclature - cslOperations\"
*NomenclaturesApi* | [**GetIdNomenclatureBilanEnergie**](docs/NomenclaturesApi.md#GetIdNomenclatureBilanEnergie) | **GET** /v1/nomenclatures/bilanEnergie/{id} | Détail de l'élément avec l'identifiant :id de \"nomenclature - bilanEnergie\"
*NomenclaturesApi* | [**GetIdNomenclatureCslFilieres**](docs/NomenclaturesApi.md#GetIdNomenclatureCslFilieres) | **GET** /v1/nomenclatures/cslFilieres/{id} | Détail de l'élément avec l'identifiant :id de \"nomenclature - cslFilieres\"
*NomenclaturesApi* | [**GetIdNomenclatureCslOperations**](docs/NomenclaturesApi.md#GetIdNomenclatureCslOperations) | **GET** /v1/nomenclatures/cslOperations/{id} | Détail de l'élément avec l'identifiant :id de \"nomenclature - cslOperations\"
*NomenclaturesApi* | [**PaginateNomenclatureBilanEnergie**](docs/NomenclaturesApi.md#PaginateNomenclatureBilanEnergie) | **GET** /v1/nomenclatures/bilanEnergie | Pagination \"nomenclature - bilanEnergie\"
*NomenclaturesApi* | [**PaginateNomenclatureCslFilieres**](docs/NomenclaturesApi.md#PaginateNomenclatureCslFilieres) | **GET** /v1/nomenclatures/cslFilieres | Pagination \"nomenclature - cslFilieres\"
*NomenclaturesApi* | [**PaginateNomenclatureCslOperations**](docs/NomenclaturesApi.md#PaginateNomenclatureCslOperations) | **GET** /v1/nomenclatures/cslOperations | Pagination \"nomenclature - cslOperations\"
*ReferentielsApi* | [**ExportCsvReferentielCog**](docs/ReferentielsApi.md#ExportCsvReferentielCog) | **GET** /v1/referentiels/cog/csv | Export csv \"referentiel - cog\"
*ReferentielsApi* | [**ExportCsvReferentielGeozones**](docs/ReferentielsApi.md#ExportCsvReferentielGeozones) | **GET** /v1/referentiels/geozones/csv | Export csv \"referentiel - geozones\"
*ReferentielsApi* | [**ExportCsvReferentielPolluantsEau**](docs/ReferentielsApi.md#ExportCsvReferentielPolluantsEau) | **GET** /v1/referentiels/polluantsEau/csv | Export csv \"referentiel - polluantsEau\"
*ReferentielsApi* | [**ExportCsvReferentielPorts**](docs/ReferentielsApi.md#ExportCsvReferentielPorts) | **GET** /v1/referentiels/ports/csv | Export csv \"referentiel - ports\"
*ReferentielsApi* | [**ExportCsvReferentielStationsAir**](docs/ReferentielsApi.md#ExportCsvReferentielStationsAir) | **GET** /v1/referentiels/stationsAir/csv | Export csv \"referentiel - stationsAir\"
*ReferentielsApi* | [**ExportCsvReferentielStationsEsu**](docs/ReferentielsApi.md#ExportCsvReferentielStationsEsu) | **GET** /v1/referentiels/stationsEsu/csv | Export csv \"referentiel - stationsEsu\"
*ReferentielsApi* | [**ExportCsvReferentielTags**](docs/ReferentielsApi.md#ExportCsvReferentielTags) | **GET** /v1/referentiels/tags/csv | Export csv \"referentiel - tags\"
*ReferentielsApi* | [**ExportGeojsonReferentielCog**](docs/ReferentielsApi.md#ExportGeojsonReferentielCog) | **GET** /v1/referentiels/cog/spatial/geojson | Export geojson \"referentiel - cog\"
*ReferentielsApi* | [**ExportGeojsonReferentielStationsAir**](docs/ReferentielsApi.md#ExportGeojsonReferentielStationsAir) | **GET** /v1/referentiels/stationsAir/spatial/geojson | Export geojson \"referentiel - stationsAir\"
*ReferentielsApi* | [**ExportGeojsonReferentielStationsEsu**](docs/ReferentielsApi.md#ExportGeojsonReferentielStationsEsu) | **GET** /v1/referentiels/stationsEsu/spatial/geojson | Export geojson \"referentiel - stationsEsu\"
*ReferentielsApi* | [**ExportJsonReferentielCog**](docs/ReferentielsApi.md#ExportJsonReferentielCog) | **GET** /v1/referentiels/cog/json | Export json \"referentiel - cog\"
*ReferentielsApi* | [**ExportJsonReferentielGeozones**](docs/ReferentielsApi.md#ExportJsonReferentielGeozones) | **GET** /v1/referentiels/geozones/json | Export json \"referentiel - geozones\"
*ReferentielsApi* | [**ExportJsonReferentielPolluantsEau**](docs/ReferentielsApi.md#ExportJsonReferentielPolluantsEau) | **GET** /v1/referentiels/polluantsEau/json | Export json \"referentiel - polluantsEau\"
*ReferentielsApi* | [**ExportJsonReferentielPorts**](docs/ReferentielsApi.md#ExportJsonReferentielPorts) | **GET** /v1/referentiels/ports/json | Export json \"referentiel - ports\"
*ReferentielsApi* | [**ExportJsonReferentielStationsAir**](docs/ReferentielsApi.md#ExportJsonReferentielStationsAir) | **GET** /v1/referentiels/stationsAir/json | Export json \"referentiel - stationsAir\"
*ReferentielsApi* | [**ExportJsonReferentielStationsEsu**](docs/ReferentielsApi.md#ExportJsonReferentielStationsEsu) | **GET** /v1/referentiels/stationsEsu/json | Export json \"referentiel - stationsEsu\"
*ReferentielsApi* | [**ExportJsonReferentielTags**](docs/ReferentielsApi.md#ExportJsonReferentielTags) | **GET** /v1/referentiels/tags/json | Export json \"referentiel - tags\"
*ReferentielsApi* | [**ExportShapefileReferentielCog**](docs/ReferentielsApi.md#ExportShapefileReferentielCog) | **GET** /v1/referentiels/cog/spatial/shapefile | Export shapefile \"referentiel - cog\"
*ReferentielsApi* | [**ExportShapefileReferentielStationsAir**](docs/ReferentielsApi.md#ExportShapefileReferentielStationsAir) | **GET** /v1/referentiels/stationsAir/spatial/shapefile | Export shapefile \"referentiel - stationsAir\"
*ReferentielsApi* | [**ExportShapefileReferentielStationsEsu**](docs/ReferentielsApi.md#ExportShapefileReferentielStationsEsu) | **GET** /v1/referentiels/stationsEsu/spatial/shapefile | Export shapefile \"referentiel - stationsEsu\"
*ReferentielsApi* | [**ExportXlsxReferentielCog**](docs/ReferentielsApi.md#ExportXlsxReferentielCog) | **GET** /v1/referentiels/cog/xlsx | Export xlsx \"referentiel - cog\"
*ReferentielsApi* | [**ExportXlsxReferentielGeozones**](docs/ReferentielsApi.md#ExportXlsxReferentielGeozones) | **GET** /v1/referentiels/geozones/xlsx | Export xlsx \"referentiel - geozones\"
*ReferentielsApi* | [**ExportXlsxReferentielPolluantsEau**](docs/ReferentielsApi.md#ExportXlsxReferentielPolluantsEau) | **GET** /v1/referentiels/polluantsEau/xlsx | Export xlsx \"referentiel - polluantsEau\"
*ReferentielsApi* | [**ExportXlsxReferentielPorts**](docs/ReferentielsApi.md#ExportXlsxReferentielPorts) | **GET** /v1/referentiels/ports/xlsx | Export xlsx \"referentiel - ports\"
*ReferentielsApi* | [**ExportXlsxReferentielStationsAir**](docs/ReferentielsApi.md#ExportXlsxReferentielStationsAir) | **GET** /v1/referentiels/stationsAir/xlsx | Export xlsx \"referentiel - stationsAir\"
*ReferentielsApi* | [**ExportXlsxReferentielStationsEsu**](docs/ReferentielsApi.md#ExportXlsxReferentielStationsEsu) | **GET** /v1/referentiels/stationsEsu/xlsx | Export xlsx \"referentiel - stationsEsu\"
*ReferentielsApi* | [**ExportXlsxReferentielTags**](docs/ReferentielsApi.md#ExportXlsxReferentielTags) | **GET** /v1/referentiels/tags/xlsx | Export xlsx \"referentiel - tags\"
*ReferentielsApi* | [**GetIdReferentielCog**](docs/ReferentielsApi.md#GetIdReferentielCog) | **GET** /v1/referentiels/cog/{id} | Détail de l'élément avec l'identifiant :id de \"referentiel - cog\"
*ReferentielsApi* | [**GetIdReferentielGeozones**](docs/ReferentielsApi.md#GetIdReferentielGeozones) | **GET** /v1/referentiels/geozones/{id} | Détail de l'élément avec l'identifiant :id de \"referentiel - geozones\"
*ReferentielsApi* | [**GetIdReferentielPolluantsEau**](docs/ReferentielsApi.md#GetIdReferentielPolluantsEau) | **GET** /v1/referentiels/polluantsEau/{id} | Détail de l'élément avec l'identifiant :id de \"referentiel - polluantsEau\"
*ReferentielsApi* | [**GetIdReferentielPorts**](docs/ReferentielsApi.md#GetIdReferentielPorts) | **GET** /v1/referentiels/ports/{id} | Détail de l'élément avec l'identifiant :id de \"referentiel - ports\"
*ReferentielsApi* | [**GetIdReferentielStationsAir**](docs/ReferentielsApi.md#GetIdReferentielStationsAir) | **GET** /v1/referentiels/stationsAir/{id} | Détail de l'élément avec l'identifiant :id de \"referentiel - stationsAir\"
*ReferentielsApi* | [**GetIdReferentielStationsEsu**](docs/ReferentielsApi.md#GetIdReferentielStationsEsu) | **GET** /v1/referentiels/stationsEsu/{id} | Détail de l'élément avec l'identifiant :id de \"referentiel - stationsEsu\"
*ReferentielsApi* | [**GetIdReferentielTags**](docs/ReferentielsApi.md#GetIdReferentielTags) | **GET** /v1/referentiels/tags/{id} | Détail de l'élément avec l'identifiant :id de \"referentiel - tags\"
*ReferentielsApi* | [**PaginateReferentielCog**](docs/ReferentielsApi.md#PaginateReferentielCog) | **GET** /v1/referentiels/cog | Pagination \"referentiel - cog\"
*ReferentielsApi* | [**PaginateReferentielGeozones**](docs/ReferentielsApi.md#PaginateReferentielGeozones) | **GET** /v1/referentiels/geozones | Pagination \"referentiel - geozones\"
*ReferentielsApi* | [**PaginateReferentielPolluantsEau**](docs/ReferentielsApi.md#PaginateReferentielPolluantsEau) | **GET** /v1/referentiels/polluantsEau | Pagination \"referentiel - polluantsEau\"
*ReferentielsApi* | [**PaginateReferentielPorts**](docs/ReferentielsApi.md#PaginateReferentielPorts) | **GET** /v1/referentiels/ports | Pagination \"referentiel - ports\"
*ReferentielsApi* | [**PaginateReferentielStationsAir**](docs/ReferentielsApi.md#PaginateReferentielStationsAir) | **GET** /v1/referentiels/stationsAir | Pagination \"referentiel - stationsAir\"
*ReferentielsApi* | [**PaginateReferentielStationsEsu**](docs/ReferentielsApi.md#PaginateReferentielStationsEsu) | **GET** /v1/referentiels/stationsEsu | Pagination \"referentiel - stationsEsu\"
*ReferentielsApi* | [**PaginateReferentielTags**](docs/ReferentielsApi.md#PaginateReferentielTags) | **GET** /v1/referentiels/tags | Pagination \"referentiel - tags\"


## Documentation for Models

 - [Attachment](docs/Attachment.md)
 - [BasePaginationObject](docs/BasePaginationObject.md)
 - [DatafileFull](docs/DatafileFull.md)
 - [DatafileFullAllOf](docs/DatafileFullAllOf.md)
 - [DatafileSimple](docs/DatafileSimple.md)
 - [DatafileSimpleColumns](docs/DatafileSimpleColumns.md)
 - [DatafileSimpleExtendedFilters](docs/DatafileSimpleExtendedFilters.md)
 - [DatafileSimpleMillesimes](docs/DatafileSimpleMillesimes.md)
 - [DatafileSimpleTemporalCoverage](docs/DatafileSimpleTemporalCoverage.md)
 - [DatasetFull](docs/DatasetFull.md)
 - [DatasetFullAllOf](docs/DatasetFullAllOf.md)
 - [DatasetSimple](docs/DatasetSimple.md)
 - [DatasetSimpleOrganization](docs/DatasetSimpleOrganization.md)
 - [DatasetSimpleSpatial](docs/DatasetSimpleSpatial.md)
 - [DatasetSimpleTemporalCoverage](docs/DatasetSimpleTemporalCoverage.md)
 - [ItemBilanEnergie](docs/ItemBilanEnergie.md)
 - [ItemCog](docs/ItemCog.md)
 - [ItemCslFilieres](docs/ItemCslFilieres.md)
 - [ItemCslOperations](docs/ItemCslOperations.md)
 - [ItemGeozones](docs/ItemGeozones.md)
 - [ItemPolluantsEau](docs/ItemPolluantsEau.md)
 - [ItemPorts](docs/ItemPorts.md)
 - [ItemStationsAir](docs/ItemStationsAir.md)
 - [ItemStationsEsu](docs/ItemStationsEsu.md)
 - [ItemTags](docs/ItemTags.md)
 - [MillesimeDatafile](docs/MillesimeDatafile.md)
 - [MillesimeDatafileAllOf](docs/MillesimeDatafileAllOf.md)
 - [MillesimeDatafileNoData](docs/MillesimeDatafileNoData.md)
 - [NotFoundError](docs/NotFoundError.md)
 - [PaginateListBilanEnergie](docs/PaginateListBilanEnergie.md)
 - [PaginateListBilanEnergieAllOf](docs/PaginateListBilanEnergieAllOf.md)
 - [PaginateListCog](docs/PaginateListCog.md)
 - [PaginateListCogAllOf](docs/PaginateListCogAllOf.md)
 - [PaginateListCslFilieres](docs/PaginateListCslFilieres.md)
 - [PaginateListCslFilieresAllOf](docs/PaginateListCslFilieresAllOf.md)
 - [PaginateListCslOperations](docs/PaginateListCslOperations.md)
 - [PaginateListCslOperationsAllOf](docs/PaginateListCslOperationsAllOf.md)
 - [PaginateListDatafiles](docs/PaginateListDatafiles.md)
 - [PaginateListDatafilesAllOf](docs/PaginateListDatafilesAllOf.md)
 - [PaginateListDatasets](docs/PaginateListDatasets.md)
 - [PaginateListDatasetsAllOf](docs/PaginateListDatasetsAllOf.md)
 - [PaginateListGeozones](docs/PaginateListGeozones.md)
 - [PaginateListGeozonesAllOf](docs/PaginateListGeozonesAllOf.md)
 - [PaginateListPolluantsEau](docs/PaginateListPolluantsEau.md)
 - [PaginateListPolluantsEauAllOf](docs/PaginateListPolluantsEauAllOf.md)
 - [PaginateListPorts](docs/PaginateListPorts.md)
 - [PaginateListPortsAllOf](docs/PaginateListPortsAllOf.md)
 - [PaginateListRows](docs/PaginateListRows.md)
 - [PaginateListRowsAllOf](docs/PaginateListRowsAllOf.md)
 - [PaginateListStationsAir](docs/PaginateListStationsAir.md)
 - [PaginateListStationsAirAllOf](docs/PaginateListStationsAirAllOf.md)
 - [PaginateListStationsEsu](docs/PaginateListStationsEsu.md)
 - [PaginateListStationsEsuAllOf](docs/PaginateListStationsEsuAllOf.md)
 - [PaginateListTags](docs/PaginateListTags.md)
 - [PaginateListTagsAllOf](docs/PaginateListTagsAllOf.md)
 - [ServerError](docs/ServerError.md)
 - [ValidationError](docs/ValidationError.md)


## Documentation for Authorization

 All endpoints do not require authorization.



## Author

support-dido@developpement-durable.gouv.fr

