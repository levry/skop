package skop.data.criteria

import grails.test.hibernate.HibernateSpec
import skop.Category
import skop.MCC
import skop.Operation

import static skop.data.Money.money

/**
 * @author levry
 */
class OpsCriteriaSpec extends HibernateSpec {

    def setup() {
    }

    def cleanup() {
    }

    def "list by criteria"() {
        given:
        def category1 = category('service')
        def category2 = category('transport')

        def mcc1 = mcc(001, category1)
        def mcc2 = mcc(002, category2)

        def op1 = operation(mcc1)
        def op2 = operation(mcc2)
        def op3 = operation(mcc1)

        expect:
        new OpsCriteria().list() as Set == [op1, op2, op3] as Set
        new OpsCriteria(category: category1).list() as Set == [op1, op3] as Set
        new OpsCriteria(category: category2).list() as Set == [op2] as Set
    }

    def "order by date desc"() {
        given:
        def category = category('transport')
        def mcc = mcc(001, category)
        def op1 = operation(mcc, date('2017-05-16'))
        def op2 = operation(mcc, date('2017-05-17'))
        def op3 = operation(mcc, date('2017-05-01'))

        expect:
        new OpsCriteria().list() == [op2, op1, op3]
    }

    private Date date(String s) {
        Date.parse('yyyy-MM-dd', s)
    }

    private MCC mcc(Integer code, Category category1) {
        new MCC(code: code, category: category1).save()
    }

    private Category category(String name) {
        new Category(name: name).save()
    }

    private Operation operation(MCC mcc, Date date = new Date()) {
        new Operation(
                date: date,
                amount: money(20.5, 'USD'),
                discharge: money(0.5, 'USD'),
                location: 'test location',
                mcc: mcc
        ).save()
    }

}