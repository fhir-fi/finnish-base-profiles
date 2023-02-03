This page lists notable terminologies used in Finland.

Many of these terminologies are not maintained by HL7 Finland, rather they are published and
maintained elsewhere and included into this implementation guide to raise awareness of their
existence.

This version of this implementation guide does not define any terminologies. There are other, more
use case specific implementation guides that may define terminologies for their use cases. See for
instance:
* [Finnish Appointment IG](https://simplifier.net/finnishappointment) for scheduling
* [Finnish PHR STU3](https://simplifier.net/FinnishPHR) and
  [Finnish PHR R4](https://simplifier.net/FinnishPHRR4) for health and wellbeing data in the
  national Personal Health Record platform Kanta PHR
* [Kanta FHIR Prescription R4](https://simplifier.net/PrescriptionR4) for prescriptions
* [Kanta sosiaalihuolto R4](https://simplifier.net/Kanta-sosiaalihuolto-R4) for welfare and social
  affairs

Most code systems used in this guide are defined in the base FHIR specification. They are not
replicated here, but some essential concepts are presented below.

### FHIR Terminologies

#### CodeSystems
  
<ul>
{% include list-simple-codesystems.xhtml %}
</ul>

See the [FHIR terminology section](https://hl7.org/fhir/terminologies-systems.html) for a complete
discussion on code systems and a list of codes system names used in FHIR.

#### ValueSets

<ul>
{% include list-simple-valuesets.xhtml %}
</ul>

See the
[value sets defined in the FHIR specification](https://hl7.org/fhir/terminologies-valuesets.html).

#### ConceptMaps

<ul>
{% include list-simple-conceptmaps.xhtml %}
</ul>

See the [mappings between value sets](https://hl7.org/fhir/terminologies-conceptmaps.html) defined
in the main FHIR specification. 

#### NamingSystems

<ul>
{% include list-simple-namingsystems.xhtml %}
</ul>

See the [known identifier systems](https://hl7.org/fhir/identifier-registry.html) of the main FHIR
specification.

### Terminologies not available in FHIR format

There are several terminologies and terminology servers that don't yet offer their contents in FHIR
format. However, many of these terminologies are essential in Finnish healthcare and social care.

#### National Code Server

The Finnish Institute for Health and Welfare maintains a
[National code server of social welfare and health care](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-list-page.xhtml),
only in Finnish language. The standardised data structures required by the electronic client data
systems in social welfare and health care as well as the central code sets of the statistical and
register data collection are all published on the code server.

The code sets are available on the Code server free of charge.

The responsibility for the contents of the code sets on the code server belongs to THL as laid down
by law,
[Act on the Electronic Processing of Client Data in Social and Health Care, 9 Feb, 159/2007 (in Finnish)](http://www.finlex.fi/fi/laki/ajantasa/2007/20070159).
The technical maintenance of the code server is the responsibility of the Social Insurance
Institution of Finland (Kela).

The Code Service forms a part of Kanta, the national patient data system. The Code Service
maintains nationally integrated data structures and code sets for electronic patient case
histories. The Code server also develops registration practices for the client data in social
welfare.

#### Snomed CT

Finland
[became a member of SNOMED International](https://www.snomed.org/our-stakeholders/member/finland)
in November 2019. 

To make best use of SNOMED CT with available resources, Finland has chosen not to translate the
whole terminology. Instead, the aim is to focus on two national reference sets that meet local
needs in areas where there is international experience and models showing implementation success.

The first target is an obvious one: standardizing the terminology and codes for anatomic pathology
in the clinical laboratories. Finnish pathology laboratories have used SNOMED 2 since 1980’s. But
lack of coordination eventually resulted in several dialects and variance between hospitals. Now
the ongoing project aims at national reference set to help the biobanks, regional and national
quality registers and structured reporting on individual patient basis.

The other chosen application for SNOMED CT is patient problem list. Finland decided to use CORE
Problem List as foundation for the local effort. CORE Problem List originated from a respectable
group of medical institutions in the U.S. and is maintained by the National Medical Library thus
making the acceptance of the reference set by clinicians so much easier. The ongoing project
translates terminology into Finnish and when finished will cover terms for both professionals and
patients.

[Read more](https://thl.fi/fi/web/tiedonhallinta-sosiaali-ja-terveysalalla/koodistopalvelu/snomed-ct)
(in Finnish).

For international interoperability, FHIR implementations SHOULD use SNOMED CT codes when they are
available, even if a translation is not available in Finnish or Swedish.

#### FinLOINC

[FinLOINC - The Physiological Measurements classification](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=273&versionKey=350)
contains results and findings of clinical measurements that describe the patient's condition.
FinLOINC is based on the Logical Observation Identifiers Names and Codes (LOINC®) nomenclature
maintained by Regenstrief Institute, covering only a small part of it.

The classification is used to describe the physiological measurements in the core information of
medical records.

#### Laboratory Test Codes

Most systems and services in Finland use the laboratory test codes and names specified in the
[laboratory test name set](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=88&versionKey=120)
by Kuntaliitto.

Upcoming European legislation, like that for the European Health Data Space introduces some
pressure to adopt LOINC codes too. Therefore, and for international interoperability in general,
systems SHOULD include LOINC codes in adddition to the national Kuntaliitto codes, where a LOINC
code is known.
