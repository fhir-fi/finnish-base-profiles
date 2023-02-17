Alias: $SCT = http://snomed.info/sct
Instance: ScheduleExample
InstanceOf: FiBaseSchedule
Description: "This is a Schedule example for appointment book. All of the used codes are from SNOMED code system."
Usage: #example
* identifier.use = #usual
* identifier.system = "http://example.org/scheduleid"
* identifier.value = "45"
* active = true
* serviceCategory.coding = $SCT#17 "General Practice"
* serviceType = $SCT#124 "General Practice"
* specialty = $SCT#394802001 "General medicine"
* actor = Reference(LocationExample)
* planningHorizon.start = "2023-01-01T09:15:00Z"
* planningHorizon.end = "2033-12-25T09:30:00Z"