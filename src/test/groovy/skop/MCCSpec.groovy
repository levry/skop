package skop

import grails.test.mixin.TestFor
import spock.lang.Specification
import spock.lang.Unroll

/**
 * @author levry
 */
@TestFor(MCC)
class MCCSpec extends Specification {

    @Unroll('Validate code: #value is #valid with errorCode: #expectedErrorCode')
    void "validate code"() {
        given:
        domain.code = value

        expect:
        domain.validate(['code']) == valid

        where:
        value  || valid
        -1     || false
        0      || true
        1      || true
        100    || true
        9999   || true
        10000  || false
    }
}
