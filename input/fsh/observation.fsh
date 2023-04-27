Profile: FiBaseObservation
Parent: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-observation
Id: fi-base-observation
Title: "FI Base Observation"
Description: "This is the Finnish base profile for the Observation resource."
* ^status = #draft
* basedOn only Reference(CarePlan or DeviceRequest or ImmunizationRecommendation or FiBaseMedicationRequest or NutritionOrder or ServiceRequest)
* partOf only Reference(FiBaseMedicationAdministration or MedicationDispense or FiBaseMedicationStatement or FiBaseProcedure or FiBaseImmunization or ImagingStudy)
* subject only Reference(FiBasePatient)
* encounter only Reference(FiBaseEncounter)
* performer only Reference(FiBasePractitioner or FiBasePractitionerRole or FiBaseOrganization or CareTeam or FiBasePatient or RelatedPerson)
* hasMember only Reference(FiBaseObservation or QuestionnaireResponse or MolecularSequence)
* derivedFrom only 	Reference(DocumentReference or ImagingStudy or Media or QuestionnaireResponse or FiBaseObservation or MolecularSequence)