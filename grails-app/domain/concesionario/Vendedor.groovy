package concesionario

class Vendedor extends Persona{
    Date fechaIngreso
    String cargo
    static hasMany = [inventarios: Inventario]
    String getDatosVendedor() {
    return "${super.nombres} ${super.apellidos}"
    }
     String toString() {
    return cargo+" - "+super.nombres+" "+super.apellidos
   }
    static constraints = {
    }
}
