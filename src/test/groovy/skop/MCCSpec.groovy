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
        domain.errors['code']?.code == expectedErrorCode

        where:
        value  | valid || expectedErrorCode
        -1     | false || 'range.toosmall'
        0      | true  || null
        1      | true  || null
        100    | true  || null
        9999   | true  || null
        10000  | false || 'range.toobig'
    }
}
