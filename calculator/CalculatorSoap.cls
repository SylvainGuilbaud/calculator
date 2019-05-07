Class calculator.CalculatorSoap Extends %SOAP.WebClient [ ProcedureBlock ]
{

/// This is the URL used to access the web service.
Parameter LOCATION = "http://www.dneonline.com/calculator.asmx";

/// This is the namespace used by the Service
Parameter NAMESPACE = "http://tempuri.org/";

/// Use xsi:type attribute for literal types.
Parameter OUTPUTTYPEATTRIBUTE = 1;

/// Determines handling of Security header.
Parameter SECURITYIN = "ALLOW";

/// This is the name of the Service
Parameter SERVICENAME = "Calculator";

/// This service supports both SOAP 1.1 and SOAP 1.2.
Parameter SOAPVERSION;

/// Adds two integers. This is a test WebService. ©DNE Online
Method Add(intA As %xsd.int(REQUIRED=1), intB As %xsd.int(REQUIRED=1)) As %xsd.int [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("Add").Invoke($this,"http://tempuri.org/Add",.intA,.intB)
}

Method Divide(intA As %xsd.int(REQUIRED=1), intB As %xsd.int(REQUIRED=1)) As %xsd.int [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("Divide").Invoke($this,"http://tempuri.org/Divide",.intA,.intB)
}

Method Multiply(intA As %xsd.int(REQUIRED=1), intB As %xsd.int(REQUIRED=1)) As %xsd.int [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("Multiply").Invoke($this,"http://tempuri.org/Multiply",.intA,.intB)
}

Method Subtract(intA As %xsd.int(REQUIRED=1), intB As %xsd.int(REQUIRED=1)) As %xsd.int [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("Subtract").Invoke($this,"http://tempuri.org/Subtract",.intA,.intB)
}

}
