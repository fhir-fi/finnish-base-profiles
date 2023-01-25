### Scope and Usage

This profile sets minimum expectations for the Procedure resource to search and fetch current or historical procedures performed on or for a patient. It identifies which elements, code systems and value sets SHALL be present in the resource when using this profile.

### Code systems

Code systems that are associated with this profile are listed in a table below. It is not required to use these code systems in every situation, but rather to choose correct code systems depending on a use case if nessecary. Some explanation of using these code systems can be found from the website behind the link. The Use column descripes the element in which that particular code system can be used in Procedure resource.

| Code System              | OID code        | Link          | Use |
|--------------------------|-----------------|-----------------------------------------------------------------------|------|
| THL - toimenpideluokitus | 1.2.246.537.6.2 | [https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=57&versionKey=119](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=57&versionKey=119) | `Procedure.code` | 
| THL - Suun terveydenhuollon toimenpideluokitus | 1.2.246.537.6.33 | [https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=58&versionKey=79](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=58&versionKey=79) | `Procedure.code` |
| AR/YDIN - Toimenpiteen tyyppi | 1.2.246.537.6.601 | [https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=763&versionKey=903](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=763&versionKey=903) | `Procedure.category` |

> NOTE: While writing this profile SNOMED code system is not videly used in Finland since adopting the code system started only few years ago and the translation process is still in progess. Nevertheless it is allowed to use SNOMED codes if possible in a faced use case. Different vendors inheriting this profile may require spesific code systems depending on a use case.