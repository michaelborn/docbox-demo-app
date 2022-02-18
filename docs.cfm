<cfscript>
    docbox = new docbox.DocBox( "JSON", {
        outputDir   : expandPath( "resources/assets/docs" ),
        projectTitle: "Vehicles API"
    });

    docbox.generate(
        source = [{
            dir : expandPath( "models" ),
            mapping : "models"
        }],
        excludes = "docbox,coldbox,testbox,modules"
    );
</cfscript>

<h1>Documentation complete!</h1>
<p><a href="/resources/assets/docs/index.html">View the docs</a></p>