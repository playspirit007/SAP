@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Status Text for Event'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_EVENTSTATUSTEXT_7 
  as select from zevent_7
{
    key event_uuid,
        status,
    
        case status
            when 'P' then 'Planned'
            when 'O' then 'Open'
            when 'C' then 'Closed'
            else 'Not definied'
        end as status_text
}
