package skop

import grails.rest.Resource

/**
 * @author levry
 */
@Resource(uri = "/category", readOnly = true)
class Category {

    String name

    static constraints = {
        name blank: false, unique: true
    }
}
