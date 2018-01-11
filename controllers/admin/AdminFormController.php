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

class AdminFormController extends ModuleAdminController
{
    public function ajaxProcessLoadNbTasksInWork()
    {
        $id_profile = Tools::getValue('id_profile');
        if ($id_profile) {
            $table = _DB_PREFIX_.'ebay_task_manager';
            $sql_select = "SELECT COUNT(DISTINCT(id_product)) AS nb  FROM `".pSQL($table)."` WHERE `locked` != 0 AND `id_ebay_profile` = ".pSQL($id_profile);
            $res_select = DB::getInstance()->executeS($sql_select);
            $nb_tasks_in_work = $res_select[0]['nb'];
            die($nb_tasks_in_work);
        }
        die('0');
    }

    public function ajaxProcessBoostMode()
    {
        Tools::file_get_contents(Tools::getValue('cron_url'));
        $nb_tasks = Db::getInstance()->executeS('SELECT COUNT(*) AS nb	FROM '._DB_PREFIX_.'ebay_task_manager WHERE (`error_code` = \'0\' OR `error_code` IS NULL)');
        echo $nb_tasks[0]['nb'];
    }

    public function ajaxProcessDeleteProfile()
    {
        if (Module::isInstalled('ebay')) {
            $enable = Module::isEnabled('ebay');
            if ($enable) {
                die(EbayProfile::deleteById((int) Tools::getValue('profile')));
            }
        }
    }

    public function ajaxProcessCheckToken()
    {
        $result = EbayConfiguration::updateAPIToken() ? 'OK' : 'KO';
        die($result);
    }
}
