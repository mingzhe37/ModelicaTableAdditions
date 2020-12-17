within ModelicaTableAdditions.Blocks;
package Test "Test models"
  extends Modelica.Icons.ExamplesPackage;
  model TestTables "Test and compare the table blocks"
    extends Modelica.Icons.Example;
    ModelicaTableAdditions.Blocks.Sources.CombiTimeTable combiTimeTable1(
      tableOnFile=true,
      tableName="tab1",
      fileName=Modelica.Utilities.Files.loadResource("modelica://Modelica/Resources/Data/Tables/test.txt"),
      columns={2})
      annotation (Placement(transformation(extent={{-40,60},{-20,80}})));
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTable2(
      tableOnFile=true,
      tableName="tab1",
      fileName=Modelica.Utilities.Files.loadResource("modelica://Modelica/Resources/Data/Tables/test.txt"),
      columns={2})
      annotation (Placement(transformation(extent={{20,60},{40,80}})));

    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)),
      experiment(StopTime=4));
  end TestTables;
end Test;