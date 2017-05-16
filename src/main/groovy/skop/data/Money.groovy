package skop.data

import grails.databinding.BindUsing

/**
 * @author levry
 */
class Money {

    @BindUsing({obj, source ->
        source['value'] as BigDecimal
    })
    BigDecimal value
    Currency currency

    boolean equals(o) {
        if(this == o) {
            return true
        }

        if(!(o instanceof Money)) {
            return false
        }

        Money other = (Money) o

        return Objects.equals(currency, other.currency) && Objects.equals(value, other.value)
    }

    int hashCode() {
        return Objects.hash(value, currency)
    }

    @Override
    String toString() {
        "${currency.symbol}${value.toPlainString()}"
    }

    static money(BigDecimal value, String currencyCode) {
        new Money(value: value, currency: Currency.getInstance(currencyCode))
    }
}
