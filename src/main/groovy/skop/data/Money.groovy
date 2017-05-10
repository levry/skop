package skop.data

/**
 * @author levry
 */
class Money {

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
}
