### Scope and Usage

The Finnish Core Patient profile is intended to encapsulate the most common and basic data model of patients in Finnish healthcare systems covering both primary sector, secondary sector (specialty doctors and hospitals) and municipality cases. The profile also presents data that is compulsory information in parts of Finnish legislation. As such the profile should be usable in most Finnish contexts.

### Patient identifier

Patient indentifier has two basic uses in Finnish healthcare: Official and Temporary. Official identifier, aka the personal identifier code (PIC), is granted and handled by [Digital And Population Data Services Agency](https://dvv.fi/en/personal-identity-code). Temporary identifier is defined by Kanta Services ([Temporary identifier](https://www.kanta.fi/en/system-developers/test-etiquette#:~:text=various%20Kanta%20Services.-,Temporary%20identifier,-Temporary%20identifiers%20are)). In addition Kanta also defines set of [test identity codes](https://www.kanta.fi/en/system-developers/test-etiquette#:~:text=events%20is%20forbidden.-,Test%20ID%20and%20other%20identification%20data,-Only%20900%2Dseries) which are being used in many healthcare systems regardless of Kanta integration.

Other identifiers could also be used to identify the patient. These indentifiers are usually system spesific and not necessarily used in other circumstances. Nevertheless it would be appropriate to distinguish these identifiers properly from each other.

### Use of non-disclosure information

Finnish citizens that have requested name and address protection ([Non-disclosure for personal safety](https://dvv.fi/en/non-disclosure-for-personal-safety)) are labeled with the security label. The preferred way to do this is shown below.
 
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