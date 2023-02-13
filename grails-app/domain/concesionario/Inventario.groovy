package concesionario

class Inventario {

    Vehiculo vehiculo
    Vendedor vendedor
    Cliente cliente
    Date fechaVenta

    static belongsTo = [vehiculo: Vehiculo, vendedor: Vendedor, cliente: Cliente]
    static mapping = {
        vehiculo cascade: "all"
        vendedor cascade: "all"
        cliente cascade: "all"
    }
    
    static constraints = {
    }
}
