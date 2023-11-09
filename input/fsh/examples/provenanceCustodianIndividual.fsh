Instance: ProvenanceCustodianIndividual
InstanceOf: FiBaseInformationCustodianIndividual
Title: "Custodian of information (rekisterinpitäjä), an individual provider"
Description: "Example of Provenance that communicates a private individual healthcare provider as the custodian of information for an episode of care."
Usage: #example
* id = "custodian-individual"
* target = Reference(EpisodeOfCare/id-for-episode-1)
* recorded = "2015-02-07T13:28:17.239+02:00"
* agent[custodian]
  * type
    * coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST "custodian"
    * text = "Rekisterinpitäjä"
  * role[custodianRole]
    * coding[custodianRoleCoding] = urn:oid:1.2.246.537.5.40172#2 "Yksityinen"
    * text = "Yksityinen"
  * who
    * type = #Practitioner
    * identifier
      * type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
      * system = "urn:oid:1.2.246.537.6.203"
      * value = "urn:oid:1.2.246.537.28.10000222116"
    * display = "Kalmanlehto Erkki"
/*
* entity[registerType]
  * role = #source
  * what
    * identifier
      * system = "urn:oid:1.2.246.537.5.40150"
      * value = #10
    * display = "Ammatinharjoittaja"
*/
