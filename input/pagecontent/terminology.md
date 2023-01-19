This page lists notable terminologies used in Finland.

Many of these terminologies are not maintained by HL7 Finland, rather they are published and
maintained elsewhere and included into this implementation guide to raise awareness of their
existence.

When terminologies are readily available in FHIR format, they are imported into this implementation
guide. However, this is currently a manual process and there is no guarantee that the terminologies
are kept up to date with official versions. Readers are encouraged to check the original source of
the terminologies for up-to-date information.

When terminologies are not available in FHIR format, this implementation guide links to the
definitions published elsewhere.

Also please note that most code systems used in this guide are defined in the base FHIR
specification. They are not replicated here.

### CodeSystems
  
<ul>
{% include list-simple-codesystems.xhtml %}
</ul>

See the [FHIR terminology section](https://hl7.org/fhir/terminologies-systems.html) for a complete
discussion on code systems and a list of codes system names used in FHIR.

### ValueSets

<ul>
{% include list-simple-valuesets.xhtml %}
</ul>

See also the
[value sets defined in the FHIR specification](https://hl7.org/fhir/terminologies-valuesets.html).

### ConceptMaps

<ul>
{% include list-simple-conceptmaps.xhtml %}
</ul>

See also the [mappings between value sets](https://hl7.org/fhir/terminologies-conceptmaps.html)
defined in the main FHIR specification. 

### NamingSystems

<ul>
{% include list-simple-namingsystems.xhtml %}
</ul>

See also the [known identifier systems](https://hl7.org/fhir/identifier-registry.html) of the main
FHIR specification.

### Terminologies not available in FHIR format

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

#### Laboratory

Most systems and services in Finland use the laboratory test codes and names specified in the
[laboratory test name set](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=88&versionKey=120)
by Kuntaliitto.

Upcoming European legislation, like that for the European Health Data Space introduces some
pressure to adopt LOINC codes too. Therefore systems SHOULD include LOINC codes in adddition to the
national Kuntaliitto codes, where a LOINC code is known.
