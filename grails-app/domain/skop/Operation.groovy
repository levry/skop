package skop

/**
 * @author levry
 */
class Operation {

    Date date
    BigDecimal payment
    String paymentCurrency
    BigDecimal discharge
    String dischargeCurrency
    String location
    MCC mcc

    static constraints = {
        location blank: false
    }
}
