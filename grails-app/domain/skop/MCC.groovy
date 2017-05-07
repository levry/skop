package skop

import grails.rest.Resource

/**
 * @author levry
 */
@Resource(uri="/mcc")
class MCC {

    Short code
    Category category

    static constraints = {
        code range: 0..9999
        category nullable: false
    }

    static mapping = {
        id name: 'code'
    }
}
