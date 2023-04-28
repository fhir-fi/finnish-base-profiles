Profile: FiBaseProvenance
Parent: Provenance
Id: fi-base-provenance
Title: "FI Base Provenance"
Description: "This is the Finnish base profile for the Provenance resource."
* ^status = #draft

* location only Reference(FiBaseLocation)
* agent.who only Reference(FiBasePractitioner or FiBasePractitionerRole or FiBasePatient or RelatedPerson or Device or FiBaseOrganization)
* agent.onBehalfOf only Reference(FiBasePractitioner or FiBasePractitionerRole or FiBasePatient or RelatedPerson or Device or FiBaseOrganization)

* extension contains RegisterTypeCode named registerTypeCode 0..1
* extension contains RegisterSpecifier named registerSpecifier 0..1

Extension: RegisterTypeCode
Id: register-type-code
Title: "RegisterTypeCode"
Description: "Extension RegisterTypeCode. (Required for Kanta Medical Records queries) TODO what is the system?"
* value[x] only Coding

Extension: RegisterSpecifier
Id: register-specifier
Title: "RegisterSpecifier"
Description: "Extension Register Specifier (Rekisterin tarkenne in finnish) (Required for Kanta Medical Records queries)."
* value[x] only string
