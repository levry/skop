package skop.data.criteria

import grails.test.hibernate.HibernateSpec
import skop.Category
import skop.MCC
import skop.Operation
import skop.data.Money

import static skop.data.Money.money
import static skop.data.criteria.OpsDischargeCriteria.*

/**
 * @author levry
 */
class OpsDischargeCriteriaSpec extends HibernateSpec {

    def "group by discharge value"() {
        given:
        def category1 = new Category(name: 'service').save()
        def category2 = new Category(name: 'restourant').save()
        def mcc1 = new MCC(code: 1, category: category1).save()
        def mcc2 = new MCC(code: 2, category: category2).save()
        operation(money(1, 'USD'), mcc1)
        operation(money(2.5, 'USD'), mcc1)
        operation(money(0.5, 'EUR'), mcc1)
        operation(money(0.5, 'USD'), mcc2)

        when:
        def ops = new OpsDischargeCriteria().list()

        then:
        !ops.empty
        findBy(ops, category1, 'USD').value == 1 + 2.5
        findBy(ops, category1, 'EUR').value == 0.5
        findBy(ops, category2, 'USD').value == 0.5
    }

    private Operation operation(Money discharge, MCC mcc) {
        new Operation(
                date: new Date(),
                amount: money(10, 'USD'),
                discharge: discharge,
                mcc: mcc,
                location: 'test place'
        ).save()
    }

    private Money findBy(List<OpsCategory> ops, category1, String currency) {
        ops.find { it.category == category1 }
                .values.find { it.currency.symbol == currency }
    }

}