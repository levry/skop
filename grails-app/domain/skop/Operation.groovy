package skop

import grails.databinding.BindingFormat
import skop.data.Money

/**
 * @author levry
 */
class Operation {

    @BindingFormat("yyyy-MM-dd'T'HH:mm")
    Date date
    Money amount
    Money discharge
    String location
    MCC mcc

    static constraints = {
        location blank: false
    }

    static embedded = ['amount', 'discharge']

    Category getCategory() {
        mcc.category
    }

    boolean equalsDischargeCurrency() {
        amount.currency == discharge.currency
    }
}
