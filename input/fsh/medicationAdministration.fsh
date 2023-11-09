Profile: FiBaseMedicationAdministration
Parent: MedicationAdministration
Id: fi-base-medication-administration
Title: "FI Base MedicationAdministration"
Description: "This is the Finnish base profile for the MedicationAdministration resource."
* partOf only Reference(FiBaseProcedure or FiBaseMedicationAdministration)
* medicationReference only Reference(FiBasePatientMedication)
* subject only Reference(FiBasePatient or Group)
* context only Reference(FiBaseEncounter or FiBaseEpisodeOfCare)
* performer.actor only Reference(FiBasePractitioner or FiBasePractitionerRole or FiBasePatient or RelatedPerson or Device)
* reasonReference only Reference(FiBaseCondition or FiBaseObservation or DiagnosticReport)
* request only Reference(FiBaseMedicationRequest)
* eventHistory only Reference(FiBaseProvenance)