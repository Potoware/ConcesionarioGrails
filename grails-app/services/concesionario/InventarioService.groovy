package concesionario

import grails.gorm.services.Service

@Service(Inventario)
interface InventarioService {

    Inventario get(Serializable id)

    List<Inventario> list(Map args)

    Long count()

    void delete(Serializable id)

    Inventario save(Inventario inventario)

}