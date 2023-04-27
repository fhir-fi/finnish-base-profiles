Profile: FiBasePractitioner
Parent: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-practitioner
Id: fi-base-practitioner
Title: "FI Base Practitioner"
Description: "This is the Finnish base profile for the Practitioner resource."
* ^status = #draft
* id 1..1
* identifier.assigner only Reference(FiBaseOrganization)
* qualification.issuer only Reference(FiBaseOrganization)

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "In Finland there are at least four diffent kinds of indentifiers: PIC, Terhikki-number, doctor identification number (SV, yksilöintitunnus) and -	organisation specific personnel mnemonic."
 
* identifier contains PIC 0..1
* identifier[PIC].system = #urn:oid:1.2.246.21

* identifier contains Terhikki 0..1
* identifier[Terhikki].system = #urn:oid:1.2.246.537.26

* identifier contains SV 0..1
* identifier[SV].system = #urn:oid:1.2.246.537.25
