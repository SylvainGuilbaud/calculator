Class calculator.Request.DivideRequest Extends Ens.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "calculator.Response.DivideResponse";

Property intA As %xsd.int;

Property intB As %xsd.int;

Storage Default
{
<Data name="DivideRequestDefaultData">
<Subscript>"DivideRequest"</Subscript>
<Value name="1">
<Value>intA</Value>
</Value>
<Value name="2">
<Value>intB</Value>
</Value>
</Data>
<DefaultData>DivideRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
