Profile: FiBaseImmunization
Parent: IPAImmunization
Id: fi-base-immunization
Title: "Fi Base Immunization"
Description: "This profile describes the base information regarding immunization in Finnish healthcare."
* ^status = #draft

* vaccineCode.coding ^slicing.discriminator.type = #value
* vaccineCode.coding ^slicing.discriminator.path = "system"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding ^slicing.description = ""
* vaccineCode.coding ^slicing.ordered = false
  * ^short = "Defining administered product or substance by using ATC or VNR code."

* vaccineCode.coding contains ATC 0..1
* vaccineCode.coding[ATC].system = #urn:oid:1.2.246.537.6.32.2007 (exactly)

* vaccineCode.coding contains VNR 0..1
* vaccineCode.coding[VNR].system = #urn:oid:1.2.246.537.6.55 (exactly)

* vaccineCode.text
  * ^short = "Insert product name."

* site.coding ^slicing.discriminator.type = #value
* site.coding ^slicing.discriminator.path = "system"
* site.coding ^slicing.rules = #open
* site.coding ^slicing.description = ""
* site.coding ^slicing.ordered = false

* site.coding contains Vaccination-site 0..1
* site.coding[Vaccination-site].system = #urn:oid:1.2.246.537.6.110.2007 (exactly)

* route.coding ^slicing.discriminator.type = #value
* route.coding ^slicing.discriminator.path = "system"
* route.coding ^slicing.rules = #open
* route.coding ^slicing.description = ""
* route.coding ^slicing.ordered = false

* route.coding contains Vaccination-route 0..1
* route.coding[Vaccination-route].system = #urn:oid:1.2.246.537.6.111.2007 (exactly)

* protocolApplied.targetDisease.coding ^slicing.discriminator.type = #value
* protocolApplied.targetDisease.coding ^slicing.discriminator.path = "system"
* protocolApplied.targetDisease.coding ^slicing.rules = #open
* protocolApplied.targetDisease.coding ^slicing.description = ""
* protocolApplied.targetDisease.coding ^slicing.ordered = false
  * ^short = "Vaccine preventatable disease being targetted defined by using THL code system"

* protocolApplied.targetDisease.coding contains THL-code 0..1
  * system = #urn:oid:1.2.246.537.6.609.201501 (exactly)

* reaction.detail ^short = "Reference to contained Observation resource. The contained Observation has relevant diagnose codes."

* extension contains VaccinationRecorder named vaccinationRecorder 0..1

Extension: VaccinationRecorder
Id: vaccination-recorder
Title: "Vaccination Recorder"
Description: "Vaccination recorder may not be the same person who performed the addministration."
* . ^short = "Vaccination recorder may not be the same person who performed the addministration."
* value[x] only Reference(Practitioner)