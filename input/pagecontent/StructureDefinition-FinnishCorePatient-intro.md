### Scope and Usage

The Finnish Core Patient profile is intended to encapsulate the most common and basic data model of patients in Finnish healthcare systems covering both primary sector, secondary sector (specialty doctors and hospitals) and municipality cases. The profile also presents data that is compulsory information in parts of Finnish legislation. As such the profile should be usable in most Finnish contexts.

### Patient identifier

Patient indentifier has two basic use codes: Official and Temp. Official identifier, aka the personal identifier code (PIC), shall follow the guidelines implemented by Finnish agency [Digital And Population Data Services Agency](https://dvv.fi/en/personal-identity-code).

### Use of non-disclosure information

Finnish citizens that have requested name and address protection ([Non-disclosure for personal safety](https://dvv.fi/en/non-disclosure-for-personal-safety)) should be labeled with the security label as follows:
 
 ```
 <Patient xmlns="http://hl7.org/fhir">
  <meta>
    <security>
      <system value="http://terminology.hl7.org/CodeSystem/v3-Confidentiality"/>
      <code value="R"/>
      <display value="Restricted"/>
    </security>
  </meta>
...  [snip] ...
</Patient>
 ```

 Use of this label should be interpreted according to the law, rouhgly meaning that only personnel using systems in public/official affairs are allowed to see name and address for the patient/citizen.

### Presenting guardian information

In some cases a guardian could be appointed to the patient if the patients is for ex. incapable of managing one's matters due to an illness. In these situations guardian's informations shall be presented with [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) resource with relationship type [GUARD](http://hl7.org/fhir/R4/v3/RoleCode/cs.html#:~:text=3-,GUARD,-guardian).