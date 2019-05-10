@AbapCatalog.sqlViewName: '/DMO/CURRHLP08'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Help View for Currency Conversion'
define view /DMO/CURRENCY_HELPER08
  with parameters
    amount             : /dmo/total_price08,
    source_currency    : /dmo/currency_code08,
    target_currency    : /dmo/currency_code08,
    exchange_rate_date : /dmo/booking_date08

  as select from /dmo/agency08

{
  key currency_conversion( amount             => $parameters.amount,
                           source_currency    => $parameters.source_currency,
                           target_currency    => $parameters.target_currency,
                           exchange_rate_date => $parameters.exchange_rate_date,
                           error_handling     => 'SET_TO_NULL' ) as ConvertedAmount
}
