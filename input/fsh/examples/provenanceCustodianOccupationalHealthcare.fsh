Instance: ProvenanceCustodianOccupationalHealthcare
InstanceOf: FiBaseInformationCustodianPrivate
Title: "Custodian of information (rekisterinpitäjä), private occupational healthcare"
Description: "Example of Provenance that communicates a private occupational healthcare organization as the custodian of information for an episode of care."
Usage: #example
* id = "custodian-occupational-healthcare"
* target = Reference(EpisodeOfCare/id-for-episode-1)
* recorded = "2015-02-07T13:28:17.239+02:00"
* agent[custodian]
  * type
    * coding[0] = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST "custodian"
    * text = "Rekisterinpitäjä"
  * role[0]
    * coding[0]
      * system = "urn:oid:1.2.246.537.5.40172"
      * code = #2
      * display = "Yksityinen"
    * text = "Yksityinen"
  * who
    * type = #Organization
    * identifier
      * type = http://terminology.hl7.org/CodeSystem/v2-0203#XX
      * system = "urn:oid:1.2.246.537.6.202"
      * value = "urn:oid:1.2.246.10.32515682.10.0"
    * display = "Ratinan Terveys Oy"
* entity[registerType]
  * role = #source
  * what
    * identifier
      * system = "urn:oid:1.2.246.537.5.40150"
      * value = #4
    * display = "Työterveyshuolto"
* entity[registerSpecifierCompanyId]
  * role = #source
  * what
    * identifier
      * type = http://terminology.hl7.org/CodeSystem/v2-0203#TAX
      * system = "urn:oid:1.2.246.10"
      * value = "2606155-7"
    * display = "Sensotrend Oy"


