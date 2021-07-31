# didoscalie::DatafileSimple

Schéma json d'un fichier de données simple (sans son jeu de données parent)

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rid** | **character** | Identifiant du fichier de données | 
**title** | **character** | Titre du fichier de données | 
**description** | **character** | Description du fichier de données | 
**published** | **character** | Date de publication du fichier de données - format iso 8601 | 
**temporal_coverage** | [**DatafileSimpleTemporalCoverage**](datafileSimple_temporal_coverage.md) |  | [optional] 
**legal_notice** | **character** | Notice légale concernant le fichier de données | [optional] 
**weburl** | **character** | Url pour accéder à l&#39;interface de visualisation du fichier de données | 
**millesimes** | [**array[DatafileSimpleMillesimes]**](datafileSimple_millesimes.md) | Informations sur les millésimes du fichier de données | 
**created_at** | **character** | date de création du fichier de données - format iso 8601 | 
**last_modified** | **character** | Date de dernière modification du fichier de données - format iso 8601 | [optional] 


