package concesionario

class Vehiculo {
   String marca
   String modelo
   int año
   String color
   String serial
   String estado
  static hasMany = [inventarios: Inventario]
   String toString() {
    return "S/N:"+serial+" - "+marca+" "+modelo
   }
   static constraints = {
   }
}
