Class calculator.transfo.divide Extends Ens.DataTransformDTL [ DependsOn = (myapp.request, calculator.Request.DivideRequest) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='myapp.request' targetClass='calculator.Request.DivideRequest' create='new' language='objectscript' >
<assign value='source.p1' property='target.intA' action='set' />
<assign value='source.p2' property='target.intB' action='set' />
</transform>
}

}
