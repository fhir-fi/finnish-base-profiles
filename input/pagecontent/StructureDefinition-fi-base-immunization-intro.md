### Scope and usage

This profile sets minimum expectations for the Immunization resource. It identifies which core
elements, extensions, vocabularies, and value sets could be present in the resource when using this
profile. It provides the floor for standards development for specific use cases.

#### Vaccination Recorder extension

In some cases the practitioner who performed the addministration is not be the same person who
recorded the action. For these cases the vaccinationRecorder extension is created. Recorder is not
required information when recording vaccination to the Kanta's Patient Data Repository or
[Hilmo system](https://thl.fi/fi/tilastot-ja-data/ohjeet-tietojen-toimittamiseen/hoitoilmoitusjarjestelma-hilmo)
but it may be an essential information for EHR.

#### Finnish National Vaccination Register

All vaccinations in Finland are recorded into Kanta's Patient Data Repository and Hilmo system.
Eventually these system determine the required information, at least when recording vaccination. It
is highly recommended to familiarize onself with the
[specification](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=644&versionKey=1572)
when applying this profile although all of the fields may not be relevant in given use case.

#### ATC and VNR codes

See also the terminology section of [Medication Codes](terminology.html#medication-codes) in this
guide.
