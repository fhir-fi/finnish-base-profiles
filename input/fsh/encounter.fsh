Profile: FiBaseEncounter
Parent: Encounter
Id: fi-base-encounter
Title: "FI Base Encounter"
Description: "This is the Finnish base profile for the Encounter resource."
* ^status = #draft
* subject only Reference(FiBasePatient or Group)
* episodeOfCare only Reference(FiBaseEpisodeOfCare)
* participant.individual only Reference(FiBasePractitioner or FiBasePractitionerRole or RelatedPerson)
* appointment only Reference(FiBaseAppointment)
* reasonReference only Reference(FiBaseCondition or FiBaseProcedure or FiBaseObservation or ImmunizationRecommendation)
* diagnosis.condition only Reference(FiBaseCondition or FiBaseProcedure)
* hospitalization.origin only Reference(FiBaseLocation or FiBaseOrganization)
* hospitalization.destination only Reference(FiBaseLocation or FiBaseOrganization)
* location.location only Reference(FiBaseLocation)
* serviceProvider only Reference(FiBaseOrganization)
* partOf only Reference(FiBaseEncounter)