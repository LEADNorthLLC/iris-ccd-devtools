Class IRISAPP.Install Extends %RegisteredObject
{

/// Run the installation
ClassMethod Run() As %Status
{
    Set tSC = $$$OK
    
    // Install FHIR repo
    #; Set appKey = "/api/fhir"
    Set strategyClass = "HS.FHIRServer.Storage.Json.InteractionsStrategy"
    Set metadataConfigKey = "HL7v40"

    // Install elements that are required for a FHIR-enabled namespace - we don't need a FHIR server, just the libraries
    Do ##class(HS.FHIRServer.Installer).InstallNamespace()

    // Install an instance of a FHIR Service into the current namespace
    #; Do ##class(HS.FHIRServer.Installer).InstallInstance(appKey, strategyClass, metadataConfigKey)
    #; do ##class(Ens.Director).StopProduction()

    #; set cspConfig = ##class(HS.Util.RESTCSPConfig).URLIndexOpen(appKey)
    #; set cspConfig.ServiceConfigName = "FHIR_Http_Service"
    #; set cspConfig.AllowUnauthenticatedAccess = 1
    #; zw cspConfig.%Save()

    #; set strategy = ##class(HS.FHIRServer.API.InteractionsStrategy).GetStrategyForEndpoint(appKey)
    #; set config = strategy.GetServiceConfigData()
    #; set config.DebugMode = 4
    #; do strategy.SaveServiceConfigData(config)

    Return tSC
}

}
