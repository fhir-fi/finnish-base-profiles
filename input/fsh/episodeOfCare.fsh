Profile: FiBaseEpisodeOfCare
Parent: EpisodeOfCare
Id: fi-base-episode-of-care
Title: "FI Base EpisodeOfCare"
Description: "This is the Finnish base profile for the EpisodeOfCare resource."
* ^status = #draft
* diagnosis.condition only Reference(FiBaseCondition)
* patient only Reference(FiBasePatient)
* managingOrganization only Reference(FiBaseOrganization)
* careManager only Reference(FiBasePractitioner or FiBasePractitionerRole)
