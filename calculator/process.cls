/// 
Class calculator.process Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='myapp.request' response='myapp.response' height='2000' width='2000' >
<context>
<property name='add' type='calculator.Request.AddRequest' instantiate='0' />
<property name='divide' type='calculator.Request.DivideRequest' instantiate='0' />
<property name='multiply' type='calculator.Request.MultiplyRequest' instantiate='0' />
<property name='substract' type='calculator.Request.SubtractRequest' instantiate='0' />
</context>
<sequence xend='200' yend='800' >
<trace name='operation' value='request.p1_request.operation_request.p2' xpos='200' ypos='250' />
<switch name='opération' xpos='200' ypos='350' xend='200' yend='700' >
<case condition='request.operation="+"' name='addition' >
<transform name='addition' class='calculator.transfo.add' source='request' target='context.add' xpos='335' ypos='500' />
<call name='add' target='calculator.Operation.CalculatorSoap' async='0' xpos='335' ypos='600' >
<request type='calculator.Request.AddRequest' >
<assign property="callrequest" value="context.add" action="set" />
</request>
<response type='calculator.Response.AddResponse' >
<assign property="response.result" value="callresponse.AddResult" action="set" />
</response>
</call>
</case>
<case condition='request.operation="/"' name='division' >
<transform name='division' class='calculator.transfo.divide' source='request' target='context.divide' xpos='605' ypos='500' />
<call name='divide' target='calculator.Operation.CalculatorSoap' async='0' xpos='605' ypos='600' >
<request type='calculator.Request.DivideRequest' >
<assign property="callrequest" value="context.divide" action="set" />
</request>
<response type='calculator.Response.DivideResponse' >
<assign property="response.result" value="callresponse.DivideResult" action="set" />
</response>
</call>
</case>
<case condition='request.operation="*"' name='multiplication' >
<transform name='multiplication' class='calculator.transfo.multiply' source='request' target='context.multiply' xpos='875' ypos='500' />
<call name='multiply' target='calculator.Operation.CalculatorSoap' async='0' xpos='875' ypos='600' >
<request type='calculator.Request.MultiplyRequest' >
<assign property="callrequest" value="context.multiply" action="set" />
</request>
<response type='calculator.Response.MultiplyResponse' >
<assign property="response.result" value="callresponse.MultiplyResult" action="set" />
</response>
</call>
</case>
<case condition='request.operation="-"' name='soustraction' >
<transform name='soustraction' class='calculator.transfo.substract' source='request' target='context.substract' xpos='1145' ypos='500' />
<call name='substract' target='calculator.Operation.CalculatorSoap' async='0' xpos='1145' ypos='600' >
<request type='calculator.Request.SubtractRequest' >
<assign property="callrequest" value="context.substract" action="set" />
</request>
<response type='calculator.Response.SubtractResponse' >
<assign property="response.result" value="callresponse.SubtractResult" action="set" />
</response>
</call>
</case>
<default name='default' />
</switch>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
