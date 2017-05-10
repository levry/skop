package skop

import skop.data.Money

/**
 * @author levry
 */
class Operation {

    Date date
    // TODO rename to amount
    Money payment
    Money discharge
    String location
    MCC mcc

    static constraints = {
        location blank: false
    }

    static embedded = ['payment', 'discharge']

    Category getCategory() {
        mcc.category
    }
}
