Instance: ProvenanceCustodianPublicHealthcare
InstanceOf: FiBaseInformationCustodian
Title: "Custodian of information (rekisterinpitäjä), public healthcare"
Description: "Example of Provenance that communicates a public healthcare organization as the custodian of information for an episode of care."
Usage: #example
* id = "custodian-public-healthcare"
* target = Reference(EpisodeOfCare/id-for-episode-1)
* recorded = "2023-08-25T16:42:17.239+03:00"
* agent[custodian]
  * type
    * coding[0] = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST "custodian"
    * text = "Rekisterinpitäjä"
  * role[0]
    * coding[0]
      * system = "urn:oid:1.2.246.537.5.40172"
      * code = #1
      * display = "Julkinen"
    * text = "Julkinen"
  * who
    * type = #Organization
    * identifier
      * type = http://terminology.hl7.org/CodeSystem/v2-0203#XX
      * system = "urn:oid:1.2.246.537.6.40174"
      * value = "urn:oid:1.2.246.10.32213086.19.0"
    * display = "Pirkanmaan hyvinvointialueen rekisterinpitäjä"
* entity[registerType]
  * role = #source
  * what
    * identifier
      * system = "urn:oid:1.2.246.537.5.40150"
      * value = #2
    * display = "Julkinen terveydenhuolto"
