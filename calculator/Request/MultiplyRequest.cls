Class calculator.Request.MultiplyRequest Extends Ens.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "calculator.Response.MultiplyResponse";

Property intA As %xsd.int;

Property intB As %xsd.int;

Storage Default
{
<Data name="MultiplyRequestDefaultData">
<Subscript>"MultiplyRequest"</Subscript>
<Value name="1">
<Value>intA</Value>
</Value>
<Value name="2">
<Value>intB</Value>
</Value>
</Data>
<DefaultData>MultiplyRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
