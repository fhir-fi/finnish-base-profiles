Profile: FinnishCorePractitioner
Parent: Practitioner
Id: Finnish-core-practitioner
Title: "Finnish Core Practitioner Profile"
Description: "This is a profile for finnish practitioner"
* id 1..1

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier ^slicing.description = "In Finland there are at least four diffent kinds of indentifiers: SSO, Terhikki-number, doctor identification number (SV, yksilöintitunnus) and -	organisation specific personnel mnemonic."
 
* identifier contains SSN 0..1
* identifier[SSN].system = #urn:oid:1.2.246.21