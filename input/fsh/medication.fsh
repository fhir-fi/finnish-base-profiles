Profile: FiBaseMedication
Parent: Medication
Id: fi-base-medication
Title: "FI Base Medication"
Description: "This is the Finnish base profile for the Medication resource for other than patient access use cases."
* manufacturer only Reference(FiBaseOrganization)
* ingredient.itemReference only Reference(Substance or FiBaseMedication)