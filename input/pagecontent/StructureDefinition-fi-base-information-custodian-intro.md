### Scope and Usage

#### How to communicate Kanta information custodian and register information

The Finnish national healthcare infrastructure uses the concept of the information custodian
(*rekisterinpitäjä*), also known as the data controller or register keeper.

Most of the information in the Kanta system needs to be tagged with information of the information
custodian and of the specific register.

For details, please refer to the
[Kanta CDA R2 Header](https://www.kanta.fi/en/jarjestelmakehittajat/potilastiedon-arkiston-cda-r2-header)
specification, version 4.66 or later, chapters 2.2.17, 2.4.21, and 2.4.22.

These details are expressed with the Provenance resource conforming to this profile. Information
custodian is the `.agent`.

{:.stu-note}
The working group was not able to reach consensus on how to present the details of the register
(the type of register, *reksterin tyyppi* and the register specifier, *rekisterin tarkenne*). One
option is to use extensions to the information custodian `.agent` or even to the Provenance
resource instance (see
[the ballot version](https://hl7.fi/fhir/finnish-base-profiles/1.0-rc15/StructureDefinition-fi-base-provenance.html)
as one example). Another proposed approach is to
encode this information in `.entity` instances (see
[version 1.0.0-rc21](https://hl7.fi/fhir/finnish-base-profiles/1.0-rc21/StructureDefinition-fi-base-information-custodian.html)
for details). See also the
[discussion thread](https://chat.fhir.org/#narrow/stream/179247-Security-and-Privacy/topic/Specific.20register.20in.20Provenance/near/385117093)
on chat.fhir.org and the GitHub issues
[#88](https://github.com/fhir-fi/finnish-base-profiles/issues/88),
[#135](https://github.com/fhir-fi/finnish-base-profiles/issues/135),
[#141](https://github.com/fhir-fi/finnish-base-profiles/issues/141), and
[#163](https://github.com/fhir-fi/finnish-base-profiles/issues/163).
Implementer feedback is appreciated on how to conotinue work on the topic.
