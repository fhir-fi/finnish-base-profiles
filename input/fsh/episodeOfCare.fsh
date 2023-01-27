Profile: FiBaseEpisodeOfCare
Parent: EpisodeOfCare
Id: fi-base-episode-of-care
Title: "FI Base EpisodeOfCare"
Description: "This is the Finnish base profile for the EpisodeOfCare resource."

* extension contains Custodian named custodian 0..1
* extension contains RegisterTypeCode named registerTypeCode 0..1
* extension contains RegisterSpecifier named registerSpecifier 0..1

Extension: Custodian
Id: custodian
Title: "Custodian"
Description: "Extension for custodian information (rekisterinpitäjä). (Required for Kanta Medical Records queries)"
* value[x] only Coding
* valueCoding 1..1
  * system = #urn:oid:1.2.246.537.6.40174.2008

Extension: RegisterTypeCode
Id: register-type-code
Title: "RegisterTypeCode"
Description: "Extension RegisterTypeCode. (Required for Kanta Medical Records queries) TODO what is the system for social care ? - 1.2.246.537.6.1264.201701?"
* value[x] only Coding
* valueCoding 1..1
  * system = #urn:oid:1.2.246.537.5.40150.2009

Extension: RegisterSpecifier
Id: register-specifier
Title: "RegisterSpecifier"
Description: "Extension Rekisterin tarkenne (Required for Kanta Medical Records queries)."
* value[x] only string
