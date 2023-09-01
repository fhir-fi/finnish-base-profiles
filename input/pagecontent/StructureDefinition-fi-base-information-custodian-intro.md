### Scope and Usage

#### How to communicate Kanta information custodian and register information

The Finnish national healthcare infrastructure uses the concept of the information custodian
(*rekisterinpitäjä*), also known as the data controller or register keeper.

Further, most information in the system needs to be tagged with information of the information
custodian and of the specific register.

For details, please refer to the
[Kanta CDA R2 Header](https://www.kanta.fi/en/jarjestelmakehittajat/potilastiedon-arkiston-cda-r2-header)
specification, version 4.66 or later, chapters 2.2.17, 2.4.21, and 2.4.22.

These details are expressed with the Provenance resource conforming to this profile. Information
custodian is the `.agent` and the registry is specified with one or two `.entity` instances.