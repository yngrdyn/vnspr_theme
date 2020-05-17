{block name='product_miniature_item'}
  <article class="product-miniature" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">

    {block name='product_thumbnail'}
      <a href="{$product.url}" class="thumbnail product-thumbnail">
        <img
          src = "{$product.cover.medium.url}"
          alt = "{$product.cover.legend}"
          data-full-size-image-url = "{$product.cover.large.url}"
        >
      </a>
    {/block}

    {block name='product_name'}
      <h1 class="h2" itemprop="name"><a href="{$product.url}">{$product.name}</a></h1>
    {/block}

    {block name='product_description_short'}
      <div class="product-description-short" itemprop="description">{$product.description_short nofilter}</div>
    {/block}

    {hook h='displayProductListReviews' product=$product}

    {block name='product_price_and_shipping'}
      {if $product.show_price}
        <div class="product-price-and-shipping">
          {if $product.has_discount}
            {hook h='displayProductPriceBlock' product=$product type="old_price"}

            <span class="regular-price">{$product.regular_price}</span>
            {if $product.discount_type === 'percentage'}
              <span class="discount-percentage discount-product">{$product.discount_percentage}</span>
            {elseif $product.discount_type === 'amount'}
              <span class="discount-amount discount-product">{$product.discount_amount_to_display}</span>
            {/if}
          {/if}

          {hook h='displayProductPriceBlock' product=$product type="before_price"}

          <span itemprop="price" class="price">{$product.price}</span>

          {hook h='displayProductPriceBlock' product=$product type="unit_price"}

          {hook h='displayProductPriceBlock' product=$product type="weight"}
        </div>
      {/if}
    {/block}

    {block name='product_list_actions'}
      <div class="product-list-actions">
        <form action="{$urls.pages.cart}" method="post" class="add-to-cart-or-refresh">
            <input type="hidden" name="token" value="{$static_token}">
            <input type="hidden" name="id_product" value="{$product.id}" class="product_page_product_id">
            <input type="hidden" name="qty" value="1">
            {if Context::getContext()->cart->containsProduct($product.id)}
               <a class="remove-from-cart xsmall" rel="nofollow" href="{Context::getContext()->link->getRemoveFromCartURL($product.id,$product.id_product_attribute)}" data-link-action="remove-from-cart">Remove</a>
            {else}
              {if $product.add_to_cart_url}
                  <button data-button-action="add-to-cart" type="submit"
                    class="add-to-cart">
                    <span class="add-to-cart-icon"></span>
                    <span>{l s='Buy' d='Shop.Theme.Actions'}</span>
                  </button>
              {/if}
            {/if}
          </form>
        {hook h='displayProductListFunctionalButtons' product=$product}
      </div>
    {/block}

  </article>
{/block}
