{*
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
*}

<div class="totebay">
<script type="text/javascript">
    regenerate_token_show = false;
    var module_dir = "{$_module_dir_|escape:'htmlall':'UTF-8'}";
    var id_lang = {$id_lang|escape:'htmlall':'UTF-8'};
    var id_ebay_profile = {$id_ebay_profile|escape:'htmlall':'UTF-8'};
    {if $regenerate_token != false}
    regenerate_token_show = true;
    {/if}
</script>

<link rel="stylesheet" href="{$css_file|escape:'htmlall':'UTF-8'}" />
<link rel="stylesheet" href="{$font_awesome_css_file|escape:'htmlall':'UTF-8'}" />
<script>
    var $j = $;
</script>
{if substr($smarty.const._PS_VERSION_, 0, 3) == "1.4" || substr($smarty.const._PS_VERSION_, 0, 5) == "1.5.2"}
    <link rel="stylesheet" href="{$fancyboxCss|escape:'htmlall':'UTF-8'}" />
    <script src="{$ebayjquery|escape:'htmlall':'UTF-8'}"></script>
    <script src="{$noConflicts|escape:'htmlall':'UTF-8'}"></script>
    <script>
        if(typeof($j172) != 'undefined')
            $j = $j172;
        else
            $j = $;
    </script>
    <script src="{$fancybox|escape:'htmlall':'UTF-8'}"></script>
{/if}
<script src="{$tooltip|escape:'htmlall':'UTF-8'}" type="text/javascript"></script>
<script src="{$tips202|escape:'htmlall':'UTF-8'}" type="text/javascript"></script>

{literal}

{/literal}

{if $show_welcome}
<div class="ebay-welcome">
    <img id="ebay-logo" src="{$path|escape:'htmlall':'UTF-8'}views/img/ebay.png" />
    <div id="ebay-welcome-top" class="ebay-boxes-2-col-table">
        <div class="ebay-boxes-2-col-cell right">
            <div class="ebay-boxes-2-col-cell-content">
                <div id="ebay-welcome-left-content">
                    <p class="title ebay-title">{l s='A PERFECT PARTNER FOR YOUR BUSINESS' mod='ebay'}</p>
                    <p>{{l s='eBay is one of the |b|largest marketplaces in the world that connects buyers and sellers of all sizes around the world|/b|.' mod='ebay'}|replace:'|b|':'<b>'|replace:'|/b|':'</b>'}</p>

                    <p>{l s='eBay represents a great opportunity for you to reach millions of new customers and help you to  grow your business.' mod='ebay'}</p>

                    <p><b>{l s='With the eBay add-on for PrestaShop you can:' mod='ebay'}</b></p>
                    <ul class="ebay-bullet-points">
                        <li>{l s='Export your products from your PrestaShop shop to eBay.' mod='ebay'}</li>
                        <li>{l s='Manage both channels from your back-office.' mod='ebay'}</li>
                        <li>{l s='Develop a profitable additional sales channel.' mod='ebay'}</li>
                    </ul>
                    <p><b>{l s='Start selling now with the PrestaShop FREE add-on for eBay!' mod='ebay'}</b></p>
                </div>
            </div>
        </div>
        <div id="ebay-welcome-right" class="ebay-boxes-2-col-cell">
            <div class="ebay-boxes-2-col-cell-content right">
                <div class="ebay-light-gray-box">
                    <div class="ebay-light-gray-box-content-outer">
                        <div class="ebay-light-gray-box-content">
                            <p class="ebay-light-gray-box-title">{l s='Start selling on eBay with PrestaShop is easy:' mod='ebay'}</p>
                            <ul class="ebay-light-gray-box-ul">
                                <li><span class="ebay-light-gray-box-number">1</span> {l s='Create an eBay business account' mod='ebay'}</li>
                                <li><span class="ebay-light-gray-box-number">2</span> {l s='Open your eBay shop' mod='ebay'}</li>
                                <li><span class="ebay-light-gray-box-number">3</span> {l s='Link your eBay account to the eBay add-on' mod='ebay'}</li>
                                <li><span class="ebay-light-gray-box-number">4</span> {l s='Configure the eBay add-on' mod='ebay'}</li>
                            </ul>
                        </div>
                    </div>
                    {if $free_shop_for_90_days}
                    <div class="ebay-dark-gray-box-container">
                        <p class="ebay-dark-gray-box-title">
                            {l s='Open your shop for free' mod='ebay'}
                        </p>
                        <div class="ebay-dark-gray-box-content">
                            {l s='Begin or boost your activity on eBay, enjoying ' mod='ebay'}<b> {l s='90 free days of subscription' mod='ebay'}</b> {l s='to eBay Shops' mod='ebay'}<br/>
                            <a href="{l s='http://pages.ebay.fr/promos/termsfrstoretrial3months/' mod='ebay'}" target="_blank">{l s='More informations' mod='ebay'}</a>
                        </div>
                        <img src="../modules/ebay/views/img/open_your_shop.jpg" alt="" id="open_your_shop">
                        <div class="clear clearfix"></div>
                    </div>
                    {/if}
                </div>
            </div>
        </div>
        <div style="clear:both"></div>
    </div>
