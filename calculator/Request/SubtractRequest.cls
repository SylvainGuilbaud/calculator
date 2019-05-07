Class calculator.Request.SubtractRequest Extends Ens.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "calculator.Response.SubtractResponse";

Property intA As %xsd.int;

Property intB As %xsd.int;

Storage Default
{
<Data name="SubtractRequestDefaultData">
<Subscript>"SubtractRequest"</Subscript>
<Value name="1">
<Value>intA</Value>
</Value>
<Value name="2">
<Value>intB</Value>
</Value>
</Data>
<DefaultData>SubtractRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
