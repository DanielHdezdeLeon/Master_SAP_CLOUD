@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOOKING'
@Metadata.ignorePropagatedAnnotations: false
define view entity ZCDS_BOOKING as select from zdmo_booking
{
  key booking_id as BookingId,
  travel_id as TravelId,
  customer_id as CustomerId,
  agency_id as AgencyId,
  carrier_id as CarrierId,
  connection_id as ConnectionId,
  flight_date as FlightDate,
  booking_date as BookingDate,
  booking_status as BookingStatus,
  currency_code as CurrencyCode,
  flight_price as FlightPrice,
  booking_supplement as BookingSupplement,
  total_price as TotalPrice,
  created_by as CreatedBy,
  created_at as CreatedAt,
  last_changed_by as LastChangedBy,
  last_changed_at as LastChangedAt,
  local_last_changed_at as LocalLastChangedAt
}
