Profile: FiBaseProcedure
Parent: Procedure
Id: fi-base-procedure
Title: "Fi Base Procedure"
Description: "The Base profile for Finnish Procedure resource."
* partOf only Reference(FiBaseProcedure or FiBaseObservation or FiBaseMedicationAdministration)
* subject only Reference(FiBasePatient or Group)
* encounter only Reference(FiBaseEncounter)
* recorder only Reference(FiBasePatient or RelatedPerson or FiBasePractitioner or FiBasePractitionerRole)
* asserter only Reference(FiBasePatient or RelatedPerson or FiBasePractitioner or FiBasePractitionerRole)
* performer.actor only Reference(FiBasePractitioner or FiBasePractitionerRole or FiBaseOrganization or FiBasePatient or RelatedPerson or Device)
* performer.onBehalfOf only Reference(FiBaseOrganization)
* location only Reference(FiBaseLocation)
* reasonReference only Reference(FiBaseCondition or FiBaseObservation or FiBaseProcedure or DiagnosticReport or DocumentReference)
* complicationDetail only Reference(FiBaseCondition)
* usedReference only Reference(Device or FiBaseMedication or Substance)