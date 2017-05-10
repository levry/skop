package skop

import skop.data.criteria.ByCriteria
import skop.data.criteria.OpsCriteria
import skop.data.criteria.OpsDischargeCriteria

/**
 * @author levry
 */
class HomeController {

    private def byCriteria(Class<? extends ByCriteria> clazz, source = params) {
        def criteria = clazz.newInstance()
        bindData(criteria, source)
        criteria.list()
    }

    def index() {
        def cats = byCriteria(OpsDischargeCriteria)
        def ops = byCriteria(OpsCriteria)
        [
            cats: cats,
            ops: ops
        ]
    }

    static responseFormats = ['json']

    def discharge() {
        respond new OpsDischargeCriteria().list()
    }
}
