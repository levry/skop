<div class="field">
    <label for="date"><g:message code="operation.date.label" /></label>
    <input type="datetime-local" id="date" name="date" required value="${op?.date?.format('yyyy-MM-dd\'T\'HH:mm')}" >
</div>
<div class="field">
    <label><g:message code="operation.amount.label" /></label>
    <div class="two fields">
        <div class="field">
            <input type="number" step="0.01" min="0" name="amount.value" id="amount.value"
                   required placeholder="${message(code: 'operation.amount.label')}"
                   value="${op?.amount?.value}">
        </div>
        <div class="field">
            <g:currencySelect name="amount.currency" class="ui dropdown"
                              value="${op?.amount?.currency}" />
        </div>
    </div>
</div>
<div class="field">
    <label><g:message code="operation.discharge.label" /></label>
    <div class="two fields">
        <div class="field">
            <input type="number" step="0.01" min="0" name="discharge.value" id="discharge.value"
                   required placeholder="${message(code: 'operation.discharge.label')}"
                   value="${op?.discharge?.value}">
        </div>
        <div class="field">
            <g:currencySelect name="discharge.currency" class="ui dropdown"
                              value="${op?.discharge?.currency}"/>
        </div>
    </div>
</div>
<div class="field">
    <label for="mcc"><g:message code="operation.mcc.label" /></label>
    <g:select name="mcc" from="${skop.MCC.list()}" optionKey="id" optionValue="codeWithCategory"
              value="${op?.mcc?.id}" />
</div>
<div class="field">
    <label for="location"><g:message code="operation.location.label" /></label>
    <input type="text" id="location" name="location"
           required placeholder="${message(code: 'operation.location.label')}"
           value="${op?.location}">
</div>
