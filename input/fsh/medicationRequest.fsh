Profile: FiBaseMedicationRequest
Parent: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medicationrequest
Id: fi-base-medication-request
Title: "FI Base MedicationRequest"
Description: "This is the Finnish base profile for the MedicationRequest resource."
* ^status = #draft
* reportedReference only Reference(FiBasePatient or FiBasePractitioner or FiBasePractitionerRole)
* medicationReference only Reference(FiBaseMedication or FiBasePatientMedication)
* subject only Reference(FiBasePatient)
* encounter only Reference(FiBaseEncounter)
* requester only Reference(FiBasePractitioner or FiBasePractitionerRole or FiBasePatient)
* performer only Reference(FiBasePractitioner or FiBasePractitionerRole or FiBasePatient or FiBaseOrganization or Device or RelatedPerson or CareTeam)
* recorder only Reference(FiBasePractitioner or FiBasePractitionerRole)
* reasonReference only Reference(FiBaseCondition or FiBaseObservation)
* eventHistory only Reference(FiBaseProvenance)
* priorPrescription only Reference(FiBaseMedicationRequest)
* dispenseRequest.performer only Reference(FiBaseOrganization)
* basedOn only Reference(CarePlan or FiBaseMedicationRequest or ServiceRequest or ImmunizationRecommendation)	