package skop.data.criteria

import grails.web.api.WebAttributes
import grails.web.databinding.DataBinder
import groovy.transform.CompileStatic

/**
 * @author levry
 */
@CompileStatic
trait ByCriterior implements DataBinder, WebAttributes {

    def byCriteria(Class<? extends ByCriteria> clazz, bindingSource = params) {
        def criteria = clazz.newInstance()
        byCriteria(criteria, bindingSource)
    }

    def byCriteria(ByCriteria criteria, bindingSource = params) {
        bindData(criteria, bindingSource)
        criteria.list()
    }

}