</div>
{/if}


                {if $show_welcome}
                    <legend><img src="{$path|escape:'htmlall':'UTF-8'}logo.gif" alt="" />{l s='eBay Module Status' mod='ebay'}

                    </legend>

                    <div>
                        {if empty($alert)}
                            <p id="ebay-no-profile">{l s='You don\'t have any profile setup yet' mod='ebay'}</p>
                            {if $is_version_one_dot_five_dot_one}
                                <br/><img src="../modules/ebay/views/img/warn.png" /><strong>{l s='You\'re using version 1.5.1 of PrestaShop. We invite you to upgrade to version 1.5.2  so you can use the eBay module properly.' mod='ebay'}</strong>
                                <br/><strong>{l s='Please synchronize your eBay sales in your Prestashop front office' mod='ebay'}</strong>
                            {/if}
                        {else}
                            <img src="../modules/ebay/views/img/warn.png" /><strong>{l s='Please complete the following settings to configure the module' mod='ebay'}</strong>
                            <br />{if in_array('registration', $alert)}<img src="../modules/ebay/views/img/warn.png" />{else}<img src="../modules/ebay/views/img/valid.png" />{/if} 1) {l s='Register the module on eBay' mod='ebay'}
                            <br />{if in_array('allowurlfopen', $alert)}<img src="../modules/ebay/views/img/warn.png" />{else}<img src="../modules/ebay/views/img/valid.png" />{/if} 2) {l s='Allow url fopen' mod='ebay'}
                            <br />{if in_array('curl', $alert)}<img src="../modules/ebay/views/img/warn.png" />{else}<img src="../modules/ebay/views/img/valid.png" />{/if} 3) {l s='Enable cURL' mod='ebay'}
                            <br />{if in_array('SellerBusinessType', $alert)}<img src="../modules/ebay/views/img/warn.png" />{else}<img src="../modules/ebay/views/img/valid.png" />{/if} 4) {l s='Please register an eBay business seller account to configure the application' mod='ebay'}
                        {/if}
                    </div>
                {else}
                        {if $profiles && count($profiles)}

                    {*<div class="panel-heading">
                         <img src="{if isset($_path) && !empty($_path)}{$_path|escape:'htmlall':'UTF-8'}{elseif isset($path)}{$path|escape:'htmlall':'UTF-8'}{/if}logo.gif" alt="" />{l s='eBay Profiles' mod='ebay'}
                             {if $debug == 1}
                                 <small  style="background-color: #F80; color: #FFF; padding:5px;">in SANDBOX mode  !!</small>
                             {/if}

                    </div>*}
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="panel clearfix panel-info">
                                        <form class="form-horizontal" role="form">
                                            <label class="control-label pull-left">
                                                {l s='Profiles' mod='ebay'} :
                                            </label>

                                            {* Custom dropdown with table inside *}
                                            <div class="pull-left">
                                                <div class="dropdown js-user-dropdown">
                                                    <button class="form-control dropdown-toggle" type="button" data-toggle="dropdown">
                                                        {$current_profile->ebay_user_identifier}<span class="caret"></span>
                                                    </button>

                                                    <ul class="dropdown-menu">
                                                        <li class="clearfix head">
                                                            <span class="col-xs-5">{l s='user' mod='ebay'}</span>
                                                            <span class="col-xs-2">{l s='country' mod='ebay'}</span>
                                                            <span class="col-xs-2 text-right"><small>{l s='ann.' mod='ebay'}</small></span>
                                                            <span class="col-xs-1 text-right"><small>{l s='ann. err.' mod='ebay'}</small></span>
                                                            <span class="col-xs-1 text-right"><small>{l s='ord. err.' mod='ebay'}</small></span>
                                                            <span class="col-xs-1 text-right"><small>{l s='tasks' mod='ebay'}</small></span>
                                                        </li>
                                                        {foreach from=$profiles item=profile}

                                                            <li>
                                                                <a class="{if $current_profile->id == $profile.id_ebay_profile}selected{/if} clearfix" href="#" data-value="{$profile.id_ebay_profile|escape:'htmlall':'UTF-8'}">
                                                                    <span id = 'name' class="col-xs-5">{$profile.ebay_user_identifier|escape:'htmlall':'UTF-8'}</span>
                                                                    <span class="col-xs-2">{$profile.site_name|escape:'htmlall':'UTF-8'}</span>
                                                                    {if $profile.token == 0 }
                                                                        <span class="col-xs-5 text-right">{l s='Non associé à eBay' mod='ebay'}</span>
                                                                    {elseif $profile.category == 0}
                                                                        <span class="col-xs-5 text-right">{l s='Aucune catégorie configurée' mod='ebay'}</span>
                                                                    {else}
                                                                        <span class="col-xs-2 text-right"><span class="badge badge-success">{$profile.nb_products}</span></span>
                                                                        <span class="col-xs-1 text-right"><span class="badge badge-danger">{$profile.count_product_errors}</span></span>
                                                                        <span class="col-xs-1 text-right"><span class="badge badge-danger">{$profile.count_order_errors}</span></span>
                                                                        <span class="col-xs-1 text-right"><span class="badge badge-success">{$profile.nb_tasks}</span></span>
                                                                    {/if}



                                                                </a>
                                                            </li>
                                                        {/foreach}

                                                    </ul>
                                                </div>
                                            </div>

                                            <button type="button" class="btn btn-default pull-left" title="add profile">
                                               <a href="{$add_profile_url|escape:'htmlall':'UTF-8'}"> <i class="icon-plus"></i></a>
                                            </button>

                                            <button type="button" class="btn btn-default pull-left delete-profile" title="remove profile" href="#popin-remove-profile" data-profile="{$current_profile->id}">
                                                <i class="icon-trash"></i>
                                            </button>
                                            {if $debug == 1}
                                                <small  style="background-color: #fbbb22; color: #FFF; padding: 0 12px; display: inline-block; height: 31px; line-height: 31px; border-radius: 3px;">{l s='in SANDBOX mode !' mod='ebay'}</small>
                                            {/if}
                                            <div class="pull-right">
                                                <span title="<h4>Aide</h4><p>Ici une paragraphe explicatif sur le fonctionnement du selecteur de profil.</p>" data-toggle="tooltip" data-html="true" data-placement="left" class="pointer text-info">
                                                  <a href="#popin-help" class="js-popin-help"><i class="process-icon-help"></i></a>
                                                </span>
                                            </div>

                                            <div id="popin-container-help">
                                                {* Category add modal *}
                                                <div class="popin popin-lg" id="popin-help" style="display: none; width: 700px;overflow-x: hidden;">

                                                    <div class="new new_aide" style="width: 100%;text-align: center;  margin: 35px;">
                                                        <span><b>{l s='Help for module eBay' mod='ebay'}</b></span></br>
                                                        </br></br>
                                                        <a id="" href="{l s='http://www.202-ecommerce.com/ebay/tuto-en' mod='ebay'}" target="_blank"><img id="ebay-install-pict" src="../modules/ebay/views/img/{l s='ebay_video_en' mod='ebay'}.png" /></a>
                                                        <div id="" style=" float: right; width: 45%; display: inline-block; text-align: left;">
                                                        <p >{l s='Problemes courants' mod='ebay'}</p>
                                                            <a class="kb-help" data-errorcode="{$help_listing_rejection.errorcode}" data-module="ebay" data-lang="{$help_listing_rejection.lang}" module_version="{$help_listing_rejection.module_version}" prestashop_version="{$help_listing_rejection.prestashop_version}"></a></br>
                                                            <a class="kb-help" data-errorcode="{$help_order_import.errorcode}" data-module="ebay" data-lang="{$help_order_import.lang}" module_version="{$help_order_import.module_version}" prestashop_version="{$help_order_import.prestashop_version}"></a>

                                                        <p id=>{l s='Liens utiles' mod='ebay'}</p>

                                                            <a href="https://help.202-ecommerce.com" target="_blank">{l s='Guide utilisateur' mod='ebay'}</a></br>
                                                            <a href="https://support.202-ecommerce.com" target="_blank">{l s='Support' mod='ebay'}</a></br>
                                                            <b><a href="{if $site_extension == 'fr'}http://202-ecommerce.com/ebay/{else}http://en.202-ecommerce.com/ebay-en/{/if}"  target="_blank">{l s='Evolutions du module' mod='ebay'}</a></b>

                                                        </div>
                                                    </div>
                                                    <div class="new new_aide" style="width: 100%; display: inline-block;text-align: center; margin: 35px;">
                                                        <span  style="text-align: center"><b>{l s='Help for eBay' mod='ebay'}</b></span></br>
                                                        </br></br>
                                                        <div id="" style="padding-bottom: 3em; float: left; width: 45%;">
                                                            <img id="ebay-logo" src="../modules/ebay/views/img/ebay.png" />
                                                            <p>{l s='A PERFECT PARTNER FOR YOUR BUSINESS' mod='ebay'}</p>
                                                            <p>{{l s='eBay is one of the |b|largest marketplaces in the world that connects buyers and sellers of all sizes around the world|/b|.' mod='ebay'}|replace:'|b|':'<b>'|replace:'|/b|':'</b>'}
                                                                {l s='eBay represents a great opportunity for you to reach millions of new customers and help you to  grow your business.' mod='ebay'}</p>
                                                        </div>
                                                        <div id="" style=" float: right; width: 45%;text-align: left;">
                                                        <p id="">{l s='Liens utiles' mod='ebay'}</p>

                                                            <a class="kb-help" data-errorcode="{$help_ebay_seller.errorcode}" data-module="ebay" data-lang="{$help_ebay_seller.lang}" module_version="{$help_ebay_seller.module_version}" prestashop_version="{$help_ebay_seller.prestashop_version}"></a></br>
                                                            <a href="https://help.202-ecommerce.com/fr/ebay-pour-prestashop/informations-generales/support-marchand-ebay/" target="_blank">{l s='Frais et commissions eBay pour les vendeurs professionnels' mod='ebay'}</a></br>
                                                            <a href="{$pro_url|escape:'htmlall':'UTF-8'}" target="_blank">{l s='Contacter le service aux vendeurs eBay' mod='ebay'}</a>

                                                        </div>
                                                    </div>
                                                    <div class="panel-footer" style="text-align: center">
                                                        <button class="close_popin_help btn btn-default">OK</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <form class="change_profile" method="post">
                                            <input type="hidden" name="ebay_profile" value="" />
                                            <input type="hidden" name="action" value="logged" />
                                        </form>
                                    </div>
                                </div>
                            </div>




                {*<div class="panel-body well">
                            <select class="ebay_profils">
                                {foreach from=$profiles item=profile}
                                <option {if $current_profile->id == $profile.id_ebay_profile}selected{/if} id="{$profile.id_ebay_profile|escape:'htmlall':'UTF-8'}">
                                    {$profile.ebay_user_identifier|escape:'htmlall':'UTF-8'} | {$profile.site_name|escape:'htmlall':'UTF-8'}
                                </option>

                                {/foreach}
                            </select>
                            <a href class="delete-profile" data-profile="{$profile.id_ebay_profile|escape:'htmlall':'UTF-8'}">
                                <img src="../img/admin/delete.gif" /></a>
                            <a href="{$add_profile_url|escape:'htmlall':'UTF-8'}"><img src="../img/admin/add.gif">{l s='Add a New Profile' mod='ebay'}</a>
                            <form class="change_profile" method="post">
                                <input type="hidden" name="ebay_profile" value="" />
                                <input type="hidden" name="action" value="logged" />
                            </form>

                </div>*}

                            {* <br>
                             {l s='The bold profile is your current profile. To change the profile you are currently working with, click on the desired profile' mod='ebay'}
                             <br><br>*}
                        {else}
                            <legend><img src="{$path|escape:'htmlall':'UTF-8'}logo.gif" alt="" />{l s='Status of your eBay Add-on' mod='ebay'}</legend>
                            <p id="ebay-no-profile">{l s='You don\'t have any profile setup yet' mod='ebay'}</p>
                        {/if}
                    {/if}

