<div id="shopping_cart">
    <a rel="nofollow" href="{$cart_url}">
        <div class="blockcart cart-preview {if $cart.products_count > 0}active{else}inactive{/if}" data-refresh-url="{$refresh_url}">
                {if $cart.products_count > 0}
                    <div class="header">
                    {else}
                    <div class="empty-header">
                {/if}
                    <span class="cart-products-count">{$cart.products_count}</span>
                </div>
                <span class="hidden-sm-down">{l s='Cart' d='Shop.Theme.Checkout'}</span>
        </div>
    </a>
</div>