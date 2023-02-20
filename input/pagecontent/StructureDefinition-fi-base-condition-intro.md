<p class="stu-note">This Finnish base profile for the Condition resource is still very early in
development, and implementer feedback is appreciated in many aspects. There are many TODO parts
intentionally left in this draft version. See also the foreseen <a
href="#further-development-needs">further development needs</a> below.</p>

### Scope and Usage

Use cases:

* Diagnosis -based conditions and Finnish Kayntisyy
* Other usages?

### Diagnosis -based conditions and Finnish *käyntisyy*

A condition isn't always a diagnosis. `category` is used to identify that a condition is a diagnosis.
To identify that a condition is a diagnosis or Finnish *käyntisyy*, the `category` -field MUST
contain code `166` from Finnish [AR/YDIN - Näkymät](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=226&versionKey=301)
-code system.

TODO is ok to use `166` for Finnish *käyntisyy* also? Having a category code would clean up this
profile. We would not need an extension.

THL has a data model for Finnish diagnosis in code server:
[THL/Tietosisältö - Diagnoosit](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=543&versionKey=1543)
("THL specification").

#### Diagnosis Code Systems

When using [Finnish ICD-10](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=23&versionKey=58)
it's usage has special rules. These are described below. For reference and detailed specifications,
see [Potilastiedon arkiston Kertomus ja lomakkeet](https://www.kanta.fi/jarjestelmakehittajat/kertomus-ja-lomakkeet).

#### Diagnosis code (reason)

`code` SHALL only contain the reason code.

When using Finnish ICD-10, the code MUST NOT contain special characters (`+`,`&`,`#` after the code
indicate reason). Pre-built pairs (like E85.9+I68.0) SHALL be broken down to constituent parts and the
code part indicating reason (in case of E85.9+I68.0, `Koodi1` field) used here.

In THL specification, this data is codeId 1: Diagnoosi.

In THL specification, there is another codeId 6: "ICD-10 -vastaavuuskoodi ICPC-koodille". This MAY be
in `code` (it's the same code, but coded in another code system, so repetition of `code` is ok).
Other codes, like symptom and accident type SHOULD NOT be repetitions of `code`.

#### Symptom code

Symptom code SHOULD be communicated via `evidence`.

When using Finnish ICD-10, code MUST NOT contain special characters (`+` after the code and `*` before
code indicates symptom). Pre-built pairs (like E85.9+I68.0) code . SHALL be broken down to
constituent parts and the code part indicating symptom (in case of in case of E85.9+I68.0, `Koodi2`
field) used here.

In THL specification, this data is codeId 26: Diagnoosin tai käyntisyyn oirekoodi.

#### When name differs from code.display

Medical doctor may make some adjustments to the name of the diagnosis. `code.display` MUST be the
original name from the codesystem and `code.text` MAY contain adjusted name for the diagnosis.

In THL specification, this data is codeId 21: Diagnoosin tai käyntisyyn nimi.

#### Primary/main diagnosis (or käyntisyy)

Use `category` code from "AR/YDIN - Diagnoosin /toimenpiteen ensisijaisuus" (1.2.246.537.5.40005.2003).

In THL specification, this data is codeId 2: Diagnoosin tai käyntisyyn ensisijaisuus.

#### Permanence (finnish "pysyvyys")

Use `category` code from  "AR/YDIN - Pysyvyys" versiosta (1.2.246.537.5.40003.2003).

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

#### Is not authored by a medical doctor (*Käyntisyy*)

Some conditions are very much like diagnosis but the asserter is not a medical doctor. THL
specification identifies these as *käyntisyy*.

Extension `isNotAuthoredByMedicalDoctor` with value `true` MUST be used when condition is a *käyntisyy*.
It MAY be used with value `false` on medical doctor asserted diagnosis, but absence of this extension
SHALL be interpreted as not being a *käyntisyy*.

In THL specification, this data is codeId 23: Käyntisyy.

#### Type of sport in injury cases

Extension `sport`.

TODO add example.

In THL specification, this data is codeId: 24 Tapaturman liikuntalaji.

#### Endocrinological disorder

Extension `endocrinologicalDisorder`.

TODO add example.

In THL specification, this data is codeId: 27 Endokrinologisen häiriön koodi.

#### 28	Aiheuttajan ATC-koodi
TODO define extension and example

#### 3	Diagnoosin ulkoinen syy
TODO define extension and example

#### 4	Diagnoosin tapaturmatyyppi
TODO define extension and example
#### 5	Haittavaikutuksen aiheuttaja
TODO define extension and example

#### Other category usages

`category` SHOULD also contain the standard `encounter-diagnosis`.

#### Further development needs

Finnish diagnosis has some data that is not yet modeled in this profile. There is more modeling and
mapping work to be done. Following list contains most relevant parts that need work:

* Use of `problem-list-item` for long term diagnosis ("Pitkäaikaisdiagnoosi" or "Pysyvä diagnoosi" in finnish)? The conceptual mapping is not staightforward.
* THL Tietosisältö 10 Tiedon lähde
  *  extension?
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