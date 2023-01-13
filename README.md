# Finnish FHIR Base Profiles

This repo contains the source code for the Finnish FHIR base profiles.

The profiling work is performed in a project driven by [HL7 Finland](https://www.hl7.fi).
See the
[announcement](https://www.hl7.fi/hl7-fhir-profilointityo-kaynnistyy-tule-mukaan-vaikuttamaan-kansalliseen-tekemiseen/),
the [running
memo](https://docs.google.com/document/d/1yNq6XMLhWJqi6OELQtWC1DFwdtD9CQulzVOfz-zZCko/edit#), and
[some more details](https://fhir.fi).

The profiles will be based on R4, [FHIR 4.0.1](http://hl7.org/fhir/R4/).

## Published Snapshot

The working version of the IG is published at https://fhir.fi/finnish-base-profiles/.

## Companion Specifications

See also the repo for [Finnish Implementation Guide for SMART App
Launch](https://github.com/fhir-fi/finnish-smart).

## Resources to be Profiled 

* Appointment
* Condition
* Device (?)
* DiagnosticReport
* Encounter
* EpisodeOfCare
* HealthcareService
* Location
* Medication (?)
* MedicationRequest (?)
* MedicationStatement (?)
* MedicationAdministration (?)
* Observation
* Organization (*)
* Patient (*)
* Practitioner (*)
* PractitionerRole
* Schedule
* Slot

(*) The work has started with Patient, Practitioner, and Organization. These should support the implementation guide for SMART App Launch.

(?) Profiling device and medication related resources will be started if we identify implementers who have used these resources and feel there is a need for profiling. Sensotrend uses MedicationAdministration, in Finland with the Kanta PHR, but sees no need for a Finnish profile.


## Required Tools
* NodeJS 18 
* Java 17
* Jekyll (ruby)

Or you can use docker, see [Dockerfile](Dockerfile). 

## Quick Start

With requirements installed locally: 

``` bash
./_updatePublisher.sh --yes
./_genonce.sh
```

Or use the `.bat` versions of the scripts on a Windows machine.

With docker: 

``` bash
docker-compose run runner bash -c "cd /workdir && ./_updatePublisher.sh --yes"
docker-compose run runner bash -c "cd /workdir && ./_genonce.sh"
```

Html output will be generated to `output/StructureDefinition-FiBasePatient.html`.
