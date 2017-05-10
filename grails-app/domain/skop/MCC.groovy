package skop

/**
 * @author levry
 */
class MCC {

    Short code
    Category category

    static constraints = {
        code min: (short)0, max: (short)9999
        category nullable: false
    }

}
