{**
 * 2007-2019 PrestaShop and Contributors
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2019 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
  <div id="contact-link">
    {if $contact_infos.email}
        {* [1][/1] is for a HTML tag. *}
        {l
          s='[0][1]E-mail: [/1][2]%email%[/2]'
          sprintf=[
            '[0]' => '<img src="/themes/vnspr_theme/assets/img/email.svg">',
            '[1]' => '<span class="contact-label">',
            '[/1]' => '</span>',
            '[2]' => '<a href="mailto:'|cat:$contact_infos.email|cat:'" class="dropdown">',
            '[/2]' => '</a>',
            '%email%' => $contact_infos.email
          ]
          d='Shop.Theme.Global'
        }
    {/if}
    {if $contact_infos.phone}
      {* [1][/1] is for a HTML tag. *}
      {l
        s='[5][0][1]Phone: [/1][2]%phone%[/2][3]%phone%[/3][4]'
        sprintf=[
          '[0]' => '<img src="/themes/vnspr_theme/assets/img/phone.svg">',
          '[1]' => '<span class="contact-label">',
          '[/1]' => '</span>',
          '[2]' => '<a href="tel:',
          '[/2]' => '" >',
          '[3]' => '<span>',
          '[/3]' => '</span>',
          '[4]' => '</a>',
          '[5]' => '<span class="separator">|</span>',
          '%phone%' => $contact_infos.phone
        ]
        d='Shop.Theme.Global'
      }
    {/if}
  </div>
