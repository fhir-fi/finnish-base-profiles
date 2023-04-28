### Scope and Usage

#### Identifying that this is a diagnosis

This is an example encounter diagnosis (in Finnish called *käyntidiagnoosi*, even for ward periods).

`category` code `encounter-diagnosis` communicates that is a diagnosis asserted by a clinician.

#### No special characters in codes

Diagnosis code (reason) is in `code`. Note that in THL - Tautiluokitus ICD-10 this code has CodeId
H36.03*, but the special character is removed (see `Koodi1`). Evidence code (the symptom) is handled
similarly.
