### Scope and Usage

The Finnish Core Patient profile is intended to encapsulate the most common and basic data model of
patients in Finnish social and healthcare systems. The profile also defines how to present data
defined in Finnish legislation. As such the profile should be usable in most Finnish contexts.

### Identifying information

In the context of Finnish national social and healthcare, the
[defined identifying information](https://yhteistyotilat.fi/wiki08/display/JULPOKY/7+Potilaan+perustiedot)
for a person are
* first (given) name
* family name
* name history
* national person identifier
* temporary identifier
* time of birth
* gender
* time of death.

The unique identifier is the national person identifier.

#### Patient identifier

There are two versions of the national person identifier for people living in Finland.

The [official Personal Identifier Code](https://dvv.fi/en/personal-identity-code) (**PIC**, also
known as _HETU_) is granted by the Digital And Population Data Services Agency. The `oid` for the
official PIC is `1.2.246.21`.

When an official PIC is not known or cannot be used for other reasons, a system may generate a
[**temporary identifier**](https://www.kanta.fi/en/system-developers/test-etiquette#Temporary%20identifier).
There are several ways to create an `oid` for the temporary identifier. The most typical ones are
described in
[ISO OID-yksilöintitunnuksen käytön kansalliset periaatteet sosiaali- ja terveysalalla](https://www.hl7.fi/hl7-rajapintakartta/iso-oid-yksilointitunnuksen-kayton-kansalliset-periaatteet-sosiaali-ja-terveysalalla/)
document (in Finnish).

There are two generally used methods to create a temporary identifier `oid`.

1. `1.2.246.10.<organization>.22.<year>`, where `<organization>` is the official identifier
(_y-tunnus_) of the organization and `<year>` the year when the temporary identifier is generated.
2. `1.2.246.10.<organization>.10.<location>.22.<year>` where both the `organization` and the `year`
are the same as above, and the `location` is the more specific location or unit (_toimipaikka_) of
the organization in which the temporary identifier is created.

The first method is
[recommended](https://yhteistyotilat.fi/wiki08/display/JULPOKY/7+Potilaan+perustiedot#id-7Potilaanperustiedot-7.1Henkil%C3%B6nyksil%C3%B6intitiedot).

The identifiers are presented to human readers in the 11 character format, without any `oid`
information.

When a PIC is used for a Patient instance, the value of the `identifier.use` field SHOULD be
[`official`](https://www.hl7.org/fhir/codesystem-identifier-use.html#identifier-use-official) and
the value of the `identifier.type` SHOULD be `NNFIN` (from the 
[identifierType](https://terminology.hl7.org/4.0.0/CodeSystem-v2-0203.html) code system of the HL7
Terminology).

When the `identifier.type` is `NNFIN`, the value of the identifier SHALL be a Finnish national PIC.

In addition to person identifiers for people living in Finland, systems may use **test identifiers**
that have a special range in the PIC format (the eighth character is `9`). For instance,
`020516C903K`.

#### Other identifiers

Other identifiers can also be used to identify the patient. In many cases the national patient
identifier is not required. In these cases systems SHOULD assign another unique identifier for
patients. Note that these identifiers MAY be different for different apps, for instance. They
SHOULD still be the same when the same app asks for the patient information multiple times. 

#### Additional Information

##### Name

Systems SHOULD populate the `.name.text` field and clients SHOULD use that version of the name,
when available.

Clients SHOULD be prepared for cases where the name is not available. Systems may allow individuals
to limit the amount of information that is being shared with FHIR apps. Some privacy aware systems
do not share names or any demographic information by default.

##### Times

Both time of birth and time of death SHOULD be recorded with the time component, if known. If the
time of day is not known, the date SHALL be recorded as a date only, without the time component.

The birth time, when recorded, SHALL be recorded using the
[standard extension](http://hl7.org/fhir/extensions/StructureDefinition-patient-birthTime.html).

### Municipality vs address information

Municipality of residence is represented with MunicipalityCode extension. Municipality means in
this context the municipality which is registered as the primary residence location. The
municipality of residence is always registered by the
[Digital and Population Data Services Agency](https://dvv.fi/en/municipality-of-residence). In most
cases the address information contains the same information presented in MunicipalityCode extension
but there are situations where `address.city` is not the same as the value in the extension.
Address is better understood as contact address. More information about the subject can be found on
[Home municipality](./StructureDefinition-municipality-code.html).

The distiction between these two different location types is important e.g. when patient is being
transferred from primary care to secondary care via referral. In these cases the secondary care
unit invoices the primary care service provider but patient may recieve infromation about the given
care via mail to address which is not located in municipality of recidence.

### Presenting guardian information

In some cases, a guardian could be appointed to the patient if the patients is for ex. incapable of
managing one's matters due to an illness. In these situations, the guardian's information SHOULD be
presented with [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) resource with the
relationship type [GUARD](http://hl7.org/fhir/R4/v3/RoleCode/cs.html#:~:text=3-,GUARD,-guardian).

### Non-disclosure for personal safety

The Digital and Population Data Services Agency DVV may grant a
[non-disclosure for personal safety](https://dvv.fi/en/non-disclosure-for-personal-safety).
This is communicated by the
[`TURVAKIELTO`](CodeSystem-fi-base-security-label-cs.html#fi-base-security-label-cs-TURVAKIELTO)
security label (see [an example](Patient-patient-with-turvakielto.html)).
