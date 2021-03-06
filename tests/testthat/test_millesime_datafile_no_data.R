# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test MillesimeDatafileNoData")

model.instance <- MillesimeDatafileNoData$new()

test_that("rid", {
  # tests for the property `rid` (character)
  # Identifiant du fichier de données

  # uncomment below to test the property 
  #expect_equal(model.instance$`rid`, "EXPECTED_RESULT")
})

test_that("millesime", {
  # tests for the property `millesime` (character)
  # Le millésime du fichier descriptif - format YYYY-MM

  # uncomment below to test the property 
  #expect_equal(model.instance$`millesime`, "EXPECTED_RESULT")
})

test_that("title", {
  # tests for the property `title` (character)
  # Titre du fichier de données

  # uncomment below to test the property 
  #expect_equal(model.instance$`title`, "EXPECTED_RESULT")
})

test_that("description", {
  # tests for the property `description` (character)
  # Description du fichier de données

  # uncomment below to test the property 
  #expect_equal(model.instance$`description`, "EXPECTED_RESULT")
})

test_that("published", {
  # tests for the property `published` (character)
  # Date de publication du fichier de données - format iso 8601

  # uncomment below to test the property 
  #expect_equal(model.instance$`published`, "EXPECTED_RESULT")
})

test_that("temporal_coverage", {
  # tests for the property `temporal_coverage` (DatafileSimpleTemporalCoverage)

  # uncomment below to test the property 
  #expect_equal(model.instance$`temporal_coverage`, "EXPECTED_RESULT")
})

test_that("legal_notice", {
  # tests for the property `legal_notice` (character)
  # Notice légale concernant le fichier de données

  # uncomment below to test the property 
  #expect_equal(model.instance$`legal_notice`, "EXPECTED_RESULT")
})

test_that("weburl", {
  # tests for the property `weburl` (character)
  # Url pour accéder à l&#39;interface de visualisation du fichier de données

  # uncomment below to test the property 
  #expect_equal(model.instance$`weburl`, "EXPECTED_RESULT")
})

test_that("created_at", {
  # tests for the property `created_at` (character)
  # date de création du fichier de données - format iso 8601

  # uncomment below to test the property 
  #expect_equal(model.instance$`created_at`, "EXPECTED_RESULT")
})

test_that("last_modified", {
  # tests for the property `last_modified` (character)
  # Date de dernière modification du fichier de données - format iso 8601

  # uncomment below to test the property 
  #expect_equal(model.instance$`last_modified`, "EXPECTED_RESULT")
})

test_that("date_diffusion", {
  # tests for the property `date_diffusion` (character)
  # Date de diffusion du millesime du fichier de données - format iso 8601

  # uncomment below to test the property 
  #expect_equal(model.instance$`date_diffusion`, "EXPECTED_RESULT")
})

test_that("dataset", {
  # tests for the property `dataset` (DatasetSimple)

  # uncomment below to test the property 
  #expect_equal(model.instance$`dataset`, "EXPECTED_RESULT")
})

test_that("previous_millesime_href", {
  # tests for the property `previous_millesime_href` (character)
  # Lien api du précédent millésime de ce fichier de données (peut être égale à null)

  # uncomment below to test the property 
  #expect_equal(model.instance$`previous_millesime_href`, "EXPECTED_RESULT")
})

test_that("next_millesime_href", {
  # tests for the property `next_millesime_href` (character)
  # Lien api du millésime suivant de ce fichier de données (peut être égale à null)

  # uncomment below to test the property 
  #expect_equal(model.instance$`next_millesime_href`, "EXPECTED_RESULT")
})

