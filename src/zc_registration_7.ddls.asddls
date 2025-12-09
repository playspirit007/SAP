@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Registration Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_REGISTRATION_7 
  as projection on ZR_Registration_7
{
    key RegistrationUuid,
    RegistrationId,
    EventUuid,
    @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_ParticipantVH_7', element: 'ParticipantUuid' } }]
    @ObjectModel.text.element: ['FullName']
    ParticipantUuid,
    Status,
    Remarks,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    
    _ParticipantText.FullName as FullName,
    
    /* Associations */
    _Event : redirected to parent ZC_EventTP_7,
    _Participant
    
}
