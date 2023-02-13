package concesionario

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class InventarioServiceSpec extends Specification {

    InventarioService inventarioService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Inventario(...).save(flush: true, failOnError: true)
        //new Inventario(...).save(flush: true, failOnError: true)
        //Inventario inventario = new Inventario(...).save(flush: true, failOnError: true)
        //new Inventario(...).save(flush: true, failOnError: true)
        //new Inventario(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //inventario.id
    }

    void "test get"() {
        setupData()

        expect:
        inventarioService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Inventario> inventarioList = inventarioService.list(max: 2, offset: 2)

        then:
        inventarioList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        inventarioService.count() == 5
    }

    void "test delete"() {
        Long inventarioId = setupData()

        expect:
        inventarioService.count() == 5

        when:
        inventarioService.delete(inventarioId)
        sessionFactory.currentSession.flush()

        then:
        inventarioService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Inventario inventario = new Inventario()
        inventarioService.save(inventario)

        then:
        inventario.id != null
    }
}
