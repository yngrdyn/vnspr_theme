<div id="shopping_cart">
    {if $cart.products_count > 0}
        <a rel="nofollow" href="{$cart_url}">
    {/if}
        <div class="blockcart cart-preview {if $cart.products_count > 0}active{else}inactive{/if}" data-refresh-url="{$refresh_url}">
                <div class="header">
                    <span class="cart-products-count">{$cart.products_count}</span>
                </div>
                <span class="hidden-sm-down">{l s='Cart' d='Shop.Theme.Checkout'}</span>
        </div>
    {if $cart.products_count > 0}
        </a>
    {/if}
</div>