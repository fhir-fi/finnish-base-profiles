This is the STU 2 version of this implementation guide.

See the history of published versions in the
[publication directory](https://hl7.fi/fhir/finnish-base-profiles/history.html).

You can track the changes between released snapshot versions through the
Previous Version Comparison section of the [QA report](qa.html). You can also check changes
between ballot and release versions through the
[releases](https://github.com/fhir-fi/finnish-base-profiles/releases) in GitHub.

The development continues, with the intention to get definitions from this implementation guide
into Normative level (see the
[standards development process](https://hl7.org/fhir/versions.html#std-process)) of the FHIR
specification), and to extend the coverage of resources.

Development snapshots will be published throughout the development, ballot, and maintenance cycles.

### Notable Changes

* An extension was added for *palvelutapahtuma* to be able to communicate it also from resources
  that do not have a reference to Encounter.
* Some extensions were adopted from implementation guides for Scheduling, to make them usable in
  wider contexts.
* Dependencies to International Patient Access (IPA) specification have been moved from the base
  profiles to the
  [Finnish Implementation Guide for SMART App Launch](https://hl7.fi/fhir/finnish-smart).

### CI Build Snapshots
The latest version of the `master` branch of the source code repository for this implementation
guide is published at
[https://fhir.fi/finnish-base-profiles/](https://fhir.fi/finnish-base-profiles/).

In addition, the `master` branch and each development branch are built and published automatically
with the build.fhir.org infrastructure. You can locate the built snapshot with
the branch name. For instance, the latest commit to the `master` branch is published at
[https://build.fhir.org/ig/fhir-fi/finnish-base-profiles/branches/master](https://build.fhir.org/ig/fhir-fi/finnish-base-profiles/branches/master).
Or select from the
[list of branches](https://build.fhir.org/ig/fhir-fi/finnish-base-profiles/branches/).

You can also browse the
[list of all IG builds](https://fhir.github.io/auto-ig-builder/builds.html).

Similarly the debug info related to the build can be found with the branch name. The build log of
the latest commit to the `master` branch is at
[https://build.fhir.org/ig/fhir-fi/finnish-base-profiles/branches/master/build.log](https://build.fhir.org/ig/fhir-fi/finnish-base-profiles/branches/master/build.log).

You can also track the build info at the
[committers/notification](https://chat.fhir.org/#narrow/stream/179297-committers.2Fnotification/topic/ig-build/)
channel on the [chat.fhir.org](https://chat.fhir.org) Zulip forum.
