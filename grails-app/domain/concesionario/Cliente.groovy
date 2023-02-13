package concesionario

class Cliente extends Persona{
    
    String telefono
    String celular
    static hasMany = [inventarios: Inventario]
    String getDatosCliente() {
    return "${super.nombres} ${super.apellidos}"
    }

    String toString() {
    return super.identificacion+" - "+super.nombres+" "+super.apellidos
   }

    static constraints = {
    }
}
