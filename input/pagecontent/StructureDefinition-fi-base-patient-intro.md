### Scope and Usage

The Finnish Core Patient profile is intended to encapsulate the most common and basic data model of
patients in Finnish social and healthcare systems. The profile also defines how to present data
defined in Finnish legislation. As such the profile should be usable in most Finnish contexts.

<p class="stu-note">The Finnish Base Profiles specification does its best to confom to the <a
href="https://build.fhir.org/ig/HL7/fhir-ipa/">International Patient Access (IPA)</a>
specification. All profiles in this implementation guide derive from the IPA profile, if such a
profile is available - except this Patient profile. This is due to the IPA specification imposing
cardinality restrictions to Patient.name and Patient.identifier. We specifically don't believe the
Patient.name should be a mandatory element. The Finnish PHR, for instance, does not include the
name of the patient in the Patient resource. This is why the Finnish Base Patient profile derives
from the Patient resource of the main FHIR specification. For additional details, please see the <a
href="https://jira.hl7.org/browse/FHIR-40451">issue FHIR-40451</a> in HL7 International's Jira.</p>

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

The [official Personal Identifier Code](https://dvv.fi/en/personal-identity-code) (PIC, also known
as _HETU_) is granted by the Digital And Population Data Services Agency. The `oid` for the
official PIC is `1.2.246.21`.

When an official PIC is not known or cannot be used for other reasons, a system may generate a
[Temporary Identifier](https://www.kanta.fi/en/system-developers/test-etiquette#Temporary%20identifier).
The `oid` for the temporary identifier is `1.2.246.10.<organization>.22.<year>`, where
`<organization>` is the official identifier (y-tunnus) of the organization and `<year>` the year
when the temporary identifier is generated.

The identifiers are presented to human readers in the 11 character format, without any oid
information.

When a PIC is used for an Patient instance, the value of the `identifier.use` field SHOULD be
[`official`](https://build.fhir.org/codesystem-identifier-use.html#identifier-use-official) and the
value of the `identifier.type` SHOULD be `NNFIN` (see https://terminology.hl7.org/4.0.0/CodeSystem-v2-0203.html).

When the `identifier.type` is `NNFIN`, the value of the identifier SHALL be a Finnish national PIC.

In addition to person identifiers for people living in Finland, systems may use **test identifiers**
that have a special range in the PIC format (the eighth character is `9`). For instance,
`020516C903K`.

#### Other identifiers

Other identifiers can also be used to identify the patient. In many cases the national patient
identifier is not required. In these cases systems should assign another unique identifier for
patients. Note that these identifiers MAY be different for different apps, for instance. They
SHOULD still be the same when the same app asks for the patient information multiple times. 

### Additional Information

#### Name

Systems SHOULD populate the `.name.text` field and clients SHOULD use that version of the name,
when available.

Clients SHOULD be prepared for cases where the name is not available. Systems may allow individuals
to limit the amount of information that is being shared with FHIR apps. Some privacy aware systems
do not share names or any demographic information by default.


#### Times

Both time of birth and time of death SHOULD be recorded with the time component, if known. If the
time of day is not known, the date SHALL be recorded as a date only, without the time component.

### Use of non-disclosure information

Finnish citizens that have requested name and address protection ([Non-disclosure for personal safety](https://dvv.fi/en/non-disclosure-for-personal-safety)) are labeled with the security label. The preferred way to do this is shown below.
 
 ```
 <Patient xmlns="http://hl7.org/fhir">
  <meta>
    <security>
      <system value="http://terminology.hl7.org/CodeSystem/v3-Confidentiality"/>
      <code value="R"/>
      <display value="Restricted"/>
    </security>
  </meta>
...  [snip] ...
</Patient>
 ```

 Use of this label should be interpreted according to the law, rouhgly meaning that only personnel using systems in public/official affairs are allowed to see name and address for the patient/citizen.

### Presenting guardian information

In some cases, a guardian could be appointed to the patient if the patients is for ex. incapable of
managing one's matters due to an illness. In these situations, the guardian's information shall be
presented with [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) resource with the
relationship type [GUARD](http://hl7.org/fhir/R4/v3/RoleCode/cs.html#:~:text=3-,GUARD,-guardian).
