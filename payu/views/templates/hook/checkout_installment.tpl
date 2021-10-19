<div class="payu-marker-class payu-method-description payu-checkout-installment">
    <img style="width: 121px; margin-top:-20px;" src="{$payu_installment_img}" />
    <p>
        <span id='payu-installments-mini-cart'></span>
        <script type='text/javascript' class="payu-script-tag" >
            document.addEventListener("DOMContentLoaded", function(event) {
                openpayu.options.creditAmount = {$product_price|floatval};
                openpayu.options.posId = '{$credit_pos}';
                openpayu.options.key = '{$credit_pos_key}';
                openpayu.options.showLongDescription = true;
                window.OpenPayU.Installments.miniInstallment('#payu-installments-mini-cart', openpayu.options);
            });
        </script>
    </p>
    <p>
        {l s='Order will be done after positive decision' mod='payu'}
    </p>
</div>
<script type="text/javascript">
    (function () {
        window.payuPaymentLoaded = true;
    })();
</script>
