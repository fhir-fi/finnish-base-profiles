Profile: FiBasePatientMedicationStatement
Parent: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medicationstatement
Id: fi-base-patient-medication-statement
Title: "FI Base MedicationStatement"
Description: "This is the Finnish base profile for the MedicationStatement resource for the patient access use case."
* ^status = #draft
* basedOn only Reference(FiBasePatientMedicationRequest or CarePlan or ServiceRequest)
* partOf only Reference(FiBaseMedicationAdministration or MedicationDispense or FiBasePatientMedicationStatement or FiBaseProcedure or FiBaseObservation)
* medicationReference only Reference(FiBasePatientMedication)
* subject only Reference(FiBasePatient) 
* context only Reference(FiBaseEncounter or FiBaseEpisodeOfCare)
* informationSource only Reference(FiBasePatient or FiBasePractitioner or FiBasePractitionerRole or FiBaseOrganization or RelatedPerson)
* reasonReference only Reference(FiBaseCondition or FiBaseObservation or DiagnosticReport)
