package gap

import grails.gorm.services.Service

@Service(Actors)
interface ActorsService {

    Actors get(Serializable id)

    List<Actors> list(Map args)

    Long count()

    void delete(Serializable id)

    Actors save(Actors actors)

}