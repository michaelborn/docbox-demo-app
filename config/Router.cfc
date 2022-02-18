component {

	function configure() {
		// Set Full Rewrites
		setFullRewrites( true );

		setBaseURL("http://#cgi.HTTP_HOST#:#cgi.SERVER_PORT#/");

		// default route
		route( ":handler/:action?").end();
    }
}