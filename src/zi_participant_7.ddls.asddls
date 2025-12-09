@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Participant Interface View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_Participant_7 
  as select from zparticipant_7
{
    key participant_uuid as ParticipantUuid,
    participant_id as ParticipantId,
    first_name as FirstName,
    last_name as LastName,
    email as Email,
    phone as Phone,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt
    
}
