### Scope and Usage

The Finnish Core Encounter profile is intended to encapsulate the most common and basic data model
of encounters in Finnish healthcare systems. The profile also defines how to communicate context
to the Kanta registry. As such the profile should be usable in most Finnish contexts.

### Relation to Finnish Palvelutapahtuma

[Kanta](https://www.kanta.fi/) is the Finnish national central registry of health and social
welfare information. It has a specification for Palvelutapahtuma, this is typically translated as
service-event or encompassing encounter. 

The scope of palvelutapahtuma is [described](https://www.kanta.fi/jarjestelmakehittajat/liite-2-palvelutapahtumien-esimerkkeja)
in Kanta-documentation (in finnish). It's scope is not the same as encounter's. Encounter and 
Palvelutapahtuma will overlap as concepts (depending on implementation).

For deeper techical details, se Kanta [HL7 V3 Medical Records specification](https://www.kanta.fi/jarjestelmakehittajat/potilastiedon-arkiston-medical-records) 
(this again in finnish).

#### Why does encounter need this information?

Kanta HL7 V3 Medical Records specification requires that both queries and archivals transmit 
Palvelutapahtuma's OID identifier on each request. A client application that is integrated to a 
patient administration system (one that masters the data of encounters) often needs to create and 
query Kanta Medical records. Encounter is the best "vessel" we have to transmit this information.

For example a laboratory information system may have it's own Kanta Medical Records capabilities 
and will archive lab results directly to Kanta. It receives encounter id in SMART App Launch 
context. Laboratory system can resolve Palvelutapahtuma`s OID identifier by fetching the encounter
resource.

#### How to communicate palvelutapahtuma via FHIR encounter?

Use extension `ServiceEvent`. See [example encounter](Encounter-id-for-visit.html)

#### Relation to encounter partOf

Encounters can be grouped together to form larger administrative 'periods' by using the `partOf` 
element. Vendor implementations vary and it's difficult to pinpoint which level (if any) would
match Palvelutapahtuma. For best interoperability we should *not* assume Palvelutapahtuma corresponds
exactly to some level of encounter in `partOf` hierarchy. As a result many encounters can point to
the same Palvelutapahtuma (OID). 

### Organizational responsibility

The unit responsible for the encounter should be communicated using the `serviceProvider` property. 

For instance, there's a [detailed example with explanations](Encounter-id-for-ward-encounter.html) how to fetch patients
in a ward.