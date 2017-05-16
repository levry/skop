package skop

import grails.test.mixin.TestFor
import spock.lang.Specification

import static skop.data.Money.money

/**
 * @author levry
 */
@TestFor(Operation)
class OperationSpec extends Specification {

    def "equals discharge currency"() {
        given:
        def operation = new Operation(
            amount: money(0 ,amountCurrency),
            discharge: money(0, dischargeCurrency)
        )

        expect:
        operation.equalsDischargeCurrency() == equalsDischarge

        where:
        amountCurrency | dischargeCurrency || equalsDischarge
        'EUR'          | 'EUR'             || true
        'EUR'          | 'USD'             || false
    }
}
