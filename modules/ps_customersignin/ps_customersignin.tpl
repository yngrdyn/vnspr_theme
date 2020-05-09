<div class="user-info">
  {if $logged}
    <a class="logout"  href="{$logout_url}" rel="nofollow" title="{l s='Log me out' d='Shop.Theme.Customeraccount'}">{l s='Sign out' d='Shop.Theme.Actions'}</a>
    <a class="account" href="{$my_account_url}" title="{l s='View my customer account' d='Shop.Theme.Customeraccount'}" rel="nofollow"><span>{$customerName}</span></a>
  {else}
    <a class="login" href="{$my_account_url}" rel="nofollow" title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}">{l s='Login' d='Shop.Theme.Actions'}</a>
    <span class="separator">|</span><a class="register" href="{$urls.pages.register}" rel="nofollow" title="{l s='Create an account' d='Shop.Theme.Customeraccount'}">{l s='Register' d='Shop.Theme.Actions'}</a>
  {/if}
</div>
