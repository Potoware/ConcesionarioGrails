package concesionario

import grails.gorm.services.Service

@Service(Vendedor)
interface VendedorService {

    Vendedor get(Serializable id)

    List<Vendedor> list(Map args)

    Long count()

    void delete(Serializable id)

    Vendedor save(Vendedor vendedor)

}