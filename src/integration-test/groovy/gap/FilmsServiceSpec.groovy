package gap

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
//import org.hibernate.SessionFactory

@Integration
@Rollback
class FilmsServiceSpec extends Specification {

    FilmsService filmsService
  //  SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Films(...).save(flush: true, failOnError: true)
        //new Films(...).save(flush: true, failOnError: true)
        //Films films = new Films(...).save(flush: true, failOnError: true)
        //new Films(...).save(flush: true, failOnError: true)
        //new Films(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //films.id
    }

    void "test get"() {
        setupData()

        expect:
        filmsService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Films> filmsList = filmsService.list(max: 2, offset: 2)

        then:
        filmsList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        filmsService.count() == 5
    }

    void "test delete"() {
        Long filmsId = setupData()

        expect:
        filmsService.count() == 5

        when:
        filmsService.delete(filmsId)
        sessionFactory.currentSession.flush()

        then:
        filmsService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Films films = new Films()
        filmsService.save(films)

        then:
        films.id != null
    }
}
