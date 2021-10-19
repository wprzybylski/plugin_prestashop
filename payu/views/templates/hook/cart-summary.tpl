{*
 * PayU
 *
 * @author    PayU
 * @copyright Copyright (c) 2018 PayU
 * @license   http://opensource.org/licenses/LGPL-3.0  Open Software License (LGPL 3.0)
 *
 * http://www.payu.com
*}
<div class="payu-installment-panel">
    <span id="payu-installment-cart-total"></span>
    <script type="text/javascript" class="payu-script-tag">
        document.addEventListener("DOMContentLoaded", function (event) {
            openpayu.options.creditAmount = {$product_price|floatval};
            openpayu.options.posId = '{$credit_pos}';
            openpayu.options.key = '{$credit_pos_key}';
            openpayu.options.showLongDescription = true;
            window.OpenPayU.Installments.miniInstallment('#payu-installment-cart-summary', openpayu.options);
        });

    </script>
</div>
<hr class="separator payu-separator-reset">
<p></p>