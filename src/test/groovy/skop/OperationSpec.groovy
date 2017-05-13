package skop

import grails.test.mixin.TestFor
import skop.data.Money
import spock.lang.Specification

/**
 * @author levry
 */
@TestFor(Operation)
class OperationSpec extends Specification {

    def "equals discharge currency"() {
        given:
        def operation = new Operation(
                amount: new Money(value: 0, currency: Currency.getInstance(amountCurrency)),
                discharge: new Money(value: 0, currency: Currency.getInstance(dischargeCurrency))
        )

        expect:
        operation.equalsDischargeCurrency() == equalsDischarge

        where:
        amountCurrency | dischargeCurrency || equalsDischarge
        'EUR'          | 'EUR'             || true
        'EUR'          | 'USD'             || false
    }
}
