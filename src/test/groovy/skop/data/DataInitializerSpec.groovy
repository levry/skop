package skop.data

import grails.test.hibernate.HibernateSpec
import skop.Category

/**
 * @author levry
 */
class DataInitializerSpec extends HibernateSpec {

    def "should create new category if not exists"() {
        when:
        DataInitializer.initCategories(['service', 'transport'])

        then:
        Category.findByName('service')
        Category.findByName('transport')
    }

    def "should skip if exists category"() {
        given:
        def category = new Category(name: 'service').save(flush: true)

        when:
        DataInitializer.initCategories(['service', 'entertainment'])

        then:
        Category.findByName('service').id == category.id
        Category.findByName('entertainment')
    }

}