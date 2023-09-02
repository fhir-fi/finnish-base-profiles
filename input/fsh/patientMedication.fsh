Profile: FiBasePatientMedication
Parent: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medication
Id: fi-base-patient-medication
Title: "FI Base Patient Medication"
Description: "This is the Finnish base profile for the Medication resource for patient access use case."
* manufacturer only Reference(FiBaseOrganization)
* ingredient.itemReference only Reference(Substance or FiBasePatientMedication)