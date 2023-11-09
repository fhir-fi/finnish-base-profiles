Profile: FiBaseMedicationRequest
Parent: MedicationRequest
Id: fi-base-medication-request
Title: "FI Base MedicationRequest"
Description: "This is the Finnish base profile for the MedicationRequest resource, for other than patient access use cases."
* reportedReference only Reference(FiBasePatient or FiBasePractitioner or FiBasePractitionerRole)
* medicationReference only Reference(FiBaseMedication or FiBasePatientMedication)
* subject only Reference(FiBasePatient)
* encounter only Reference(FiBaseEncounter)
* requester only Reference(FiBasePractitioner or FiBasePractitionerRole or FiBasePatient)
* performer only Reference(FiBasePractitioner or FiBasePractitionerRole or FiBasePatient or FiBaseOrganization or Device or RelatedPerson or CareTeam)
* recorder only Reference(FiBasePractitioner or FiBasePractitionerRole)
* reasonReference only Reference(FiBaseCondition or FiBaseObservation)
* eventHistory only Reference(FiBaseProvenance)
* priorPrescription only Reference(FiBaseMedicationRequest or FiBasePatientMedicationRequest)
* dispenseRequest.performer only Reference(FiBaseOrganization)
* basedOn only Reference(CarePlan or FiBaseMedicationRequest or FiBasePatientMedicationRequest or ServiceRequest or ImmunizationRecommendation)	