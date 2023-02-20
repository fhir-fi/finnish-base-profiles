#### Identifying that this is a diagnosis

This is an example encounter diagnosis (in Finnish called *käyntidiagnoosi*, even for ward periods).

`category` code `166` tells that it is a diagnosis (using the Kanta code system).

`category` code `encounter-diagnosis` is used in a standard way.

#### No special characters in codes

Diagnosis code (reason) is in `code`. Note that in THL - Tautiluokitus ICD-10 this code has CodeId
H36.03*, but the special character is removed (see `Koodi1`). Evidence code (the symptom) is handled
similarly.
