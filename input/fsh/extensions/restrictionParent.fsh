Extension: RestrictionParent
Id: RestrictionParent
Title: "RestrictionParent"
Description: "The extension informs, using the THL - Release of minor's patient information to guardians classification, whether guardians have the right to see their minor child's appointment information (e.g. in Omakanta) and whether the disclosure of appointment information to them is permitted in healthcare services. / *Laajennuksella ilmoitetaan THL - Alaikäisen potilastietojen luovuttaminen huoltajille -luokitusta käyttäen, onko huoltajilla oikeus nähdä alaikäisen lapsensa ajanvaraustiedot (esim. Omakannassa) ja onko ajanvaraustietojen luovuttaminen heille sallittu terveydenhuollon palveluissa*."
Context: Provenance, FiBaseAppointment
* . ..1
* . ^short = "Huoltajille luovuttamisen kielto"
* . ^definition = "Huoltajille luovuttamisen kielto THL - Alaikäisen potilastietojen luovuttaminen huoltajille -luokitusta käyttäen. Sallitut arvot 1-4."
* id ..0
* value[x] 1..
* value[x] only Coding
* value[x] from FiBaseRestrictionParentVS (required)
* value[x] ^short = "Huoltajille luovuttamisen kielto"
* value[x] ^definition = "Huoltajille luovuttamisen kielto THL - Alaikäisen potilastietojen luovuttaminen huoltajille -luokitusta käyttäen (1.2.246.537.5.40202.201901)"
* value[x].id ..0
* value[x].system 1..
* value[x].version ..0
* value[x].code 1..
* value[x].code ^short = "Huoltajille luovuttamisen kiellon koodiarvo"
* value[x].code ^definition = "Valuesetin FiBaseRestrictionParentVS mukainen koodiarvo."
* value[x].display 1..
* value[x].display ^short = "Huoltajille luovuttamisen kielto"
* value[x].display ^definition = "Valuesetin FiBaseRestrictionParentVS mukainen arvo. Arvon nimen on vastattava annettua koodiarvoa."
* value[x].userSelected ..0