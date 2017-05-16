package skop.data

import groovy.transform.CompileStatic
import skop.Category

/**
 * @author levry
 */
@CompileStatic
class DataInitializer {

    static void initCategories(List<String> names) {
        names.each { name ->
            new Category(name: name).save()
        }
    }
}
