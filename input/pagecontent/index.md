This implementation guide specifies the Finnish FHIR base profiles.

{% include cross-version-analysis-inline.xhtml %} There is no plan yet to base this implementation
guide on [FHIR R5](https://hl7.org/fhir/R5/).

{% include dependency-table-short.xhtml %}

The previous version of this implementation guide depended on the
[International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa/) specification, and many
profile definitions of that version derive from IPA profiles. These IPA-derived profiles are now
moved to the
[Finnish Implementation Guide for SMART App Launch](https://hl7.fi/fhir/finnish-smart/).


### Companion Specifications

There is a separate
[Finnish Implementation Guide for SMART App Launch](https://hl7.fi/fhir/finnish-smart/) that
describes how the
[SMART](https://hl7.org/fhir/smart-app-launch/) specification is applied in Finland.

See also [all FHIR implementation guides published by HL7 Finland](https://hl7.fi/fhir/) and also
[HL7 Finland in Simplifier](https://simplifier.net/organization/hl7finland).

The [Profiles page](profiles.html#other-finnish-profiles) lists some Finnish FHIR implementation
guides published by other parties.

### Why Do We Need Finnish FHIR Base Profiles?

Better flow of information between systems is one of the key enablers for digitalization and
improved efficiency of healthcare systems. Better flow of information is facilitated by
interoperability standards. HL7 FHIR® is one of the most important standards for interoperability
and exchange of healthcare data.

For many things in healthcare it is hard to achieve a global consensus over what data should be
coded and communicated, and how. The base HL7 FHIR standard does an excellent job in defining the
global consensus where it exists. At the same time, it specifically allows and encourages smaller
communities to come up with more specific profiles and implementation guides.

In many cases, the HL7 FHIR standard allows for several ways to implement a functionality. There
are increasing concerns that without a coordinated approach implementers will choose different ways
to implement some features, and this will lead to challenges for interoperability. This
implementation guide attempts to define a consensus within the Finnish FHIR implementers on which
ways we have considered the best fit for use cases in Finland.

In this implementation guide we also describe the code systems and identifiers that are specific
to the Finnish healthcare system.

### Notable FHIR Implementations in Finland

There are dozens of FHIR enabled systems and applications implemented and in use in Finland. This
list does not attempt to be a complete list of all implementations. Rather, it is included here for
readers not familiar with the Finnish healthcare system, as a quick glance to some of the most
notable implementations at the time of writing of the first version of this guide.

#### Kanta

[Kanta](https://www.kanta.fi/) is the Finnish national central registry of health and social
welfare information, with many services available for systems, providers, and citizens. Most of
both the data and the APIs in Kanta system are based on HL7 V3 standards. However, there is
ongoing work to open also FHIR based access to the information.

The part where HL7 FHIR is used the most is the [Kanta PHR](https://www.kanta.fi/phr), a personal
health record platform for storing and exchanging health and wellbeing data produced and governed
by citizens. This part of Kanta is also the one most open to application developers.

Kanta has also implemented a FHIR APIs for
[prescription data](https://simplifier.net/PrescriptionR4) and for
[social welfare services](https://simplifier.net/Kanta-sosiaalihuolto-R4).

#### Omaolo

[Omaolo](https://www.omaolo.fi) is a collection of services developed by DigiFinland, a publicly
funded company. Omaolo has a fully HL7 FHIR based personal health record platform as its core.

#### Terveyskylä / Health Village

[Health Village](http://healthvillage.fi) is yet another publicly funded group of services. It has
built in HL7 [SMART App Launch](https://www.hl7.org/fhir/smart-app-launch/) capability for
interacting with third party apps.

#### Apotti

[Apotti](https://www.apotti.fi/) is a sizeable Epic installation in Finland.
[Epic](https://www.epic.com) is one of the biggest electronic health record system vendors
globally.

#### CGI

The [OMNI360](https://www.cgi.com/fi/fi/tuoteratkaisut/omni360) by CGI Finland is one of the
prominent Finnish electronic health record systems and has several native FHIR APIs.

#### EskoSystems

The [Esko APTJ](https://eskosystems.fi/tuoteperhe/integraatiot/) by Esko Systems is also one of the
prominent Finnish electronic health record systems. It uses several FHIR APIs internally, and
offers a SMART App Launch method to interact with third party systems.

#### Learn more

The [FHIR Demo 2022](https://fhir.fi/en/demo2022/index.html) showcase presented integrations
implemented between a dozen platforms and more than a dozen FHIR apps, all based on HL7 FHIR.
The [FHIR Demo 2023](https://fhir.fi/en/demo2023/) concentrated on these base profiles.
[FHIR Demo 2024](https://fhir.fi/en/demo2024/) extended the geographical scope of the showcase
to cover the Nordic countries. The latest FHIR Demo can always be found on
[fhir.fi/demo](https://fhir.fi/demo/). 

Even those showcases do not cover the full extent to which HL7 FHIR is being used in Finland.
There's a lot going on!

To learn about the current status, please contact [HL7 Finland](https://www.hl7.fi/). We're happy
to give you an overview.

### Profiling Approach

The base FHIR specification works on a global scope. It is hard to achieve consensus on many things
globally. However, smaller regions and jurisdictions are in a better position to agree on tighter
constraints.

#### Local Considerations

For instance, different coding systems and terminologies are used in different parts of the world.
In this implementation guide, we document which code systems and terminologies are used in Finland
and how they are applied in FHIR.

The FHIR standard also allows implementers to implement many features in several ways. One example
is scheduling. Some jurisdictions are working on scheduling API's based on FHIR operations. In
Finland, existing solutions have chosen to go with a more fine grained approach with pure FHIR
resources and the REST interface.

#### International Aspects
<style>
  @counter-style danose {
    system: cyclic;
    symbols: 🇩🇰 🇳🇴 🇸🇪;
    suffix: " ";
  }
  @counter-style uscachauee {
    system: cyclic;
    symbols: 🇺🇸 🇨🇦 🇨🇭 🇦🇺 🇪🇪;
    suffix: " ";
  }
</style>

Our main intent is still to limit profiling specific to Finland. During the process, we actively
monitor other national base profiles. We attempt to harmonize our base profiles with already
published base profiles from other Nordic countries:
<ul style="list-style: danose">
  <li style="list-style-type='🇩🇰'">the Danish <a href="https://hl7.dk/fhir/core">DK Core</a></li>
  <li style="list-style-type='🇳🇴'">the Norwegian core profiles for R4
    <a href="https://simplifier.net/HL7Norwayno-basis/">HL7 Norway no-basis</a></li>
  <li style="list-style-type='🇸🇪'">the <a href="https://hl7.se/fhir/ig/base/">Swedish Base
    Profiles</a></li>
</ul>

See the [presentation slides](Vitalis2023-Nordic_harmonization_of_health_data.pdf) of the session
[Nordic harmonization of health data](https://invitepeople.com/public/events/edd1776c4a/seminars/ca0805fa9c),
given in the [Vitalis](https://vitalis.nu/) conference in May, 2023. They include an initial
comparison of the Danish, Finnish, Norwegian, and Swedish base profile specifications.

Other national base profiles we have drawn inspiration from include
<ul style="list-style: uscachauee">
  <li style="list-style-type='🇺🇸'">the <a href="https://hl7.org/fhir/us/core/">US Core</a></li>
  <li style="list-style-type='🇨🇦'">the <a
    href="https://build.fhir.org/ig/HL7-Canada/ca-baseline/">Canadian baseline</a></li>
  <li style="list-style-type='🇨🇭'">the Swiss <a href="http://fhir.ch/ig/ch-core/index.html">CH
    Core</a></li>
  <li style="list-style-type='🇦🇺'">the Australian <a href="http://hl7.org.au/fhir/4.0.0/">AU 
    Base</a></li>
  <li style="list-style-type='🇪🇪'">the <a
    href="https://build.fhir.org/ig/HL7EE/ig-ee-base/">Estonian Base Implementation Guide</a></li>
</ul>

Regarding international cooperation, please see also the
[National IG Implementations](https://confluence.hl7.org/display/IC/National+IG+Implementations)
page in HL7 International's Confluence.

#### Baseline and Core Profiles

The FHIR community is currently figuring out how different implementation guides interact and can
be layered. See, for instance, the layering approach in the
[Norwegian base profiles](https://simplifier.net/guide/no-basis-entities-individuals/introduction?version=current)
and the explanation on the
[Canadian Baseline](https://build.fhir.org/ig/HL7-Canada/ca-baseline/#base-vs-baseline-vs-core)
specification.

According to those terms, this version of this implementation guide is closest to the national
baseline profile. Its main purpose is to inform implementers of approaches already chosen, and
thereby avoid re-implementing the wheel in a different form for new implementations.

There are other, more use case specific FHIR implementation guides in Finland. For instance, both
the [Finnish Appointment IG](https://simplifier.net/finnishappointment) and the 
[Finnish Scheduling IG](https://simplifier.net/finnishschedulingr4/) focus on scheduling.

Especially the Kanta specific implementation guides for
[Finnish PHR](https://simplifier.net/FinnishPHRR4),
[Kanta FHIR Prescription](https://simplifier.net/PrescriptionR4), and
[Kanta sosiaalihuolto](https://simplifier.net/Kanta-sosiaalihuolto-R4) are closer to national Core
profile specifications.

This implementation guide may also in the future be extended to cover core profiles, in addition to
the base profiles of this version.

#### Must-Support Rules

This version of this implementation guide does not define any
[Must Support](https://build.fhir.org/profiling.html#obligations) rules.

#### Profiles and Examples

We publish profile resources that help implementers validate their implementations.

We also publish examples, as we think they are another good way to interoperability.

Also, where we cannot find consensus and agree on one single approach, we attempt to
document all different approaches used.

The main aim of this implementation guide is to *inform* vendors on how to implement the FHIR
specification in Finnish context. Requirements and constraints are limited, in order to allow for
maximum reusability across a variety of use cases.

In the first versions of the implementation guide, a lot of profiling is done on resource type
level. For instance, the patient identifier is profiled for the Patient profile. Another approach
would be to concentrate on data types. We may evolve the profiling towards that direction in the
future.

### Governance

The profiling work is performed in a project driven by [HL7 Finland](https://www.hl7.fi).
See the
[announcement](https://www.hl7.fi/hl7-fhir-profilointityo-kaynnistyy-tule-mukaan-vaikuttamaan-kansalliseen-tekemiseen/)
(in Finnish), the
[running memo](https://docs.google.com/document/d/1yNq6XMLhWJqi6OELQtWC1DFwdtD9CQulzVOfz-zZCko/edit#),
and [some more details](https://fhir.fi). We warmly welcome new participants to the project. You
may even be compensated for your efforts.

The team involved in creating the first version of the specification includes
* Arto Huusko, CGI Oyj
* Janne Heikkinen, BCB Medical Oy
* Jari Kariniemi, Kymenlaakson hyvinvointialue
* Jari Vuonos, Apotti Oy
* Joni Hirviniemi, Fujitsu
* Jyrki Soikkeli, Apotti Oy
* Kalle Moilanen, Esko Systems Oy
* Marko Kaukonen, BCB Medical Oy
* Markus Lind, Buddy Healthcare Oy
* Markus Suonpää, CGI Finland Oyj
* Miika Langille, Esko Systems Oy
* Mika Jylhä, Esko Systems Oy
* Mika Lentovaara, HUS
* Mika Tuomainen, Kela
* Mikael Rinnetmäki, Sensotrend Oy
* Tero Pekkola, Esko Systems Oy

Each published major version of this implementation guide goes through the ballot and voting
processes of HL7 Finland, and then represents the consensus view of the Finnish FHIR community.

### Collaboration

We want this implementation guide to be useful for you.

If you are implementing FHIR in a system or application that is meant to be used in Finland and are
thinking of some implementation details, you are probably in the right place and this
implementation guide should help you with those questions. If this implementation guide in any way
fails to give you the answers you are looking for, we'd love to hear about it so we can make it
better. Please do be in touch in one of the ways listed below.

#### Open an Issue in GitHub

The source code of this implementation guide is maintained in a
[publicly accessible repository](https://github.com/fhir-fi/finnish-base-profiles) in GitHub.
Issues opened in that GitHub repo are very welcome. They help the team pick up any proposed changes
or additions and to discuss them publicly.

#### Open a Pull Request in GitHub

Pull requests are even better. If you are in a position to suggest how exactly your proposal should
be implemented in the specification, do it! It helps the team maintaining the implementation guide
a great deal.

#### Participate in IG Development and Maintenance

Please also consider joining the development effort. This is the best way to affect the outcome of
the profiling work. You may even be compensated for your efforts. Please be in touch with HL7
Finland to discuss options, if this even remotely interesting for you.

The best implementation guide is the one that reflects the views and the consensus of the whole
FHIR community!

### Safety Considerations
This implementation guide defines data elements, resources, formats, and methods for exchanging
healthcare data between different participants in the healthcare process. As such, clinical safety
is a key concern. Additional guidance regarding safety for the specification’s many and various
implementations is available at
[https://www.hl7.org/FHIR/safety.html](https://www.hl7.org/FHIR/safety.html).

Although the present specification does give users the opportunity to observe data protection and
data security regulations, its use does not guarantee compliance with these regulations. Effective
compliance must be ensured by appropriate measures during implementation projects and in daily
operations. The corresponding implementation measures are explained in the standard. In addition,
the present specification can only influence compliance with the security regulations in the
technical area of standardisation. It cannot influence organisational and contractual matters.

### License and Legal Terms 

This document is licensed under Creative Commons
[CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/) Public Domain Dedication.

This implementation guide contains and references intellectual property owned by third parties
("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to
Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary
licenses or authorizations to utilize Third Party IP in connection with the specification or
otherwise.

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png"
style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned
by Health Level Seven International, registered with the United States Patent and Trademark Office.

See also [http://hl7.org/fhir/license.html](http://hl7.org/fhir/license.html).

#### Other Intellectual Property Statements

{% include ip-statements.xhtml %}
