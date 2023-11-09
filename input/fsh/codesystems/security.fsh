CodeSystem: FiBaseSecurityLabelCS
Id: fi-base-security-label-cs
Title: "Finnish CodeSystem for security labels"
Description: "This is the CodeSystem for security labels in accordance with finnish authorities."
* ^experimental = false
* ^caseSensitive = false
* #TURVAKIELTO "Turvakielto"
"A non-disclosure for personal safety reasons according to DVV."

ValueSet: FiBaseSecurityLabelVS
Id: fi-base-security-label-vs
Title: "Finnish ValueSet for security labels in accordance with finnish authorities"
Description: "This is the ValueSet for security labels in accordance with finnish authorities."
* ^experimental = false
* FiBaseSecurityLabelCS#TURVAKIELTO
