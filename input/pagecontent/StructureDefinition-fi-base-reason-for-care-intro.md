<p class="stu-note">This Finnish base profile for the Reason for Care Condition resource is still
very early in development, and implementer feedback is appreciated in many aspects. There are many
TODO parts intentionally left in this draft version. See also the foreseen <a
href="#further-development-needs">further development needs</a> below.</p>

### Scope and Usage

This profile describes Diagnosis based conditions and Finnish *kayntisyy*.
These are `Condition` resources that are asserted by a healthcare professional and directly related
to encounters. This profile does not describe how to communicate `problem-list-item` level conditions.

THL has a data model for Finnish diagnosis (including *käyntisyy*) in code server:
[THL/Tietosisältö - Diagnoosit](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=543&versionKey=1543)
("THL specification").

For high level documentation, see
[Tiedonhallintapalvelun periaatteet ja toiminnallinen määrittely 2021, versio 1.2](https://www.kanta.fi/jarjestelmakehittajat/tiedonhallintapalvelun-periaatteet-ja-toiminnallinen-maarittely).

This profile SHOULD NOT be used to describe reason given by patient for requesting/acquiring
healthcare service. Finnish *tulosyy*.

#### Separating between Diagnosis based conditions and Finnish *käyntisyy*

Reason for care may be a diagnosis asserted by a clinician / medical doctor or some other reason
for visit that is asserted by an nurse or some other healthcare professional.

A reason for care condition needs to be categorized to make the distinction between
clinician asserted diagnosis and other *käyntisyy* conditions. When reason for care is a clinician
asserted diagnosis it MUST contain another `category` code `encounter-diagnosis`. When condition
is not asserted by a clincian it MUST NOT contain `encounter-diagnosis` category code.

Categories match to THL specification in following way:

* when additionally `encounter-diagnosis` is present --> This is a diagnosis and is not a *käyntisyy*
    * In THL specification, codeId 23: Käyntisyy has value False
* when `encounter-diagnosis` is not present --> This is a *käyntisyy*
    * In THL specification, codeId 23: Käyntisyy has value True

##### Diagnosis Code Systems

When using [Finnish ICD-10](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=23&versionKey=58)
it's usage has special rules. These are described below. For reference and detailed specifications,
see [Potilastiedon arkiston Kertomus ja lomakkeet](https://www.kanta.fi/jarjestelmakehittajat/kertomus-ja-lomakkeet)
version 5.11 or later.

##### Diagnosis code (reason)

`code` SHALL only contain the reason code.

When using Finnish ICD-10, the code MUST NOT contain special characters (`+`,`&`,`#` after the code
indicate reason). Pre-built pairs (like E85.9+I68.0) SHALL be broken down to constituent parts and the
code part indicating reason (in case of E85.9+I68.0, `Koodi1` field) used here.

In THL specification, this data is codeId 1: Diagnoosi.

In THL specification, there is another codeId 6: "ICD-10 -vastaavuuskoodi ICPC-koodille". This MAY be
in `code` (it's the same code, but coded in another code system, so repetition of `code` is ok).
Other codes, like symptom and accident type SHOULD NOT be repetitions of `code`.

More than one code may be used in `code` (in `code`'s repetitions of `coding`). `code` itself cannot
be repeated. Currently ICD-10, ICPC2 are supported by THL, in near future ICD-11, SNOMED and ORPHA
will become supported too. Additional codes may be expressed by repeating coding. Other codes like
a symptom SHOULD NOT be communicated via `code`, repetitions should represent the same concept (see
[CodeableConcept datatype specification](https://www.hl7.org/fhir/datatypes.html#CodeableConcept)).

Here's a valid example of repeating `code.coding` (`code` is not repeating, but `coding` has
repetitions expressing the same information in two code systems):

``` json
  "code" : {
    "coding" : [
      {
        "system" : "urn:oid:1.2.246.537.6.1",
        "version" : "1999",
        "code" : "H36.03",
        "display" : "Proliferatiivinen diabeettinen retinopatia"
      },
      {
        "system" : "urn:oid:1.2.246.537.6.31",
        "version" : "2007",
        "code" : "F83",
        "display" : "Retinopatia, verkkokalvon rappeuma"
      }
    ],
    "text" : "..."
  }
```

##### Symptom code

In THL specification, this data is `codeId 26`: *Diagnoosin tai käyntisyyn oirekoodi*.

Symptom code SHOULD be communicated via `evidence`.

When using the Finnish ICD-10 version, the code MUST NOT contain special characters (`+` after the
code and `*` before code indicating the symptom). Pre-built pairs (like E85.9+I68.0) SHALL be
broken down to constituent parts and the code part indicating symptom (in case of E85.9+I68.0,
`Koodi2` field).

For example:

``` json
"evidence" : [
    {
      "code" : [
        {
          "coding" : [
            {
              "system" : "urn:oid:1.2.246.537.6.1",
              "version" : "1999",
              "code" : "E11.3",
              "display" : "Aikuistyypin diabetes diabeteksen silmäkomplikaatiot"
            }
          ]
        }
      ]
    }
  ]
```

##### Name of diagnosis

In THL specification, this data is `codeId 21`: *Diagnoosin tai käyntisyyn nimi*.

A practitioner may make some adjustments to the name of the diagnosis. `code.coding.display` SHALL
still be the original name from the codesystem and `code.text` MAY contain an adjusted name for the
diagnosis.

##### Primary diagnosis (*käyntisyy*)

In THL specification, this data is `codeId 2`: *Diagnoosin tai käyntisyyn ensisijaisuus*.

Extension `primaryCondition` is used to express whether this diagnosis is the primary condition for
why the encounter takes place.

The extension SHALL have a code from "*AR/YDIN - Diagnoosin /toimenpiteen ensisijaisuus*" (oid
`1.2.246.537.5.40005`).

##### Permanence (*pysyvyys*)

In THL specification, this data is `codeId 8`: *Diagnoosin pysyvyys*.

Extension `permanence` is used to express whether the condition is permanent or not.

The extension SHALL have a code from "*AR/YDIN - Pysyvyys*" (oid `1.2.246.537.5.40003`).

This information has some relation to `clinicalStatus`, but "*AR/YDIN - Pysyvyys*" cannot be mapped
to clinicalStatus codes (doing so would redefine clinicalStatus).

##### Onset

In THL specification, this data is `codeId 12`: *Diagnoosin tai käyntisyyn toteamispäivä*.

Standard `onset` SHOULD be used.

##### Abatement

In THL specification, this data is `codeId 16`: *Diagnoosin päättymispäivä*.

Standard `abatement` MAY be used.

##### Asserter

Standard `asserter` MAY be used.

When `asserter` references a Practitioner, it can provide information for `codeId 11`:
*Toteajan nimi* in THL specification. When `asserter` references a PractitionerRole, it can provide
information for both `codeId 11`: *Toteajan nimi* and `codeId 19`: *Toteajan palveluyksikkö*.

##### Type of physical exercise during which injury occurred

In THL specification, this data is `codeId 24`: *Tapaturman liikuntalaji*.

Extension `physicalExcercise` is used.

##### Endocrinological disorder

In THL specification, this data is `codeId 27`: *Endokrinologisen häiriön koodi*.

Extension `endocrinologicalDisorder` is used.

##### Medication that caused this condition

In THL specification, this data is `codeId 28`: *Aiheuttajan ATC-koodi*.

Extension `conditionCausedByMedication` is used.

##### External cause for diagnosis

In THL specification, this data is `codeId 3`: *Diagnoosin ulkoinen syy*.

Extension `conditionExternalCause` is used.

##### Categorization of the type of accident

In THL specification, this data is `codeId 4`: *Diagnoosin tapaturmatyyppi*.

Extension `conditionCategorizationOfAccident` is used.

##### Cause of an adverse effect

In THL specification, this data is `codeId 5`: *Haittavaikutuksen aiheuttaja*.

Extension `causeOfAdverseEffect` is used.


##### Further development needs

{:.stu-note}
<div class="stu-note">
  <p>Finnish diagnosis has some data that is not yet modeled in this profile. There is more
    modeling and mapping work to be done. Following list contains most relevant parts that need
    work:</p>
  <ul>
    <li>Use of `problem-list-item` for long term diagnosis (<i lang="fi">Pitkäaikaisdiagnoosi</i>
    or <i lang="fi">Pysyvä diagnoosi</i>)? The conceptual mapping is not staightforward.</li>
    <li><i lang="fi">THL Tietosisältö 10 Tiedon lähde</i>. Should this be an extension?</li>
    <li><i lang="fi">THL Tietosisältö 15 Diagnoosin päättymisen toteajan nimi</i>.</li>
    <li><i lang="fi">THL Tietosisältö 17 Diagnoosin päättymisen syy</i>.</li>
    <li><i lang="fi">THL Tietosisältö 18 Diagnoosin päättymisen syyn tarkenne</i>.</li>
    <li><i lang="fi">THL Tietosisältö 20 Diagnoosin päättymisen toteajan palveluyksikkö</i>.</li>
    <li><i lang="fi">THL Tietosisältö 22 Episodin nimi</i>.</li>
    <li><i lang="fi">THL Tietosisältö 7 Diagnoosin tai käyntisyyn varmuusaste</i>. This could
    perhaps be mapped to <a
    href="https://hl7.org/fhir/R4/valueset-condition-ver-status.html">verificationStatus
    codes</a>.</li>
    <li><i lang="fi">THL Tietosisältö 9 Diagnoosin tai käyntisyyn episoditunnus</i>.</li>
  </ul>
  <p>Feedback on all of the above is most welcome for further development of this profile.
</div>

#### Links

* [*Suomalainen tautien kirjaamisen ohjekirja*](https://thl.fi/documents/10531/124365/Opas%202012%2017.pdf),
the national guide for the use of ICD-10.
