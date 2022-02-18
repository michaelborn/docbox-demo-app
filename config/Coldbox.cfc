component {
    function configure() {
        coldbox = {
            reinitPassword = createUUID(),
        };
        environments = {
            // The key is the name of the environment
            // The value is a list of regex to match against cgi.http_host
            development = "127.0.0.1,localhost",
            staging = "^stg",
            production = "mysite.com"
        };
    }

    /**
     * Development environment
     */
    function development() {
        coldbox.customErrorTemplate = "/coldbox/system/exceptions/Whoops.cfm"; // interactive bug report
        coldbox.handlerCaching = false;
        coldbox.handlersIndexAutoReload = true;
        coldbox.eventCaching = false;
        coldbox.viewCaching = false;
        coldbox.reinitPassword = "";
    }
}