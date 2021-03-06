# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test DatasetSimpleSpatial")

model.instance <- DatasetSimpleSpatial$new()

test_that("granularity", {
  # tests for the property `granularity` (character)
  # Granularité du jeu de données (liste limitée aux valeurs suivantes: country, fr:region, fr:epci, fr:departement, fr:collectivite, fr:commune, fr:arrondissement, fr:canton, fr:iris, poi, other)

  # uncomment below to test the property 
  #expect_equal(model.instance$`granularity`, "EXPECTED_RESULT")
})

test_that("zones", {
  # tests for the property `zones` (array[character])
  # Liste de zones géographiques du jeu de données (correspond à un identifiant du référentiel geozone)

  # uncomment below to test the property 
  #expect_equal(model.instance$`zones`, "EXPECTED_RESULT")
})

