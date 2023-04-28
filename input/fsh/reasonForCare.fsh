Profile: FiBaseReasonForCare
Parent: FiBaseCondition
Id: fi-base-reason-for-care
Title: "FI Base Reason for Care (encounter-diagnosis and reason for visit)"
Description: "This is the Finnish base profile for the encounter-diagnosis and (nurse asserted) reason for visit Conditions."
* ^status = #draft

* subject only Reference(FiBasePatient)

* extension contains PrimaryCondition named primaryCondition 0..1
* extension contains Permanence named permanence 0..1
* extension contains PhysicalExcercise named physicalExcercise 0..1
* extension contains EndocrinologicalDisorder named endocrinologicalDisorder 0..1
* extension contains ConditionCausedByMedication named conditionCausedByMedication 0..1
* extension contains ConditionExternalCause named conditionExternalCause 0..1
* extension contains ConditionCategorizationOfAccident named conditionCategorizationOfAccident 0..1
* extension contains CauseOfAdverseEffect named causeOfAdverseEffect 0..1

Extension: PrimaryCondition
Id: condition-primary
Title: "Primary condition for encounter"
Description: "Encoded information of whether this is the primary/main condition for encounter."
* value[x] only Coding
* valueCoding 1..1
  * system = #urn:oid:1.2.246.537.5.40005.2003
* ^context[+].type = #element
* ^context[=].expression = "FiBaseReasonForCare"

Extension: Permanence
Id: condition-permanence
Title: "Permanence of condition"
Description: "Encoded information of whether this is the permanent."
* value[x] only Coding
* valueCoding 1..1
  * system = #urn:oid:1.2.246.537.5.40003.2003
* ^context[+].type = #element
* ^context[=].expression = "FiBaseReasonForCare"

Extension: PhysicalExcercise
Id: condition-physical-excercise
Title: "Type of physical exercise during which injury occurred."
Description: "Encoded information of the type of physical exercise during which injury occurred."
* value[x] only Coding
* valueCoding 1..1
  * system = #urn:oid:1.2.246.537.6.301.201601
* ^context[+].type = #element
* ^context[=].expression = "FiBaseReasonForCare"

Extension: EndocrinologicalDisorder
Id: condition-endocrinological-disorder
Title: "Endocrinological disorder"
Description: "Code for Endocrinological disorder."
* value[x] only Coding
* ^context[+].type = #element
* ^context[=].expression = "FiBaseReasonForCare"

Extension: ConditionCausedByMedication
Id: condition-caused-by-medication
Title: "Medication that caused this condition"
Description: "Encoded information of medication that caused this condition. Uses ATC-coding."
* value[x] only Coding
* ^context[+].type = #element
* ^context[=].expression = "FiBaseReasonForCare"

Extension: ConditionExternalCause
Id: condition-external-cause
Title: "External cause for diagnosis"
Description: "External cause for diagnosis."
* value[x] only Coding
* ^context[+].type = #element
* ^context[=].expression = "FiBaseReasonForCare"

Extension: ConditionCategorizationOfAccident
Id: condition-categorization-of-accident
Title: "Categorization of the type of accident"
Description: "Encoded categorization of the type of accident leading to injury, illness or death."
* value[x] only Coding
* ^context[+].type = #element
* ^context[=].expression = "FiBaseReasonForCare"

Extension: CauseOfAdverseEffect
Id: condition-cause-of-adverse-effect
Title: "Cause of an adverse effect"
Description: "Encoded information on the cause of an adverse effect, when involving a procedure or medication"
* value[x] only Coding
* ^context[+].type = #element
* ^context[=].expression = "FiBaseReasonForCare"


