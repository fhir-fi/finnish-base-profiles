Instance: OrganizationPrimaryCare
InstanceOf: FiBaseOrganization
Title: "Organization - example primary care organization"
Description: "An example of a FI Base organization, a doctor's reception office. Data is from national SOTE-Rekisteri."
Usage: #example
* id = "1.2.246.10.2085212.10.1314"
* identifier.use = #official
* identifier.system = #urn:oid:1.2.246.537.6.202.2008
* identifier.value = "urn:oid:1.2.246.10.2085212.10.1314"
* name = "Kyyjärven lääkärin vastaanotto, Kyyjärven terveysasema, SoTe kuntayhtymä Saarikka"
* partOf.reference = "Organization/1.2.246.10.2085212.10.1306"
* address[0].type = #postal
* address[0].line[0] = "Honkalehdontie 9"
* address[0].postalCode = "43700"
* address[0].city = "Kyyjärvi"
* address[1].type = #physical
* address[1].line[0] = "Honkalehdontie 9"
* address[1].postalCode = "43700"
* address[1].city = "Kyyjärvi"
* telecom[0].system = #phone
* telecom[0].value = "0401578947"
* active = true

// Providing minimal info of the parent organization for the example above,
// no need to express full hierarchy here.
Instance: OrganizationPrimaryCareParent
InstanceOf: FiBaseOrganization
Title: "Organization - example of a parent organization"
Description: "An example of a FI Base organization. Acts as a parent organization for another."
Usage: #example
* id = "1.2.246.10.2085212.10.1306"
* identifier.use = #official
* identifier.system = #urn:oid:1.2.246.537.6.202.2008
* identifier.value = "urn:oid:1.2.246.10.2085212.10.1306"
* name = "Vastaanotot, SoTe kuntayhtymä Saarikka"
* active = true
