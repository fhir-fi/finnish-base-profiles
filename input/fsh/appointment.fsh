Profile: FiBaseAppointment
Parent: Appointment
Id: fi-base-appointment
Title: "FI Base Appointment"
Description: "This is the Finnish base profile for the Appointment resource."
* ^status = #draft
* reasonReference only Reference(FiBaseCondition or FiBaseProcedure or FiBaseObservation or ImmunizationRecommendation)
* participant.actor only Reference(FiBasePatient or FiBasePractitioner or FiBasePractitionerRole or RelatedPerson or Device or HealthcareService or FiBaseLocation)
