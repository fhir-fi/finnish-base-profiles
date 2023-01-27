Profile: FiBaseEncounter
Parent: Encounter
Id: fi-base-encounter
Title: "FI Base Encounter"
Description: "This is the Finnish base profile for the Encounter resource."

* extension contains ServiceEvent named serviceEvent 0..1

Extension: ServiceEvent
Id: service-event
Title: "ServiceEvent"
Description: "Extension for palvelutapahtuma (service-event / encompassing encounter). Presents service event / encompassing encounter OID-identifier. Finnish national requirements identify a serviceEvent/encompassing encounter that is used in Kanta HL7 V3 messaging."
* value[x] only oid