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

<div class="stu-note">
  <p>The working group was not able to reach consensus on how to present the details of the
  register (the type of register, <i lang="fi">rekisterin tyyppi</i> and the register specifier, <i
  lang="fi">rekisterin tarkenne</i>).</p>
  <p>Proposed alternatives are:</p>
  <ol>
    <li>use extensions either to the <code>.agent</code> field or to the root of the Provenance
    resource (see the <a
    href="https://hl7.fi/fhir/finnish-base-profiles/1.0-rc15/Provenance-id-for-provenance-1.html"
    >proposal in the first ballot version</a> and the <a href="Provenance-id-for-provenance-1.html"
    >example from Kanta</a>)</li>
    <li>encode the information in <code>.entity</code> fields of Provenance instances (see
    examples for <a
    href="https://hl7.fi/fhir/finnish-base-profiles/1.0-rc21/Provenance-custodian-public-healthcare.html"
    >public healthcare</a> and for <a
    href="https://hl7.fi/fhir/finnish-base-profiles/1.0-rc21/Provenance-custodian-occupational-healthcare.html"
    >private healthcare</a>)</li>
    <li>include the register information in the <code>.reason</code> field of the Provenance
    resource (see <a href="Provenance-ESE-289490.html">example from CGI</a>)</li>
  </ol>
  <p>See also the <a
  href="https://chat.fhir.org/#narrow/stream/179247-Security-and-Privacy/topic/Specific.20register.20in.20Provenance/near/385117093"
  >discussion thread</a> on chat.fhir.org and the GitHub issues <a
  href="https://github.com/fhir-fi/finnish-base-profiles/issues/88">#88</a>, <a
  href="https://github.com/fhir-fi/finnish-base-profiles/issues/135">#135</a>, <a
  href="https://github.com/fhir-fi/finnish-base-profiles/issues/141">#141</a>, and <a
  href="https://github.com/fhir-fi/finnish-base-profiles/issues/163">#163</a>.</p>
  <p>Implementer feedback is appreciated on how to continue work on the topic.</p>
</div>




