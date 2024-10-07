with ada.Text_IO;use ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is

    -- Nuevo tipo con el formato Libra y Peso
    type Peso is record
        Libras : Float;
        Onzas  : Float;
    end record;

    -- Constantes para la conversión (Equivalencias en Kg)
    Lb_a_Kg : constant Float := 0.45359237;
    Oz_a_Kg : constant Float := 0.0283495;


    -- Variables para la entrada de datos
   Peso_Metido: Peso;
   -- Al declarar la variable como tipo Peso, cuando se trabaje
   -- con ella habrá que especificar a cual de los elementos del
   -- tipo pertenece Ej: Peso_Metido.Libras
    Kg: Float;

begin

    Put_Line("Introduce el peso en libras y onzas:");
    Put("Libras: ");
    Get(Peso_Metido.Libras);
    Put("Onzas: ");
    Get(Peso_Metido.Onzas);

    -- Realizar la conversión
   Kg:=(Peso_Metido.Libras*Lb_a_Kg)+(Peso_Metido.Onzas*Oz_a_Kg);

    -- Mostrar el resultado
    Put_Line("El peso en kilogramos es: " & Float'Image(Kg));
end Main;
