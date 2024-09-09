Class CCD.Visualizer.REST.Service.Base Extends %CSP.REST
{

/*Method delegate(pTarget As %String, pRequest As Ens.Request, ByRef pResponse As Ens.Response) As %Status [ Internal, Private ]
{
	Set tSC = $$$OK
	Try {
		#;Add security check here
		$$$ThrowOnError(..ProcessInput(pRequest,.pResponse,pTarget))
		
	} 
	Catch Ex {
		Set tSC = Ex.AsStatus()
	}
	Quit tSC
}

Method OnProcessInput(pInput As %RegisteredObject, ByRef pOutput As %RegisteredObject, pTarget As %String) As %Status
{
	Set tSC = ..SendRequestSync(pTarget,pInput,.pOutput)
	
	#;Determine if result message should contain processing error
	Set tReturnError=0
	///CnR:How should an error be determined? 
	
	If tReturnError && $$$ISERR(pOutput.Status) {
		#;Note StatusErrorText is not stored in result structure
		Do DecomposeStatus^%apiOBJ(pOutput.Status,.err,"-d") 
		Set tResultErrorTxt = ""
		For i=1:1:err {
			Set tResultErrorTxt = tResultErrorTxt_" "_err(i)
		}
		Set pOutput.StatusErrorText =tResultErrorTxt
	}
	QUIT tSC
}
*/
Parameter CHARSET = "utf-8";

Parameter CONTENTTYPE = "application/json";

Parameter HandleCorsRequest = 1;

Parameter PAGESIZE As INTEGER = 20;

ClassMethod OnPreDispatch(pUrl As %String, pMethod As %String, ByRef pContinue As %Boolean) As %Status
{
  SET tSC = $$$OK
  TRY {
    
    // Set the return type according to the Accept type in the request. Default is application/json.
    IF ('..AcceptsContentType(..#CONTENTTYPEJSON)) {
      SET tSC = ..ReportHttpStatusCode(..#HTTP406NOTACCEPTABLE), pContinue=0
      QUIT 
        } ELSE {   
      // This always returns json
      SET %response.ContentType=..#CONTENTTYPEJSON
        }
        
        
        // read request object into %DynamicObject format
    IF ((pMethod'="POST") && (pMethod'="PUT")) || (%request.Content="") {
      SET %request.Content = {}
    } ELSE {
      IF '$isobject(%request.Content) {
        SET tContent = %request.Content
      } ELSE {
        SET tContent = ""
        WHILE '%request.Content.AtEnd {
          SET tContent = tContent_%request.Content.Read()
        }
      }
      IF (tContent="") {
        SET %request.Content = {}
      } ELSE {
        SET tContent = $zconvert(tContent, "I", "UTF8")
        SET %request.Content = ##class(%Library.DynamicObject).%FromJSON(tContent)
      }
    }
        
  } CATCH ex {
    SET tSC = ex.AsStatus()
  }
  QUIT ##class(%iKnow.REST.Base).%ErrorHandler(tSC, .pContinue)
}

ClassMethod %ProcessResult(pStatus As %Status = {$$$OK}, pResult As %DynamicObject = "") As %Status [ Internal ]
{
  #dim %response As %CSP.Response
  SET tSC = $$$OK
  IF $$$ISERR(pStatus) {
    SET %response.Status = 500
    SET tSC = ..StatusToJSON(pStatus, .tJSON)
    IF $isobject(tJSON) {
      SET pResult = tJSON
    } ELSE {
      SET pResult = { "errors": [ { "error": "Unknown error parsing status code" } ] }
    }
  } 
  ELSEIF pStatus=1 {
    IF '$isobject(pResult){
      SET pResult = {
      }
    }
  }
  ELSE {
    SET %response.Status = pStatus
    SET error = $PIECE(pStatus, " ", 2, *)
    SET pResult = {
      "error": (error)
    }
  }
  
  IF pResult.%Extends("%Library.DynamicAbstractObject") {
    WRITE pResult.%ToJSON()
  }
  ELSEIF pResult.%Extends("%JSON.Adaptor") {
    DO pResult.%JSONExport()
  }
  ELSEIF pResult.%Extends("%Stream.Object") {
    DO pResult.OutputToDevice()
  }
  
  QUIT tSC
}

ClassMethod ReportHttpStatusCode(pHttpStatus, pSC As %Status = {$$$OK}) As %Status
{
  Set %response.Status=pHttpStatus
  
  If $$$ISERR(pSC) Do ..outputStatus(pSC)
  /*
  If (+pHttpStatus>=400) {
    Set %response.ContentType = "application/json"
    SET pResult = {
      "error": ($PIECE(pHttpStatus, " ", 2, *))
    }
    Return ..%ProcessResult($$$OK, pResult)
  }*/
      
  Return $$$OK
}

ClassMethod SwaggerSpec() As %Status
{
  Set tSC = ##class(%REST.API).GetWebRESTApplication($NAMESPACE, %request.Application, .swagger)
  Do swagger.info.%Remove("x-ISC_Namespace")
  Set swagger.basePath = "/csp/visualizer/service"
  Set swagger.info.title = "InterSystems IRIS CCD Visualizer API"
  Set swagger.info.version = "0.1"
  Set swagger.host = "localhost:62773"
  Return ..%ProcessResult($$$OK, swagger)
}

}
