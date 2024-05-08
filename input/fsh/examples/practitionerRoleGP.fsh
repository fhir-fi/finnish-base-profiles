Instance: PractitionerRoleGP
InstanceOf: FiBasePractitionerRole
Title: "Licenced physician in primary care"
Description: "This is an example of PractitionerRole profile. The example describes the service which practitioner is performing in specific location."
Usage: #example
* identifier.system = "http://www.acme.org/practitioners"
* identifier.value = "23"
* active = true
* period.start = "2023-01-01"
* period.end = "2023-12-31"
* practitioner = Reference(PractitionerLicensedPhysician)
* organization = Reference(OrganizationPrimaryCare)
* code = http://terminology.hl7.org/CodeSystem/v2-0286#RP
* specialty = http://snomed.info/sct#408443003 "General medical practice"
* location = Reference(LocationExample)
* healthcareService = Reference(AT-340)
* availableTime[0].daysOfWeek[0] = #mon
* availableTime[=].daysOfWeek[+] = #tue
* availableTime[=].daysOfWeek[+] = #wed
* availableTime[=].availableStartTime = "09:00:00"
* availableTime[=].availableEndTime = "16:30:00"
* availableTime[+].daysOfWeek[0] = #thu
* availableTime[=].daysOfWeek[+] = #fri
* availableTime[=].availableStartTime = "09:00:00"
* availableTime[=].availableEndTime = "12:00:00"
