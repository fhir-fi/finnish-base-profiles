#### How to communicate Kanta custodian and register information

In this example Kanta custodian information (finnish rekisterinpitäjä) is communicated in agent.
It refers to organization via identifier, custodian registry is not part of finnish
SOTE-organization registry (it uses it's own registry 1.2.246.537.6.40174) so it might not exist as
an organization resource.

RegisterTypeCode requires the registerTypeCode extension. It's a coded value from following code systems:

* 1.2.246.537.5.40150.2009 for healthcare
* 1.2.246.537.6.1264.201701 for social care

RegisterSpecifier requires the registerSpecifier extension.

#### Use cases

Custodian, register type code and register specifier information is required when making Kanta 
Medical Records requests.
