{*
 * PayU
 * 
 * @author    PayU
 * @copyright Copyright (c) 2018 PayU
 * @license   http://opensource.org/licenses/LGPL-3.0  Open Software License (LGPL 3.0)
 *
 * http://www.payu.com
*}
<span style="display: block; margin-top: 10px;">
        <span id="payu-installment-cart-summary"></span>
    </span>
<script type="text/javascript" class="payu-script-tag">
    document.addEventListener("DOMContentLoaded", function (event) {
        openpayu.options.creditAmount = {$product_price|floatval};
        openpayu.options.posId = '{$credit_pos}';
        openpayu.options.key = '{$credit_pos_key}';
        openpayu.options.showLongDescription = true;
        window.OpenPayU.Installments.miniInstallment('#payu-installment-cart-summary', openpayu.options);
    });
    if (document.getElementById("payu-installment-cart-summary").childNodes.length == 0 &&
        typeof openpayu !== 'undefined' &&
        openpayu != null) {
        openpayu.options.creditAmount = {$product_price|floatval};
        openpayu.options.posId = '{$credit_pos}';
        openpayu.options.key = '{$credit_pos_key}';
        openpayu.options.showLongDescription = true;
        window.OpenPayU.Installments.miniInstallment('#payu-installment-cart-summary', openpayu.options);
    }
</script>
