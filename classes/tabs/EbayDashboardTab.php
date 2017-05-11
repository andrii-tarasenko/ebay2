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
 *  @copyright 2007-2017 PrestaShop SA
 *  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 *  International Registered Trademark & Property of PrestaShop SA
 */

class EbayDashboardTab extends EbayTab
{

    public function getContent($id_ebay_profiles)
    {
        $nb_products = EbayProduct::getNbProductsByIdEbayProfiles(array($id_ebay_profiles));
        $count_order_errors = false;
        $count_product_errors = false;

        if ($id_ebay_profiles) {
            $count_order_errors = EbayOrderErrors::getAll($id_ebay_profiles);
            $count_product_errors =EbayTaskManager::getErrors($id_ebay_profiles);
        }

        $vars = array(
            'nb_tasks' => EbayTaskManager::getNbTasks($id_ebay_profiles),
            'count_order_errors' => ($count_order_errors?count($count_order_errors):0),
            'count_product_errors' => ($count_product_errors?count($count_product_errors):0),
            'nb_products' => (isset($nb_products[$id_ebay_profiles]) ? $nb_products[$id_ebay_profiles] : 0),
            'dernier_import_order' => EbayConfiguration::get($id_ebay_profiles, 'EBAY_ORDER_LAST_UPDATE'),
            'dernier_import_product' => Configuration::get('DATE_LAST_SYNC_PRODUCTS'),
        );

        return $this->display('dashboard.tpl', $vars);
    }
}