<div style="clear:both"></div>

<!-- seller tips -->
{if $show_seller_tips}
    <div id="seller-tips" class="ebay-welcome" style="display:none">
        <div id="ebay-tips" class="ebay-boxes-2-col-table">
            <div class="ebay-boxes-2-col-cell right">
                <div class="ebay-boxes-2-col-cell-content">
                    <div id="ebay-welcome-left-content" style="padding-bottom: 3em">
                        <img id="ebay-logo" src="../modules/ebay/views/img/ebay.png" />
                        <p class="title ebay-title">{l s='A PERFECT PARTNER FOR YOUR BUSINESS' mod='ebay'}</p>
                        <p>{{l s='eBay is one of the |b|largest marketplaces in the world that connects buyers and sellers of all sizes around the world|/b|.' mod='ebay'}|replace:'|b|':'<b>'|replace:'|/b|':'</b>'}</p>

                        <p>{l s='eBay represents a great opportunity for you to reach millions of new customers and help you to  grow your business.' mod='ebay'}</p>
                    </div>
                </div>
            </div>
            <div id="ebay-welcome-right" class="ebay-boxes-2-col-cell">
                <div class="ebay-boxes-2-col-cell-content right">
                    <div class="ebay-light-gray-box">
                        <div class="ebay-light-gray-box-content-outer">
                            <div class="ebay-light-gray-box-content">
                                <p class="ebay-light-gray-box-title">{l s='Tips to sell more on eBay:' mod='ebay'}</p>
                                <ul class="ebay-light-gray-box-ul">
                                    <li>
                                        {assign var="link" value="<a href=\"{$title_desc_url|escape:'htmlall':'UTF-8'}\" target=\"_blank\">"}
                                        <span class="ebay-light-gray-box-number">1</span> <b>{l s='Help buyers to find your product:' mod='ebay'}</b> {{l s='Write good |a|titles and descriptions|/a|' mod='ebay'}|replace:'|a|':$link|replace:'|/a|':'</a>'}</a>
                                    </li>
                                    <li>
                                        {assign var="link" value="<a href=\"{$similar_items_url|escape:'htmlall':'UTF-8'}\" target=\"_blank\">"}
                                        <span class="ebay-light-gray-box-number">2</span> <b>{l s='Make your products competitive:' mod='ebay'}</b> {{l s='|a|research on eBay for similar products|/a| to yours and compare with your prices.' mod='ebay'}|replace:'|a|':$link|replace:'|/a|':'</a>'}
                                    </li>
                                    <li>
                                        {assign var="link" value="<a href=\"{$picture_url|escape:'htmlall':'UTF-8'}\" target=\"_blank\">"}
                                        <span class="ebay-light-gray-box-number">3</span> {{l s='|b|Take special care of your product pictures,|/b| |a|this will help buyers to buy from you.|/a|' mod='ebay'}|replace:'|b|':'</b>'|replace:'|/b|':'</b>'|replace:'|a|':$link|replace:'|/a|':'</a>'}
                                    </li>
                                    <li>
                                        {assign var="link" value="<a href=\"{$top_rated_url|escape:'htmlall':'UTF-8'}\" target=\"_blank\">"}
                                        <span class="ebay-light-gray-box-number">4</span> {{l s='|b|Make buyers to come back|/b| by |a|delivering a great service|/a| and offering free shipping.' mod='ebay'}|replace:'|b|':'</b>'|replace:'|/b|':'</b>'|replace:'|a|':$link|replace:'|/a|':'</a>'}                                                        </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div style="clear:both"></div>
        </div>
    </div>

    {if $current_profile && !$add_profile}
