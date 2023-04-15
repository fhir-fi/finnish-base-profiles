Instance: OrganizationHospitalUnit
InstanceOf: FiBaseOrganization
Title: "Encounter - example primary care organization"
// using partOf would cause warnings unless we add the full hierarchy in this repo. 
Description: "An example of a FI Base organization, a surgical ward. The partOf reference removed for brevity."
Usage: #example
* id = "1.2.246.10.8286189.10.100012"
* identifier.use = #official
* identifier.system = #urn:oid:1.2.246.537.6.202.2008
* identifier.value = "1.2.246.10.8286189.10.100012"
* name = "Kirurgian vuodeosasto 4B, Länsi-Pohjan keskussairaala, LPSHP"
* alias = "Kirurgian vuodeosasto 4B, LPKS, LPSHP"
* address[0].type = #postal
* address[0].line[0] = "Kauppakatu 25, 94100 KEMI"
* address[0].postalCode = "94100"
* address[0].city = "KEMI"
* address[1].type = #physical
* address[1].line[0] = "Kauppakatu 25, 94100 KEMI"
* address[1].postalCode = "94100"
* address[1].city = "KEMI"
* active = true
