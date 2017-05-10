package skop.data.criteria

import org.hibernate.transform.Transformers
import skop.Category
import skop.Operation

/**
 * @author levry
 */
class OpsDischargeCriteria implements ByCriteria {

    @Override
    List<OpsCategory> list() {
        def criteria = Operation.createCriteria()

        criteria.list {
            createAlias 'mcc', 'mcc'

            projections {
                groupProperty 'mcc.category', 'category'
//                groupProperty 'discharge.currency', 'currency'
                sum 'discharge.value', 'value'
            }

            resultTransformer = Transformers.aliasToBean(OpsCategory)
        } as List<OpsCategory>
    }

    static class OpsCategory {
        Category category
        BigDecimal value
    }
}
