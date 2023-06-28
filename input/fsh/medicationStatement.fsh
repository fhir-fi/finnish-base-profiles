Profile: FiBaseMedicationStatement
Parent: MedicationStatement
Id: fi-base-medication-statement
Title: "FI Base MedicationStatement"
Description: "This is the Finnish base profile for the MedicationStatement resource, for other than patient access use cases."
* ^status = #draft
* basedOn only Reference(FiBaseMedicationRequest or FiBasePatientMedicationRequest or CarePlan or ServiceRequest)
* partOf only Reference(FiBaseMedicationAdministration or MedicationDispense or FiBaseMedicationStatement or FiBasePatientMedicationStatement or FiBaseProcedure or FiBaseObservation)
* medicationReference only Reference(FiBaseMedication or FiBasePatientMedication)
* subject only Reference(FiBasePatient) 
* context only Reference(FiBaseEncounter or FiBaseEpisodeOfCare)
* informationSource only Reference(FiBasePatient or FiBasePractitioner or FiBasePractitionerRole or FiBaseOrganization or RelatedPerson)
* reasonReference only Reference(FiBaseCondition or FiBaseObservation or DiagnosticReport)