<div class="row">
    {* Main navigation *}
    <div class="sidebar navigation col-md-3 col-lg-2">
        <ul class="list-group nav">
            <a id="dashbord-menu-link" class="list-group-item main-menu-a" data-toggle="tab" href="#dashbord" data-sub="dashbord" ><i class="icon-tachometer"></i> {l s='Dashbord' mod='ebay'}</a>
            <a id="orders-menu-link" class="list-group-item main-menu-a" data-toggle="tab" href="#orders" data-sub="orders"><i class="icon-share-square"></i> {l s='Orders' mod='ebay'} {if $count_order_errors > 0}<span class="badge badge-danger">{$count_order_errors}</span>{/if}</a>
            <a id="annonces-menu-link" class="list-group-item active main-menu-a" data-toggle="tab" href="#annonces" data-sub="annonces"><i class="icon-list-alt"></i> {l s='Annonces' mod='ebay'} {if $count_product_errors_total > 0}<span class="badge badge-danger">{$count_product_errors_total}</span>{/if}</a>
            <a id="settings-menu-link" class="list-group-item main-menu-a" data-toggle="tab" href="#settings" data-sub="settings"><i class="icon-cog"></i> {l s='Settings' mod='ebay'}</a>
        </ul>
    </div>
      {*  <div class="ebay-boxes-2-col-table">

            <div class="ebay-boxes-2-col-cell right ebay_gray_title_box">
                <ul class="nav nav-pills" role="tablist">
                    <li role="presentation" class="active"><a id="dashbord-menu-link" class="main-menu-a" href data-sub="dashbord">{l s='Dashbord' mod='ebay'}</a></li>
                    <li role="presentation" ><a id="orders-menu-link" class="main-menu-a" href data-sub="orders">{l s='Orders' mod='ebay'}<span class="badge">42</span></a></li>
                    <li role="presentation" ><a id="annonces-menu-link" class="main-menu-a" href data-sub="annonces">{l s='Annonces' mod='ebay'}<span class="badge">42</span></a></li>
                    <li role="presentation" ><a id="settings-menu-menu-link" class="main-menu-a" href data-sub="settings">{l s='Settings' mod='ebay'}</a></li>
                </ul>
            </div>
        </div>*}

    {/if}
{/if}
    <div id="popin_load_category-container">
        <div  class="popin popin-lg" id="categoriesEbayProgression" style="display: none; height: 500px;">
            <table id="load_cat_ebay" class="table tableDnD" cellpadding="0" cellspacing="0" style="width: 100%;">
                <thead>
                <tr class="nodrag nodrop">
                    <th style="width:10%">
                        {l s='Status' mod='ebay'}
                    </th>
                    <th style="width:45%">
                        {l s='Description' mod='ebay'}
                    </th>
                    <th style="width:45%">
                        {l s='Result' mod='ebay'}
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr id="cat_parent" class="load">
                    <td></td>
                    <td>{l s='Loading list of eBay categories' mod='ebay'}</td>
                    <td>{l s='In progress' mod='ebay'}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div id="popin_config_ok"">
        <div  class="popin popin-lg" id="config_ok" style="display: none;text-align: center;padding: 15px;">
            <p>Super, la synchronisation est Ok, vous allez maintenant </br>
                choisir les produits à copier vers eBay</p>
            <div class="panel-footer">
                <button class="close_popin_config btn btn-default">OK</button>
            </div>
        </div>
    </div>
    <a href="#config_ok" class="popin_config_ok_sync" style="display: none"></a>
    {if $ebay_shipping_config_tab > 0 && $count_category == 0}
    <script>
        $(document).ready(function() {
            $('.popin_config_ok_sync').fancybox({
                'modal': true,
                'showCloseButton': false,
                'padding': 0,
                'parent': '#popin_config_ok',
            });
            $('.popin_config_ok_sync').click();

            $(document).on('click', '.close_popin_config', function() {
                $.fancybox.close();
            });
        });
    </script>
    {/if}
    <script type="text/javascript">
        var header_ebay_l = {
          'Hide seller tips' : "{l s='Hide seller tips' mod='ebay'}",
          'Show seller tips'  : "{l s='Show seller tips' mod='ebay'}",
          'Are you sure you want to delete the profile number %profile_number%?' : "{l s='Are you sure you want to delete the profile number %profile_number%?' mod='ebay'}",
            'Are you sure you want to exclure this product?' : "{l s='Are you sure you want to exclure this product?' mod='ebay'}",
            'Are you sure you want to inclure this product?' : "{l s='Are you sure you want to inclure this product?' mod='ebay'}",
            'Are you sure you want to delete this category?' : "{l s='Are you sure you want to delete this category?' mod='ebay'}"
        };

        var delete_profile_url = '{$delete_profile_url|escape:'htmlall':'UTF-8'}';

        var main_tab = '{$main_tab}';
        var id_tab = '{$id_tab}';
    </script>
    <script>

        // Select item from user dropdown
        $(document).on('click', '.js-user-dropdown .dropdown-menu li a', function() {
            $(this).parents('.dropdown').find('.dropdown-menu li a').removeClass('selected');
            $(this).addClass('selected');
            $(this).parents('.dropdown').find('.dropdown-toggle').html($(this).find('#name').html() + ' <span class="caret"></span>');
            $(this).parents('.dropdown').find('.dropdown-toggle').val($(this).find('#name').html());
            $('.change_profile').find("input[name=ebay_profile]").val($(this).data('value'));
            $('.change_profile').submit();

        });

        $(document).ready(function() {
            $('.js-popin-help').fancybox({
                'modal': true,
                'showCloseButton': false,
                'padding': 0,
                'parent': '#popin-container-help',
            });
            $(document).on('click', '.close_popin_help', function() {
                event.preventDefault();
                $.fancybox.close();
            });
        });

       /* $('.ebay_profils').change(function() {
            $('.change_profile').find("input[name=ebay_profile]").val($( ".ebay_profils option:selected").attr('id'));
            $('.change_profile').submit();
        });*/
    </script>
    <script type="text/javascript" src="{$_module_dir_|escape:'htmlall':'UTF-8'}ebay/views/js/header.js?date={$date|escape:'htmlall':'UTF-8'}"></script>
<!-- after seller tips -->
