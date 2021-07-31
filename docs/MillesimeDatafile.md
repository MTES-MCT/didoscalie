# didoscalie::MillesimeDatafile

Schéma json d'un millésime de fichier de données

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rid** | **character** | Identifiant du fichier de données | 
**millesime** | **character** | Le millésime du fichier descriptif - format YYYY-MM | 
**title** | **character** | Titre du fichier de données | 
**description** | **character** | Description du fichier de données | 
**published** | **character** | Date de publication du fichier de données - format iso 8601 | 
**temporal_coverage** | [**DatafileSimpleTemporalCoverage**](datafileSimple_temporal_coverage.md) |  | [optional] 
**legal_notice** | **character** | Notice légale concernant le fichier de données | [optional] 
**weburl** | **character** | Url pour accéder à l&#39;interface de visualisation du fichier de données | 
**created_at** | **character** | date de création du fichier de données - format iso 8601 | 
**last_modified** | **character** | Date de dernière modification du fichier de données - format iso 8601 | [optional] 
**date_diffusion** | **character** | Date de diffusion du millesime du fichier de données - format iso 8601 | 
**dataset** | [**DatasetSimple**](datasetSimple.md) |  | 
**previous_millesime_href** | **character** | Lien api du précédent millésime de ce fichier de données (peut être égale à null) | 
**next_millesime_href** | **character** | Lien api du millésime suivant de ce fichier de données (peut être égale à null) | 
**rows** | **integer** | Nombre de lignes dans le fichier de données | 
**columns** | [**array[DatafileSimpleColumns]**](datafileSimple_columns.md) | Liste des colonnes du fichier de données | 
**extendedFilters** | [**array[DatafileSimpleExtendedFilters]**](datafileSimple_extendedFilters.md) | Liste des filtres étendus du fichier de données | 
**geoFields** | **array[character]** | Liste des champs disposant d&#39;une géométrie dans le fichier de données | 


