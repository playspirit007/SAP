@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Event Base View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_EVENTTP_7 
  as select from ZI_EVENT_7
  composition [0..*] of ZR_Registration_7 as _Registrations
  association [1..1] to ZI_EventStatusText_7 as _StatusText on $projection.EventUuid = _StatusText.event_uuid
  
  
{
    key EventUuid,
    EventId,
    Title,
    Location,
    StartDate,
    EndDate,
    MaxParticipants,
    Status,
    Description,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    
    _Registrations,
    _StatusText
}
