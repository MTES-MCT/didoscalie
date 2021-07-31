# didoscalie::DatasetFull

Schéma json d'un jeu de données avec l'ensemble des attributs (y compris ses fichiers de données)

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Identifiant du jeu de données | 
**title** | **character** | Titre du jeu de données | 
**description** | **character** | Description du jeu de données | 
**organization** | [**DatasetSimpleOrganization**](datasetSimple_organization.md) |  | 
**topic** | **character** | Thème du jeu de données (liste limitée aux valeurs suivantes: Environnement, Énergie, Transports, Logement, Changement climatique ) | 
**tags** | **array[character]** | Liste des mot-clés du jeu de données (liste limitée aux valeurs du referentiel des tags) | 
**license** | **character** | Licence sous laquelle est publiée le jeu de données (liste limitée) | 
**frequency** | **character** | Fréquence d&#39;actualisation du jeu de données (liste limitée aux valeurs suivantes: daily, weekly, monthly, quarterly, semiannual, annual, punctual, irregular, unknown) | 
**frequency_date** | **character** | Prochaine date d&#39;actualisation du jeu de données (obligatoire dés que frequency n&#39;est pas égal à unknown) - format iso 8601 | [optional] 
**spatial** | [**DatasetSimpleSpatial**](datasetSimple_spatial.md) |  | [optional] 
**temporal_coverage** | [**DatasetSimpleTemporalCoverage**](datasetSimple_temporal_coverage.md) |  | [optional] 
**caution** | **character** | Mise en garde concernant le jeu de données | [optional] 
**attachments** | [**array[Attachment]**](attachment.md) | La liste des fichiers descriptifs | 
**created_at** | **character** | date de création du jeu de données - format iso 8601 | 
**last_modified** | **character** | Date de dernière modification du jeu de données - format iso 8601 | [optional] 
**datafiles** | [**array[DatafileSimple]**](datafileSimple.md) | Liste des fichiers de données | 


