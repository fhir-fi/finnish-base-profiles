Instance: EncounterAtWardInProgress
InstanceOf: FiBaseEncounter
Title: "Encounter - patient is currently receiving care at a ward treating surgical patients"
Description: """An example of a FI Base encounter where a patient is currently receiving care at a ward.
    ### How to find a patient in a ward?

    Many systems have a need to answer the question: "How to find patients/encounters that are at ward
    X at moment T?". 

    There are key points to consider when forming the search criteria:
    * We are most likely interested only in `IMP` (inpatient encounter) encounters, so we should filter by `class`.
    * We are interested only in `in-progress` encounters, so we need to filter by `status`.
    * We are most likely interested in querying by organizational hierarchy, the organizational unit (ward) responsible for the patient (not physical location).

    Organizational ward should be communicated using the `serviceProvider` property. 

    FHIR request parameters:
    `GET /Encounter`
    * class = `IMP`
    * status = `in-progress`
    * period `gt` and `le` -filters as per target moment
    * serviceProvider = id of the ward organization resource

    Historically some systems keep the ward encounter active when the patient is sent to ICU. Leaving 
    the encounter in an `in-progress` state would cause a gotcha: encounter says that it's active but
    patient is not really there. Using encounter´s `location` elements could be used to express that 
    the patient has no active location in the ward, but this might be difficult to process for client
    systems and depend heavily on the organizational and location structures of a facility. Because of
    these problems, the encounter should not be kept `in-progress` when the patient is in an ICU period
    (if there is a need for "recycling" the ward period encounter, it should be set to `finished` and 
    then back to `in-progress` upon return from the ICU).  

    #### Why not use Location.managingOrganization?
    `Encounter`s `location` -field is a reference to `Location` that has a field 
    `managingOrganization`. Use of this to find the organization responsible for the patient is 
    problematic. `Location.managingOrganization` might change for different reasons (a room is 
    assigned to another organization) and this would have an unexpected effect on the 
    responsibility-concern. `Location.managingOrganization` is "too far" from the encounter to be 
    useful in this context.

    #### Querying by physical location
    Querying by location is also an option. Here the focus is on the physical location and not the 
    organizational responsibility towards the patient. [This blog post](https://fhirblog.com/2013/10/24/adventures-in-searching-getting-a-list-of-patients-in-a-ward/)
    will describe the process.
    """
Usage: #example
* id = "id-for-ward-encounter"
* identifier.use = #usual
* identifier.value = "id-for-ward-encounter"
* status = #in-progress
* class.system = "http://terminology.hl7.org/ValueSet/v3-ActEncounterCode"
* class.code = #IMP
* class.display = "inpatient encounter"
* subject.reference = "Patient/id-for-patient"
* period.start = "2022-02-27T01:03:00+02:00"
* serviceProvider.reference = "Organization/1.2.246.10.8286189.10.100012"
* location[0].status = #active
* location[0].period.start = "2022-02-27T01:03:00+02:00"
* location[0].location.reference = "Location/id-for-bed-3"