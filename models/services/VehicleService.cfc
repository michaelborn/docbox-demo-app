/**
 * Wraps the Vehicles API to provide higher-order methods for pulling vehicle data.
 * 
 * If you find yourself manipulating vehicle data frequently and consistently,
 * consider moving that vehicle transforming logic into this component.
 * 
 * @author Michael Born
 * @date 04.16.2021
 * @version 2.5.1
 */
component accessors="true"{

    /**
     * API key used by each Vehicle API.
     */
    property name="apiKey" type="string";

    /**
     * Base API URL or URI for the vehicle data API.
     */
    property name="apiURL" default="https://vpic.nhtsa.dot.gov/api/vehicles";

    /**
     * Instantiate the VehicleService and configure the Vehicles API.
     *
     * @apiKey API key for the Edmunds Car API.
     * @apiURL Base URL for the API. This can be left blank unless (and until) Edmuinds changes their base API endpoint.
     */
    public VehicleService function init( required string apiKey, string apiURL ){
        setApiKey( arguments.apiKey );
        if ( arguments.apiURL != "" ) {
            setApiURL( arguments.apiURL );
        }
        return this;
    }

    /**
     * Search vehicle models by vehicle type.
     *
     * @type search by vehicle type. Must be one of "car" or "truck".
     * @since 1.1.0
     * @throws WrongVehicleTypeException if type is not one of "car" or "truck".
     */
    public function searchVehicles( string type = "car" ){

    }

    /**
     * Uses the Edmunds API to process and return information about a VIN
     * 
     * @vin 17-char vehicle code sent to Edmunds. Must match an existing vehicle.
     */
    public struct function decodeVIN( required string vin ){

    }

    /**
     * Converts vehicle data into JSON form and sends it to Elasticsearch for search purposes.
     * 
     * @vehicle vehicle data as returned from the `searchVehicles()` method.
     */
    private function exportToElasticsearch( required struct vehicle ){
        
    }
}