Instance: FreeSlot
InstanceOf: FiBaseSlot
Description: "Example of a free slot with reference to Schedule and information about service category, service type and appointment type presented in THL code system format."
Usage: #example
* identifier.value = "123456789"
* serviceCategory = urn:oid:1.2.246.537.6.50.201801#SOTE3 "Lääkäripalvelut"
* serviceType = urn:oid:1.2.246.537.6.49.201501#EE "Yleislääkärin palvelu"
* appointmentType = urn:oid:1.2.246.537.6.884.2015#10 "Kertakäynti toimipaikassa"
* schedule = Reference(ScheduleExample)
* status = #free
* start = "2023-01-01T12:00:00+02:00"
* end = "2023-01-01T12:30:00+02:00"