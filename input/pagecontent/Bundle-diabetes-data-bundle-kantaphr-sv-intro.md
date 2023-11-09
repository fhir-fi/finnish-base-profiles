This example uses the older
[STU3 profile](https://simplifier.net/finnishphr/fiphr-sd-bloodglucose-stu3) of the Finnish PHR.

{:.dragon}
The example does not validate properly in the context of this implementation guide. Do pay
attention to the validation messages in the [QA report](qa.html) of this implementation guide,
before using this example.

The example uses a customized `display` value in `valueCodeableConcept.coding.display`, as mandated
by Kela (see the
[Narrative guide](https://simplifier.net/guide/FinnishPHRImplementationGuideSTU5/FinnishPHRVitalSignsProfiles?version=current#narrative-guide)
and the [customized localizations](https://simplifier.net/finnishphr/fiphr-vs-vitalsigns)).

The example also refers to the code system `http://hl7.org/fhir/observation-category`
[mandated by the profile](https://simplifier.net/finnishphr/fiphr-sd-bloodglucose-stu3). That
system does not resolve.
