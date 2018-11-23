package gap

import grails.gorm.services.Service

@Service(Films)
interface FilmsService {

    Films get(Serializable id)

    List<Films> list(Map args)

    Long count()

    void delete(Serializable id)

    Films save(Films films)

}