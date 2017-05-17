package skop

/**
 * @author levry
 */
class MCC {

    Short code
    Category category

    static constraints = {
        code unique: true, min: (short)0, max: (short)9999
        category nullable: false
    }

    String getCodeWithCategory() {
        "${code} ($category.name)"
    }
}
