package skop.data.criteria

import grails.test.mixin.TestMixin
import grails.test.mixin.support.GrailsUnitTestMixin
import spock.lang.Specification

/**
 * @author levry
 */
@TestMixin(GrailsUnitTestMixin)
class ByCriteriorSpec extends Specification {

    def "binding props"() {
        given:
        def criteria = new TestCriteria()
        def criterior = new TestCriterior()

        when:
        criterior.byCriteria(criteria, [name: 'test'])

        then:
        criteria.name == 'test'
    }

    def "new instance of criteria"() {
        given:
        def criterior = new TestCriterior()

        when:
        def result = criterior.byCriteria(TestCriteria, [])

        then:
        result == 'null result'
    }

    def "list"() {
        given:
        def result = 'criteria result'
        def criteria = new TestCriteria(result: result)
        def criterior = new TestCriterior()

        when:
        def list = criterior.byCriteria(criteria, [])

        then:
        list == result
    }

    static class TestCriterior implements ByCriterior {

    }

    static class TestCriteria implements ByCriteria {

        String name
        def result

        @Override
        def list() {
            result?:'null result'
        }
    }

}
