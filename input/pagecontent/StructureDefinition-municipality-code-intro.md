### Scope and Usage

The purpose of Municipality code is to represent the
[municipality of residence](https://dvv.fi/en/municipality-of-residence) which is always registered
by the Digital and Population Data Services Agency. The municipality of residence indicates that
the person has right to use certain services provided by municipality or wellbeing services county.
Municipalities are part of wellbeing services counties. Municipality of residence will also
indicate in which municipality the person pays taxes.
<blockquote class="stu-note">
  <p><strong>NOTE:</strong>The responsibility for organising primary care services was transferred
  from municipalities to wellbeing services counties on January 1, 2023. This means that the
  municipality code would not be sufficient information in a case of billing wellbeing services
  county from using secondary care services via referral. Nevertheless the municipality code does
  offer one way of deducing the correct wellbeing services county, when needed.</p>
</blockquote>
Municipality of residence differs from address information which represents the contact address of
the patient. In most cases the contact address is at the municipality of residence but for instance
due to work location one might have separate residence which serves as a contact address. The
address which corresponds to municipality of residence is in a different location.

At the time this profile has been created, use cases for using municipality code focus on billing
and deducing the correct wellbeing services county. Although municipality is not the responsible
party of producing wellbeing services, most billing systems still handle invoices on municipality
level. The base profiles do not yet contain a seperate profile to represent wellbeing services
county, so even in other than billing use cases the deducing of the correct county will have to be
done through the municipality. Once all systems are capable of handling counties and there is a
mature national profile for county, the municipality code extension may be deprecated.
