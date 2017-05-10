package skop.data.criteria

import skop.Category
import skop.Operation

/**
 * @author levry
 */
class OpsCriteria implements ByCriteria {

    Category category

    Integer offset
    Integer max

    @Override
    def list() {

        def args = [:]
        if(offset) {
            args.offset = offset
        }
        args.max = Math.min(max ?: 10, 100)

        def criteria = Operation.createCriteria()
        criteria.list(args) {
            if (category) {
                eq('mcc.category.id', category.id)
            }
            order('date', 'desc')
        }
    }
}