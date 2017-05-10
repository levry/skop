package skop

import skop.data.Money

/**
 * @author levry
 */
class Operation {

    Date date
    Money payment
    Money discharge
    String location
    MCC mcc

    static constraints = {
        location blank: false
    }

    static embedded = ['payment', 'discharge']
}
