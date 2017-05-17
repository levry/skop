<div class="field">
    <label for="code"><g:message code="MCC.code.label"/></label>
    <input type="number" id="code" name="code" min="0" max="9999" required value="${mcc?.code}">
</div>
<div class="field">
    <label><g:message code="MCC.category.label" /></label>
    <g:select class="ui dropdown" name="category" from="${skop.Category.list()}"
              optionKey="id" optionValue="name" value="${mcc?.category?.id}" />
</div>
