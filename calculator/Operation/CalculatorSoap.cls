Class calculator.Operation.CalculatorSoap Extends Ens.BusinessOperation [ ProcedureBlock ]
{

Parameter ADAPTER = "EnsLib.SOAP.OutboundAdapter";

Method Add(pRequest As calculator.Request.AddRequest, Output pResponse As calculator.Response.AddResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "calculator.CalculatorSoap"
 Set tSC = ..Adapter.InvokeMethod("Add",.AddResult,pRequest.intA,pRequest.intB)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.AddResult=$get(AddResult)
 Quit $$$OK
}

Method Divide(pRequest As calculator.Request.DivideRequest, Output pResponse As calculator.Response.DivideResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "calculator.CalculatorSoap"
 Set tSC = ..Adapter.InvokeMethod("Divide",.DivideResult,pRequest.intA,pRequest.intB)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.DivideResult=$get(DivideResult)
 Quit $$$OK
}

Method Multiply(pRequest As calculator.Request.MultiplyRequest, Output pResponse As calculator.Response.MultiplyResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "calculator.CalculatorSoap"
 Set tSC = ..Adapter.InvokeMethod("Multiply",.MultiplyResult,pRequest.intA,pRequest.intB)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.MultiplyResult=$get(MultiplyResult)
 Quit $$$OK
}

Method Subtract(pRequest As calculator.Request.SubtractRequest, Output pResponse As calculator.Response.SubtractResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "calculator.CalculatorSoap"
 Set tSC = ..Adapter.InvokeMethod("Subtract",.SubtractResult,pRequest.intA,pRequest.intB)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.SubtractResult=$get(SubtractResult)
 Quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="calculator.Request.AddRequest">
		<Method>Add</Method>
	</MapItem>
	<MapItem MessageType="calculator.Request.DivideRequest">
		<Method>Divide</Method>
	</MapItem>
	<MapItem MessageType="calculator.Request.MultiplyRequest">
		<Method>Multiply</Method>
	</MapItem>
	<MapItem MessageType="calculator.Request.SubtractRequest">
		<Method>Subtract</Method>
	</MapItem>
</MapItems>
}

}
