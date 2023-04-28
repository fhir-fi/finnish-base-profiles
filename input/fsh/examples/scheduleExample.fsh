Alias: $SCT = http://snomed.info/sct
Instance: ScheduleExample
InstanceOf: FiBaseSchedule
Title: "SNOMED CT coded Schedule"
Description: "This is a Schedule example for appointment book. All of the used codes are from SNOMED code system."
Usage: #example
* identifier.use = #usual
* identifier.system = "http://example.org/scheduleid"
* identifier.value = "45"
* active = true
* serviceCategory.coding = $SCT#408443003
* serviceType = $SCT#788007007
* specialty = $SCT#394814009
* actor = Reference(LocationExample)
* planningHorizon.start = "2023-01-01T09:15:00Z"
* planningHorizon.end = "2033-12-25T09:30:00Z"