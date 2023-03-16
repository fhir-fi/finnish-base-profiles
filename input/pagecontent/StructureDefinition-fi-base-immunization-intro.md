## Scope and usage

This profile sets minimum expectations for the Immunization resource. It identifies which core elements, extensions, vocabularies, and value sets could be present in the resource when using this profile. It provides the floor for standards development for specific use cases.

## IPA Immunization profile limitations

Finnish base immunization profile is based on the IPA immunization profile which has some restrictions comparing to the standard FHIR Immunization resource. IPA implementation guide can be found [here](https://hl7.org/fhir/us/core/StructureDefinition-us-core-immunization.html).

## Vaccination Recorder extension

In some cases the practitioner who performed the addministration is not be the same person who recorded the action. For these cases the vaccinationRecorder extension is created. Recorder is not required information when recording vaccination to the Kanta's Patient Data Repository or [Hilmo system](https://thl.fi/fi/tilastot-ja-data/ohjeet-tietojen-toimittamiseen/hoitoilmoitusjarjestelma-hilmo) but it may be an essential information for EHR.

## Finnish National Vaccination Register

All vaccinations in Finland are recorded into Kanta's Patient Data Repository and Hilmo system. Eventually these system determine the required information, at least when recording vaccination. It is highly recommended to familiarize onself with the [specification](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=644&versionKey=1572) when applying this profile although all of the fields may not be relevant in given use case.

## ATC and VNR codes

<p>The Anatomical Therapeutic Chemical (ATC) classification is controlled by the World Health Organization (WHO) and The Finnish Medicines Agency Fimea is maintaining the Finnish version of the classification. The classification divides drugs into groups according to which organ or organ system they affect and by their chemical, pharmacological and therapeutic properties.</p>
<p>The Nordic Article Number (VNR) is an  identification code for a specific article of medicine with marketing authorisation in the Nordic countries.</p>
<p>More informations about both subjects can be found at the links below.</p>

[WHO ATC classification](https://www.whocc.no/atc_ddd_index/) | 
[Finnish ATC codes](https://www.fimea.fi/web/en/databases_and_registers/atc-codes) | 
[VNR](https://wiki.vnr.fi/wp-content/uploads/2019/02/Nordic-Article-Numbers-Nordic-instructions-ver-2.0.pdf)
