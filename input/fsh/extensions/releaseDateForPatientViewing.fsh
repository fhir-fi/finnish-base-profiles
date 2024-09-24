Extension: ReleaseDateForPatientViewing
Id: ReleaseDateForPatientViewing
Title: "ReleaseDateForPatientViewing"
Description: "The extension indicates the end date of the delay, i.e. the first day when the delayed appointment information can be displayed (e.g Omakanta) / *Laajennuksella ilmoitetaan viivästämisen päättymispäivä eli ensimmäinen päivä, jolloin viivästetty asiakirja voidaan näyttää (esim. Omakannassa)*."
Context: Provenance, FiBaseAppointment
* value[x] 1..
* value[x] only date
* value[x] ^short = "End date of the delay / *Viivästämisen päättymispäivä*"
* value[x] ^definition = "The date when the delay of the appointment ends, i.e. the first day when the delayed appointment can be displayed (e.g. Omakanta). / *Päivämäärä, jolloin asiakirjan viivästäminen päättyy eli ensimmäinen päivä, jolloin viivästetty asiakirja voidaan näyttää (esim. Omakanta)*."