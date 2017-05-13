package skop.data.criteria

import org.hibernate.transform.Transformers
import skop.Category
import skop.Operation
import skop.data.Money

/**
 * @author levry
 */
class OpsDischargeCriteria implements ByCriteria {

    @Override
    List<OpsCategory> list() {
        def criteria = Operation.createCriteria()

        def ops = criteria.list {
            createAlias 'mcc', 'mcc'

            projections {
                groupProperty 'mcc.category', 'category'
                groupProperty 'discharge.currency', 'currency'
                sum 'discharge.value', 'value'
            }

            resultTransformer = Transformers.ALIAS_TO_ENTITY_MAP
        } as List<Map>

        ops.groupBy { it.category }
            .collect { entry ->
                new OpsCategory(
                    category: entry.key,
                    values: entry.value.collect { Map m ->
                        new Money(value: m.value, currency: m.currency)
                    }
                )
            }
    }

    static class OpsCategory {
        Category category
        List<Money> values
    }
}
