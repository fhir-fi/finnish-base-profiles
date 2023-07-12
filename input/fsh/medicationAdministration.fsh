Profile: FiBaseMedicationAdministration
Parent: MedicationAdministration
Id: fi-base-medication-administration
Title: "FI Base MedicationAdministration"
Description: "This is the Finnish base profile for the MedicationAdministration resource."
* ^status = #draft
* partOf only Reference(FiBaseProcedure or FiBaseMedicationAdministration)
* medicationReference only Reference(FiBaseMedication or FiBasePatientMedication)
* subject only Reference(FiBasePatient or Group)
* context only Reference(FiBaseEncounter or FiBaseEpisodeOfCare)
* performer.actor only Reference(FiBasePractitioner or FiBasePractitionerRole or FiBasePatient or RelatedPerson or Device)
* reasonReference only Reference(FiBaseCondition or FiBaseObservation or DiagnosticReport)
* request only Reference(FiBaseMedicationRequest or FiBasePatientMedicationRequest)
* eventHistory only Reference(FiBaseProvenance)