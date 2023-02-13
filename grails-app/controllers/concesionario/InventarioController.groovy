package concesionario

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

import concesionario.Constantes
class InventarioController {

    InventarioService inventarioService
    VehiculoService vehiculoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond inventarioService.list(params), model:[inventarioCount: inventarioService.count()]
    }

    def show(Long id) {
        respond inventarioService.get(id)
    }

    def create() {
    
        List<Vehiculo> vehiculos = vehiculoService.findAllByEstado(Constantes.ESTADO_VEHICULO_DISPONIBLE)
        respond new Inventario(params),model:[vehiculos: vehiculos]
    }

    def save(Inventario inventario) {
        if (inventario == null) {
            notFound()
            return
        }

        try {
            def now = new Date()
            inventario.fechaVenta = now
            inventario.vehiculo.estado="VENDIDO"
            inventarioService.save(inventario)
        } catch (ValidationException e) {
            respond inventario.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'label.created.venta.message', args: [message(code: 'inventario.label', default: 'Inventario'), inventario.id])
                redirect inventario
            }
            '*' { respond inventario, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond inventarioService.get(id)
    }

    def update(Inventario inventario) {
        if (inventario == null) {
            notFound()
            return
        }

        try {
            inventarioService.save(inventario)
        } catch (ValidationException e) {
            respond inventario.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'label.updated.venta.message', args: [message(code: 'inventario.label', default: 'Inventario'), inventario.id])
                redirect inventario
            }
            '*'{ respond inventario, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        inventarioService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'label.deleted.venta.message', args: [message(code: 'inventario.label', default: 'Inventario'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'inventario.label', default: 'Inventario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
