package gap

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class FilmsController {

    FilmsService filmsService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond filmsService.list(params), model:[filmsCount: filmsService.count()]
    }

    def show(Long id) {
        respond filmsService.get(id)
    }

    def showActors(Long id){

        Films films = filmsService.get(id)

        Actors actors = films.actors.find{
            it.firstName == params.firstName && it.lastName == params.lastName
        }

        respond actors
    }


    def create() {
        respond new Films(params)
    }

    def save(Films films) {
        if (films == null) {
            notFound()
            return
        }

        try {
            filmsService.save(films)
        } catch (ValidationException e) {
            respond films.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'films.label', default: 'Films'), films.id])
                redirect films
            }
            '*' { respond films, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond filmsService.get(id)
    }

    def update(Films films) {
        if (films == null) {
            notFound()
            return
        }

        try {
            filmsService.save(films)
        } catch (ValidationException e) {
            respond films.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'films.label', default: 'Films'), films.id])
                redirect films
            }
            '*'{ respond films, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        filmsService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'films.label', default: 'Films'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'films.label', default: 'Films'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

}
