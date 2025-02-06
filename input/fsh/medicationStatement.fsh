Profile: FiBaseMedicationStatement
Parent: MedicationStatement
Id: fi-base-medication-statement
Title: "FI Base MedicationStatement"
Description: "This is the Finnish base profile for the MedicationStatement resource."
* basedOn only Reference(FiBaseMedicationRequest or CarePlan or ServiceRequest)
* partOf only Reference(FiBaseMedicationAdministration or MedicationDispense or FiBaseMedicationStatement or FiBaseProcedure or FiBaseObservation)
* medicationReference only Reference(FiBasePatientMedication)
* subject only Reference(FiBasePatient)
* context only Reference(FiBaseEncounter or FiBaseEpisodeOfCare)
* informationSource only Reference(FiBasePatient or FiBasePractitioner or FiBasePractitionerRole or FiBaseOrganization or RelatedPerson)
* reasonReference only Reference(FiBaseCondition or FiBaseObservation or DiagnosticReport)
