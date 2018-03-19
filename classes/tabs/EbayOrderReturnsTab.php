<?php
/**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 *  @author    PrestaShop SA <contact@prestashop.com>
 *  @copyright 2007-2018 PrestaShop SA
 *  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 *  International Registered Trademark & Property of PrestaShop SA
 */

class EbayOrderReturnsTab extends EbayTab
{
    public function getContent($id_ebay_profile)
    {
        // Load prestashop ebay's configuration
        $returns= EbayOrder::getAllReturns();
        $url_vars = array(
            'id_tab' => '78',
            'section' => 'orders',
        );

        $url_vars['controller'] = Tools::getValue('controller');

        $url = $this->_getUrl($url_vars);
        $datetime = new DateTime(EbayConfiguration::get($id_ebay_profile, 'EBAY_ORDER_RETURNS_LAST_UPDATE'));

        $date_last_import = date('Y-m-d H:i:s', strtotime($datetime->format('Y-m-d H:i:s')));
        return $this->display('order_returns.tpl', array(
            'type_sync_returns' => (Configuration::get('EBAY_SYNC_ORDERS_RETURNS_BY_CRON')?'Cron':'Prestashop'),
            'returns' => $returns,
            'url' => $url,
            'date_last_import' => $date_last_import,
        ));
    }
}
