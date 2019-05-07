Class calculator.prod Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="calculator.prod" TestingEnabled="true" LogGeneralTraceEvents="true">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="calculator.Operation.CalculatorSoap" Category="" ClassName="calculator.Operation.CalculatorSoap" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
  </Item>
  <Item Name="calculator.process" Category="" ClassName="calculator.process" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="calculator.service" Category="" ClassName="calculator.service" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigNames">calculator.process</Setting>
  </Item>
</Production>
}

}
