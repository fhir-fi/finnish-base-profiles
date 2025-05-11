### Scope and Usage

This profile sets minimum expectations for the Procedure resource to search and fetch current or
historical procedures performed on or for a patient. It identifies which elements, code systems and
value sets SHALL be present in the resource when using this profile.

#### Main procedure and sub-procedures

In many cases more than one procedure are being performed during one encounter. Usually this means
that one of the procedures is the main procedure and others are sub-procedures. Latter ones could
be performed in supporting or assisting purpose (e.g. Anaesthesia) or their task is to describe how
the main procedure was performed (e.g. using robot for performing the procedure). This conjunction
between different procedures is done by using `partOf` reference. The main procedure does not have
`partOf` reference. Examples of this can be found from [Examples](./examples.html#Procedure) page.

#### Code systems

Code systems that are associated with this profile are listed in a table below. It is not required
to use these code systems in every situation, but rather to choose correct code systems depending
on a use case if nessecary. Some explanation of using these code systems can be found from the
website behind the link. The Use column descripes the element in which that particular code system
can be used in Procedure resource.

| Code System              | OID code        | Link          | Use |
|--------------------------|-----------------|-----------------------------------------------------------------------|------|
| THL - toimenpideluokitus | 1.2.246.537.6.2.2007 | [https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=57&versionKey=119](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=57&versionKey=119) | `Procedure.code` | 
| THL - Suun terveydenhuollon toimenpideluokitus | 1.2.246.537.6.33 | [https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=58&versionKey=79](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=58&versionKey=79) | `Procedure.code` |
| AR/YDIN - Toimenpiteen tyyppi | 1.2.246.537.6.601 | [https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=763&versionKey=903](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=763&versionKey=903) | `Procedure.code` |
| Kuntaliitto - Radiologinen tutkimus- ja toimenpideluokitus | 1.2.246.537.6.4 | [https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=44&versionKey=118](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=44&versionKey=118) | `Procedure.code` |

<blockquote class="stu-note">
<p><strong>NOTE:</strong> While writing this profile SNOMED code system is not widely used in
Finland since adopting the code system is still in progess. More information about the subject can
be found on <a href="./terminology.html#snomed-ct">Terminology</a> page. Nevertheless SNOMED codes
SHOULD be used if possible in a faced use case.</p>
<p>THL toimenpideluokitus is based on <a
href="https://norden.diva-portal.org/smash/get/diva2:970547/FULLTEXT01.pdf">Nordic Classification
of Surgical Procedures</a> (NCSP).</p>
</blockquote>
