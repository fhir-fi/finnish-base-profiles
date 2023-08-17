# Finnish FHIR Base Profiles

This repo contains the source code for the Finnish FHIR base profiles.

The profiling work is performed in a project driven by [HL7 Finland](https://www.hl7.fi).
See the
[announcement](https://www.hl7.fi/hl7-fhir-profilointityo-kaynnistyy-tule-mukaan-vaikuttamaan-kansalliseen-tekemiseen/),
the [running
memo](https://docs.google.com/document/d/1yNq6XMLhWJqi6OELQtWC1DFwdtD9CQulzVOfz-zZCko/edit#), and
[some more details](https://fhir.fi).

The profiles are based on R4, [FHIR 4.0.1](http://hl7.org/fhir/R4/).

Read more about the profiling work in the [index page](input/pagecontent/index.md).

## Published Snapshots

### On build.fhir.org
The results of each commit to this repository are published automatically at the build.fhir.org
infrastructure. You can locate the built snapshot with the branch name. For instance, the latest
commit to the `master` branch is published at
[https://build.fhir.org/ig/fhir-fi/finnish-base-profiles/branches/master](https://build.fhir.org/ig/fhir-fi/finnish-base-profiles/branches/master).

You can also browse the [list of all IG builds](https://fhir.github.io/auto-ig-builder/builds.html).

Similarly the debug info related to the build can be found with the branch name. The build log of
the latest commit to the `master` branch is at
[https://build.fhir.org/ig/fhir-fi/finnish-base-profiles/branches/master/build.log](https://build.fhir.org/ig/fhir-fi/finnish-base-profiles/branches/master/build.log).

You can also track the build info at the
[committers/notification](https://chat.fhir.org/#narrow/stream/179297-committers.2Fnotification/topic/ig-build/)
channel on the [chat.fhir.org](https://chat.fhir.org) Zulip forum.

### On fhir.fi

The results of the latest commit to the `master` branch are also published in
[fhir.fi/finnish-base-profiles/](https://fhir.fi/finnish-base-profiles/).

### On hl7.fi

The official publishing location of the implementation guide is at
[hl7.fi/fhir/finnish-base-profiles/](https://hl7.fi/fhir/finnish-base-profiles/).

Occasionally snapshots are also published there. The published versions are listed on the
[Version History](https://hl7.fi/fhir/finnish-base-profiles/history.html) page.

## Companion Specifications

See also the repo for
[Finnish Implementation Guide for SMART App Launch](https://github.com/fhir-fi/finnish-smart).

## Development

### Required Tools
* NodeJS 18 
* Java 17
* Jekyll (ruby)

Or you can use docker, see [Dockerfile](Dockerfile). 

### Quick Start

With the above requirements installed locally, run

#### On OSX, Linux, or Unix

``` bash
npm install -g fsh-sushi@3.1.0
./_updatePublisher.sh --yes
./_genonce.sh
```

#### On Windows
```
npm install -g fsh-sushi@3.1.0
.\_updatePublisher.bat --yes
.\_genonce.bat
```

### Using Docker

Run

``` bash
docker-compose run runner bash -c "cd /workdir && ./_updatePublisher.sh --yes"
docker-compose run runner bash -c "cd /workdir && ./_genonce.sh"
```

The implementation guide will be generated to the `output/` directory.
