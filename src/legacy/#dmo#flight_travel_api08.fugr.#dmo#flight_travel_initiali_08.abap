"! API for Initializing the Transactional Buffer of the Travel API
"!
FUNCTION /DMO/FLIGHT_TRAVEL_INITIALI_08.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"----------------------------------------------------------------------
  /dmo/cl_flight_legacy08=>get_instance( )->initialize( ).
ENDFUNCTION.
