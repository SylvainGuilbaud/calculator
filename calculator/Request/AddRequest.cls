Class calculator.Request.AddRequest Extends Ens.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "calculator.Response.AddResponse";

Property intA As %xsd.int;

Property intB As %xsd.int;

Storage Default
{
<Data name="AddRequestDefaultData">
<Subscript>"AddRequest"</Subscript>
<Value name="1">
<Value>intA</Value>
</Value>
<Value name="2">
<Value>intB</Value>
</Value>
</Data>
<DefaultData>AddRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
