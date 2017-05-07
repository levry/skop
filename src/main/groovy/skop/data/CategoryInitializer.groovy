package skop.data

import groovy.transform.CompileStatic
import skop.Category

/**
 * @author levry
 */
@CompileStatic
class CategoryInitializer {

    private final def names = ['Продукты', 'Кафе/рестораны', 'Транспорт', 'Развлечения']

    void init() {
        names.each { name ->
            new Category(name: name).save()
        }
    }
}
