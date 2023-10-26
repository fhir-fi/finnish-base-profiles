### Scope and Usage

The Finnish Core Encounter profile is intended to encapsulate the most common and basic data model
of encounters in Finnish healthcare systems. The profile also defines encounter's relation to the
Kanta registry. As such the profile should be usable in most Finnish contexts.

#### Relation to Finnish *palvelutapahtuma*

[Kanta](https://www.kanta.fi/) is the Finnish national central registry of health and social
welfare information. It has a specification for Palvelutapahtuma, this is typically translated as
service-event or encompassing encounter.

The scope of *palvelutapahtuma* is described in
[Kanta documentation](https://www.kanta.fi/jarjestelmakehittajat/liite-2-palvelutapahtumien-esimerkkeja)
(in Finnish). It's scope is not always the same as the encounter's. Encounter and
*palvelutapahtuma* will overlap as concepts (depending on implementation). Some encounters clearly
align with *palvelutapahtuma* while others don't. *Palvelutapahtuma* may contain multiple
encounters. For example a series of treatments is considered to be a singular *palvelutapahtuma*,
but systems most likely want to express each visit as a separate encounter (see kanta doc for the
description of *hoitosarja*, there are other examples too).

For deeper techical details, see (in Finnish):

* Kanta
[CDA R2 Header](https://www.kanta.fi/jarjestelmakehittajat/potilastiedon-arkiston-cda-r2-header)
version 4.66 or later.
  * Descriptions of *palvelutapahtuma*
* Kanta
[HL7 V3 Medical Records specification](https://www.kanta.fi/jarjestelmakehittajat/potilastiedon-arkiston-medical-records).
  * Shows the role of *palvelutapahtuma* when making requests to Kanta

##### Why does an encounter need this information?

Kanta HL7 V3 Medical Records specification requires that both queries and archivals transmit
*palvelutapahtuma*'s OID identifier on each request. A client application that is integrated to a
patient administration system (one that masters the data of encounters) often needs to create and
query Kanta Medical records. Encounter is the best "vessel" we have to transmit this information.

For example a laboratory information system may have it's own Kanta Medical Records capabilities
and will archive lab results directly to Kanta. It receives encounter id in SMART App Launch
context. Laboratory system can resolve *palvelutapahtuma*'s OID identifier by fetching the
encounter resource.

##### How to communicate palvelutapahtuma via FHIR encounter?

First thing is to identify the appropriate aggregation level of encounter. If encounter is not
representing a *palvelutapahtuma*, but is a lower level encounter (some systems call these
*prosessitapahtuma*), `partOf` should be used to point to upper level encounter (up until
*palvelutapahtuma* level is reached).

A *palvelutapahtuma* encounter is identified by an identifier. When encounter has an identifier
with `use=official` it is considered to be a *palvelutapahtuma* and that identifier SHALL be the
OID of a *palvelutapahtuma*.

Other levels of encounter that are not a *palvelutapahtuma*, MUST NOT contain an identifier with
`use=official`.

#### Organizational responsibility

The unit responsible for the encounter SHOULD be communicated using the `serviceProvider` property.

For instance, there's a [detailed example with explanations](Encounter-id-for-ward-encounter.html) 
for how to fetch patients in a ward.
