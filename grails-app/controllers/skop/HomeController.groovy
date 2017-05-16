package skop

import skop.data.criteria.ByCriterior
import skop.data.criteria.OpsCriteria
import skop.data.criteria.OpsDischargeCriteria

/**
 * @author levry
 */
class HomeController implements ByCriterior {

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
