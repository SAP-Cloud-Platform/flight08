"! API for Saving the Transactional Buffer of the Travel API
"!
FUNCTION /DMO/FLIGHT_TRAVEL_SAVE08.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"----------------------------------------------------------------------
  /dmo/cl_flight_legacy08=>get_instance( )->save( ).
ENDFUNCTION.
