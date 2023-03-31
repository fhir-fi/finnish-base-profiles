<p class="stu-note">This Finnish base profile for the Condition resource is still very early in
development, and implementer feedback is appreciated in many aspects. There are many TODO parts
intentionally left in this draft version. See also the foreseen <a
href="#further-development-needs">further development needs</a> below.</p>

### Scope and Usage

Use cases:

* Diagnosis -based conditions and Finnish *kayntisyy*, asserted by a healthcare professional
* Reason given by patient for requesting/acquiring healthcare service. Finnish *tulosyy*
* Other usages for various needs

### Reasons for visit (Diagnosis -based conditions and Finnish *käyntisyy*)

Reason for visit may be a diagnosis asserted by a clinician / medical doctor or some other reason
for visit that is asserted by an nurse or some other healthcare professional.

To identify that a condition resource is a reason for visit, it MUST contain `category` code
`reason-for-visit`.

A reason for visit condition needs to be further categorized to make the distinction between
clinician asserted diagnosis and other *käyntisyy* conditions. When condition is a clinician
asserted diagnosis it MUST contain another `category` code `encounter-diagnosis`. When condition
is not asserted by a clincian it MUST NOT contain `encounter-diagnosis` category code.

THL has a data model for Finnish diagnosis (including *käyntisyy*) in code server:
[THL/Tietosisältö - Diagnoosit](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=543&versionKey=1543)
("THL specification").

Categories match to THL specification in following way:

