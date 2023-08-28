Profile: FiBaseProvenance
Parent: Provenance
Id: fi-base-provenance
Title: "FI Base Provenance"
Description: "This is the Finnish base profile for the Provenance resource."
* location only Reference(FiBaseLocation)
* agent.who only Reference(FiBasePractitioner or FiBasePractitionerRole or FiBasePatient or RelatedPerson or Device or FiBaseOrganization)
* agent.onBehalfOf only Reference(FiBasePractitioner or FiBasePractitionerRole or FiBasePatient or RelatedPerson or Device or FiBaseOrganization)
