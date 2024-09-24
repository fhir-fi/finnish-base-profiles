Profile: FiBaseAppointment
Parent: Appointment
Id: fi-base-appointment
Title: "FI Base Appointment"
Description: "This is the Finnish base profile for the Appointment resource."
* extension contains RestrictionParent named restrictionParent 0..1
* extension contains ReleaseDateForPatientViewing named releaseDateForPatientViewing 0..1
* reasonReference only Reference(FiBaseCondition or FiBaseProcedure or FiBaseObservation or ImmunizationRecommendation)
* participant.actor only Reference(FiBasePatient or FiBasePractitioner or FiBasePractitionerRole or RelatedPerson or Device or HealthcareService or FiBaseLocation)
* slot only Reference(FiBaseSlot)