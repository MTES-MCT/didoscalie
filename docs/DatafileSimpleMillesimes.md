# didoscalie::DatafileSimpleMillesimes

Schéma json des informations sur un millésime

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**millesime** | **character** | Le millésime du fichier de données - format YYYY-MM | 
**date_diffusion** | **character** | Date de diffusion du millesime du fichier de données - format iso 8601 | 
**rows** | **integer** | Nombre de lignes dans le fichier de données | [optional] 
**columns** | [**array[DatafileSimpleColumns]**](datafileSimple_columns.md) | Liste des colonnes du fichier de données | [optional] 
**extendedFilters** | [**array[DatafileSimpleExtendedFilters]**](datafileSimple_extendedFilters.md) | Liste des filtres étendus du fichier de données | [optional] 
**geoFields** | **array[character]** | Liste des champs disposant d&#39;une géométrie dans le fichier de données | [optional] 


