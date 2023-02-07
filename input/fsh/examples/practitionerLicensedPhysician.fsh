Instance: PractitionerLicensedPhysician
InstanceOf: FiBasePractitioner
Usage: #example
Description: "Example of Licensed Physician from CGI Pegasos EHR."
* active = true
* gender = #male
* identifier[0].system = "urn:oid:1.2.246.537.26"
* identifier[=].use = #official
* identifier[=].value = "00198705840"
* identifier[+].system = "urn:oid:1.2.246.21"
* identifier[=].use = #official
* identifier[=].value = "311080-999X"
* identifier[+].system = "urn:oid:1.2.246.537.25"
* identifier[=].use = #official
* identifier[=].value = "032680"
* identifier[+].system = "urn:oid:1.2.246.537.10.3575029.12.2.10.2131.24001"
* identifier[=].type.coding[0].code = #MNEMONIC
* identifier[=].type.coding[+] = http://terminology.hl7.org/CodeSystem/v2-0203#XX
* identifier[=].use = #secondary
* identifier[=].value = "DOCTODAV"
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "mailto:dave.doctor@cgi.com"
* identifier[+].type = https://fhir.cgi.fi/code/person-id-type#user-domain-authority
* identifier[=].value = "4ec06bf9-1df1-4336-bf5a-33ba1a2707b2"
* identifier[+].type = https://fhir.cgi.fi/code/person-id-type#user-domain-authority
* identifier[=].value = "dave.doctor@iurcgifisaas.onmicrosoft.com"
* name.family = "Doctor"
* name.given = "Dave"
* name.suffix = "dr."
* qualification[0].code = urn:oid:1.2.246.537.6.140.2008#001
* qualification[+].code = urn:oid:1.2.246.537.6.148.2008#86152-322
* qualification[+].code = urn:oid:1.2.246.537.6.74.2001#2131
* qualification[+].code = urn:oid:2.16.840.1.113883.18.220#MD
* telecom.system = #email
* telecom.use = #work
* telecom.value = "dave.doctor@cgi.com"