* when `reason-for-visit` is present --> This is a diagnosis or *käyntisyy* as identifed by THL specification
    * (There are many other kind of conditions in FHIR that don't have this category)
* when additionally `encounter-diagnosis` is present --> This is a diagnosis and is not a *käyntisyy*
    * In THL specification, codeId 23: Käyntisyy has value False
* when `encounter-diagnosis` is not present --> This is a *käyntisyy*
    * In THL specification, codeId 23: Käyntisyy has value True

#### Diagnosis Code Systems

When using [Finnish ICD-10](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=23&versionKey=58)
it's usage has special rules. These are described below. For reference and detailed specifications,
see [Potilastiedon arkiston Kertomus ja lomakkeet](https://www.kanta.fi/jarjestelmakehittajat/kertomus-ja-lomakkeet)
version 5.11 or later.

#### Diagnosis code (reason)

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
will become supported too). Additional codes may be expressed by repeating coding. Other codes like
sympton SHOULD not be communicated via `code`, repetitions should represent the same concept (see
[CodeableConcept datatype specification](https://www.hl7.org/fhir/datatypes.html#CodeableConcept)).

Here's a valid example of repeating `code.coding` (`code` is not repeating, but `coding` has
repetitions expressing the same information in two code systems):

``` json
  "code" : {
    "coding" : [
      {
        "system" : "1.2.246.537.6.1.1999",
        "code" : "H36.03",
        "display" : "Proliferatiivinen diabeettinen retinopatia"
      },
      {
        "system" : "1.2.246.537.6.31.2007",
        "code" : "F83",
        "display" : "Retinopatia, verkkokalvon rappeuma"
      }
    ],
    "text" : "..."
  },
```

#### Symptom code

Symptom code SHOULD be communicated via `evidence`.

When using Finnish ICD-10, code MUST NOT contain special characters (`+` after the code and `*` before
code indicates symptom). Pre-built pairs (like E85.9+I68.0) code . SHALL be broken down to
constituent parts and the code part indicating symptom (in case of in case of E85.9+I68.0, `Koodi2`
field) used here.

For example:

``` json
"evidence" : [
    {
      "code" : [
        {
          "coding" : [
            {
              "system" : "1.2.246.537.6.1.1999",
              "code" : "E11.3",
              "display" : "Aikuistyypin diabetes diabeteksen silmäkomplikaatiot"
            }
          ]
        }
      ]
    }
  ]
```

In THL specification, this data is codeId 26: Diagnoosin tai käyntisyyn oirekoodi.

#### When name differs from code.display

Medical doctor may make some adjustments to the name of the diagnosis. `code.display` MUST be the
original name from the codesystem and `code.text` MAY contain adjusted name for the diagnosis.

In THL specification, this data is codeId 21: Diagnoosin tai käyntisyyn nimi.

#### Primary/main diagnosis (or käyntisyy)

Extension `primaryCondition` is used to express whether this is the primary/main condition for encounter.

Extension is a code from terminology "AR/YDIN - Diagnoosin /toimenpiteen ensisijaisuus" (1.2.246.537.5.40005.2003).

In THL specification, this data is codeId 2: Diagnoosin tai käyntisyyn ensisijaisuus.

#### Permanence (finnish "pysyvyys")

Extension `permanence` is used to express the condition is permanent or not.

Extension is a code from terminology "AR/YDIN - Pysyvyys" (1.2.246.537.5.40003.2003).

This information has some relation to `clinicalStatus`, but "AR/YDIN - Pysyvyys" can't be mapped to
clinicalStatus codes (doing so would redefine clinicalStatus).

In THL specification, this data is codeId 8: Diagnoosin pysyvyys.

#### Onset

Standard `onset` SHOULD be used.

In THL specification, this data is codeId 12: Diagnoosin tai käyntisyyn toteamispäivä.

#### Abatement

Standard `abatement` MAY be used.

In THL specification, this data is codeId 16: Diagnoosin päättymispäivä.

#### Asserter

Standard `asserter` MAY be used.

When `asserter` references a Practitioner, it can provide information for codeId 11: Toteajan nimi
in THL specification. When `asserter` references a PractitionerRole, it can provide information for
both codeId 11: Toteajan nimi and codeId 19: Toteajan palveluyksikkö.

#### Type of physical exercise during which injury occurred

Extension `physicalExcercise`.

TODO add example.

In THL specification, this data is codeId: 24 Tapaturman liikuntalaji.

#### Endocrinological disorder

Extension `endocrinologicalDisorder`.

TODO add example.

In THL specification, this data is codeId: 27 Endokrinologisen häiriön koodi.

#### Medication that caused this condition

Extension `conditionCausedByMedication`  

In THL specification, this data is codeId: 28 Aiheuttajan ATC-koodi

#### External cause for diagnosis

Extension `conditionExternalCause`

In THL specification, this data is codeId: 3 Diagnoosin ulkoinen syy

#### Categorization of the type of accident

Extension `conditionCategorizationOfAccident`

In THL specification, this data is codeId: 4 Diagnoosin tapaturmatyyppi

#### Cause of an adverse effect

Extension `causeOfAdverseEffect`

TODO  example

In THL specification, this data is codeId: 5 Haittavaikutuksen aiheuttaja

#### Further development needs

Finnish diagnosis has some data that is not yet modeled in this profile. There is more modeling and
mapping work to be done. Following list contains most relevant parts that need work:

* Use of `problem-list-item` for long term diagnosis ("Pitkäaikaisdiagnoosi" or "Pysyvä diagnoosi" in finnish)? The conceptual mapping is not staightforward.
* THL Tietosisältö 10 Tiedon lähde
    * extension?
* THL Tietosisältö 15 Diagnoosin päättymisen toteajan nimi
* THL Tietosisältö 17 Diagnoosin päättymisen syy
* THL Tietosisältö 18 Diagnoosin päättymisen syyn tarkenne
* THL Tietosisältö 20 Diagnoosin päättymisen toteajan palveluyksikkö
* THL Tietosisältö 22 Episodin nimi
* THL Tietosisältö 7 Diagnoosin tai käyntisyyn varmuusaste
* THL Tietosisältö 9 Diagnoosin tai käyntisyyn episoditunnus

#### Links

* [Suomalainen tautien kirjaamisen ohjekirja](https://thl.fi/documents/10531/124365/Opas%202012%2017.pdf)
national guide for the use if ICD-10.
