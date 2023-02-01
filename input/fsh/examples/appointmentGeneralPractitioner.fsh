Instance: A121801
InstanceOf: Appointment
Usage: #example
* id = "appointment-general-practitioner"
* appointmentType = urn:oid:1.2.246.537.6.884.2015#101
* created = "2023-01-20T08:45:15+02:00"
* description = "Kuume"
* end = "2023-01-20T10:20:00+02:00"
* extension[0].url = "http://hl7.fi/fhir/StructureDefinition/ServiceEventExt"
* extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[=].valueIdentifier.value = "urn:oid:1.2.246.10.3575029.10.50.14131.2023.159325"
* extension[+].extension[0].url = "Cancellable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "Reschedulable"
* extension[=].extension[=].valueBoolean = false
* extension[=].url = "http://hl7.fi/fhir/StructureDefinition/AppointmentMutabilityExtension"
* participant[0].actor = Reference(PatientOfMunicipality) "TESTI HENKILÖ"
* participant[=].required = #required
* participant[=].status = #accepted
* participant[+].actor = Reference(Practitioner/12388) "Testilääkäri, Anu Lääkäri"
* participant[=].required = #required
* participant[=].status = #accepted
* participant[=].type = http://hl7.org/fhir/v3/ParticipationType#PPRF
* participant[+].actor = Reference(Location/1-2650) "B vastaanotto"
* participant[=].status = #accepted
* participant[+].actor = Reference(AT-340)
* participant[=].status = #accepted
* serviceCategory = urn:oid:1.2.246.537.6.50.201801#SOTE9.2
* serviceType = urn:oid:1.2.246.537.6.49.201501#EEA
* start = "2023-01-20T10:00:00+02:00"
* status = #fulfilled