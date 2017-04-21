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

{if isset($relogin) && $relogin}
	{literal}
	<script>
		$(document).ready(function() {
			var win = window.location = '{/literal}{$redirect_url|escape:'UTF-8'}{literal}';
		});		

	</script>
	{/literal}
{/if}
<script type="text/javascript">
	var id_shop = '{$id_shop|escape:'htmlall':'UTF-8'}';
	var catLoaded = 0;
	{if $catLoaded}
		catLoaded = 1;
	{/if}
	var tooltip_numeric = "{l s='You must enter a number.' mod='ebay'}";
	var tooltip_max_pictures = "{l s='The maximum number is 12, so you can put up to 11 in this field.' mod='ebay'}";
	var regenerate_token_show = false;
	{if $regenerate_token != false}
	regenerate_token_show = true;
	{/if}
	var categories_ebay_l = {ldelim}
		'thank you for waiting': "{l s='Thank you for waiting while creating suggestions' mod='ebay'}",
		'no category selected' : "{l s='No category selected' mod='ebay'}",
		'No category found'		 : "{l s='No category found' mod='ebay'}",
		'You are not logged in': "{l s='You are not logged in' mod='ebay'}",
		'Settings updated'		 : "{l s='Settings updated' mod='ebay'}",
		'Unselect products'		: "{l s='Unselect products that you do NOT want to list on eBay' mod='ebay'}",
		'Unselect products clicked' : "{l s='Unselect products that you do NOT want to list on eBay' mod='ebay'}",
		'Products' : "{l s='Products' mod='ebay'}",
		'Stock' : "{l s='Stock' mod='ebay'}",
		'Finish' : "{l s='Finish' mod='ebay'}",
		'An error has occurred' : "{l s='An error has occurred' mod='ebay'}",
		'Waiting' : "{l s='Waiting' mod='ebay'}",
		'categories loaded success' : "{l s='categories loaded successfully.' mod='ebay'}",
		'Download subcategories of' : "{l s='Download subcategories of' mod='ebay'}",
		{rdelim};
	// Import Category From eBay
	function loadCategoriesFromEbay(step, id_category, row) {
		var admin_path = "{$admin_path}";
		alertOnExit(true, alert_exit_import_categories);
		step = typeof step !== 'undefined' ? step : 1;
		id_category = typeof id_category !== 'undefined' ? id_category : false;
		row = typeof row !== 'undefined' ? row : 2;

		$.ajax({
			type: "POST",
			dataType: 'json',
			url: module_dir + 'ebay/ajax/loadCategoriesFromEbay.php?token=' + ebay_token + "&profile=" + id_ebay_profile + "&step=" + step + "&id_category=" + id_category + "&admin_path=" + admin_path,
			success: function (data) {
				if (data == "error") {
					if (step == 1) {
						$('#cat_parent').addClass('error');
						$('#cat_parent td:nth-child(3)').text(categories_ebay_l['An error has occurred']);
					}
					else if (step == 2) {
						$('#load_cat_ebay tbody tr:nth-child(' + row + ')').addClass('error');
					}
					alertOnExit(false, "");
				}
				else {
					var output;

					if (step == 1) {
						for (var i in data) {
							output += '<tr class="standby" data-id="' + data[i].CategoryID + '"><td></td><td>' + categories_ebay_l['Download subcategories of'] + ' ' + data[i].CategoryName + '</td><td>' + categories_ebay_l['Waiting'] + '</td></tr>';
						}
						var count = $.map(data, function (n, i) {
							return i;
						}).length;
						$('#cat_parent').removeClass('load').addClass('success');
						$('#cat_parent td:nth-child(3)').text(categories_ebay_l['Finish'] + ' - ' + count + ' ' + categories_ebay_l['categories loaded success']);
						$('#load_cat_ebay tbody').append(output);

						$('#load_cat_ebay tbody tr:nth-child(2)').addClass('load');
						loadCategoriesFromEbay(2, $('#load_cat_ebay tbody tr:nth-child(2)').attr('data-id'), 2);
					}
					else if (step == 2) {
						var count = $.map(data, function (n, i) {
							return i;
						}).length;
						$('#load_cat_ebay tbody tr:nth-child(' + row + ')').removeClass('load').addClass('success');

						$('#load_cat_ebay tbody tr:nth-child(' + row + ') td:nth-child(3)').text(categories_ebay_l['Finish'] + ' - ' + count + ' ' + categories_ebay_l['categories loaded success']);

						var next = row + 1;
						if ($('#load_cat_ebay tbody tr:nth-child(' + next + ')').length > 0) {
							$('#load_cat_ebay tbody tr:nth-child(' + next + ')').addClass('load');
							loadCategoriesFromEbay(2, $('#load_cat_ebay tbody tr:nth-child(' + next + ')').attr('data-id'), next);
						}
						else {
							loadCategoriesFromEbay(3);
							$('#load_cat_ebay').css('display', 'none');
							$('.hidden.importCatEbay').removeClass('hidden').removeClass('importCatEbay');
							$('.warning.big.tips.h').show();
							alertOnExit(false, "");
							$('#menuTab2').removeClass('succes');
							$('#menuTab2').addClass('wrong');
							$('#menuTab8').removeClass('succes');
							$('#menuTab8').addClass('wrong');
							$.fancybox.close();
							//return loadCategories();

						}
						alertOnExit(false, "");
					}

				}
			}
		});

	}
	$(document).ready(function(){
		if(regenerate_token_show) {
			$('.regenerate_token_button').show();
			$('.regenerate_token_button label').css('color', 'red').html("{l s='You must regenerate your authentication token' mod='ebay'}");
			$('.regenerate_token_click').hide();
		}
		$('.regenerate_token_click span').click(function(){
			$('.regenerate_token_button').show();
			$('.regenerate_token_click').hide();
		});
		$('.load_cat_sync').fancybox({
			'modal': true,
			'showCloseButton': false,
			'padding': 0,
			'parent': '#popin_load_category-container',
		});
		if(catLoaded == 1){

			$('.load_cat_sync').click();
			//loadCategoriesFromEbay();
		}

	});



</script>

	{if isset($check_token_tpl)}
	<fieldset id="regenerate_token">
		<legend>{l s='Token' mod='ebay'}</legend>
			{$check_token_tpl|ebayHtml}
	</fieldset>	
	{/if}
	
<form action="{$url|escape:'htmlall':'UTF-8'}" method="post" class="form" id="configForm1">
    
	<fieldset style="margin-top:10px;">
		<legend>{l s='Account details' mod='ebay'}</legend>
		<h4>{l s='To list your products on eBay, you need to create' mod='ebay'} <a href="https://www.paypal.com/" target="_blank">{l s='a PayPal account.' mod='ebay'}</a></h4>
        
		<input type="hidden" name="ebay_shop" value="{$ebayShopValue|escape:'htmlall':'UTF-8'}" />            
        
		<label>{l s='Paypal email address' mod='ebay'} : </label>
		<div class="margin-form">

			<input type="text" size="20" name="ebay_paypal_email" value="{$ebay_paypal_email|escape:'htmlall':'UTF-8'}"/>
			<p>{l s='You have to set your PayPal e-mail account, this is the only payment solution available with this module.' mod='ebay'}<a class="kb-help" data-errorcode="{$help.code_payment_solution|escape:'htmlall':'UTF-8'}" data-module="ebay" data-lang="{$help.lang|escape:'htmlall':'UTF-8'}" module_version="{$help.module_version|escape:'htmlall':'UTF-8'}" prestashop_version="{$help.ps_version|escape:'htmlall':'UTF-8'}" href="" target="_blank"></a></p>
		</div>
        
		<label>
			{l s='Currency' mod='ebay'}
		</label>
		<div class="margin-form">
			<select name="currency" data-inlinehelp="{l s='This currency will be used for your products sold on eBay' mod='ebay'}" class="ebay_select">
				{if isset($currencies) && $currencies && sizeof($currencies)}
					{foreach from=$currencies item='currency'}
						<option value="{$currency.id_currency|escape:'htmlall':'UTF-8'}"{if $currency.id_currency == $current_currency} selected{/if}>{$currency.name|escape:'htmlall':'UTF-8'}</option>
					{/foreach}
				{/if}
			</select>
		</div>        
        
		<label>{l s='Item location' mod='ebay'} : </label>
		<div class="margin-form">
			<input type="text" size="20" name="ebay_shop_postalcode" value="{$shopPostalCode|escape:'htmlall':'UTF-8'}"/>
			<p>{l s='Your shop\'s postal code' mod='ebay'}</p>
		</div>
		<label>{l s='Item Country' mod='ebay'} : </label>
		<div class="margin-form">
			<select name="ebay_shop_country" class="ebay_select">
                <option value=""></option>
			{foreach from=$ebay_shop_countries item=ebay_shop_country}
				<option value="{$ebay_shop_country.iso_code|escape:'htmlall':'UTF-8'}" {if $current_ebay_shop_country == $ebay_shop_country.iso_code} selected="selected"{/if}>{$ebay_shop_country.site_name|escape:'htmlall':'UTF-8'}</option>
			{/foreach}							   
			</select>            
			<p>{l s='Your shop\'s country' mod='ebay'}</p>
		</div>     
		<label>
			{l s='Immediate Payment' mod='ebay'}
		</label>
		<div class="margin-form">
			<input type="checkbox" name="immediate_payment" value="1"{if $immediate_payment} checked="checked"{/if}>
		</div>           

		<div class="show regenerate_token_click" style="display:block;text-align:center;cursor:pointer">
			<span data-inlinehelp="{l s='Use only if you get a message saying that your authentication is expired.' mod='ebay'}">{l s='Click here to generate a new authentication token.' mod='ebay'}</span>
		</div>
		<div class="regenerate_token_button" style="display:none;">
			<label>{l s='Regenerate Token' mod='ebay'} :</label>
			<a href="{$url|escape:'htmlall':'UTF-8'}&action=regenerate_token">
				<input type="button" id="token-btn" class="button" value="{l s='Regenerate Token' mod='ebay'}" />
			</a>
		</div>
	</fieldset>


	<fieldset style="margin-top:10px;">

		<legend>{l s='Sync' mod='ebay'}</legend>

		<label>
			{l s='Sync Orders' mod='ebay'}
		</label>
		<div class="margin-form">
			<input type="radio" size="20" name="sync_orders_mode" class="sync_orders_mode" value="save" {if $sync_orders_by_cron == false}checked="checked"{/if}/> {l s='every 30 minutes on page load' mod='ebay'}
			<input type="radio" size="20" name="sync_orders_mode" class="sync_orders_mode" value="cron" {if $sync_orders_by_cron == true}checked="checked"{/if}/> {l s='by CRON task' mod='ebay'}<br>
			<p><a id="sync_orders_by_cron_url" href="{$sync_orders_by_cron_url|escape:'urlencode'}" target="_blank" style="{if $sync_orders_by_cron == false};display:none{/if}">{$sync_orders_by_cron_path|escape:'urlencode'}</a></p>

		</div>
		<label>
			{l s='Sync Products' mod='ebay'}
		</label>
		<div class="margin-form">
			<input type="radio" size="20" name="sync_products_mode" class="sync_products_mode" value="save" {if $sync_products_by_cron == false}checked="checked"{/if}/> {l s='on save' mod='ebay'}
			<input type="radio" size="20" name="sync_products_mode" class="sync_products_mode" value="cron" {if $sync_products_by_cron == true}checked="checked"{/if}/> {l s='by CRON task' mod='ebay'}<br>
			<p><a id="sync_products_by_cron_url" href="{$sync_products_by_cron_url|escape:'urlencode'}" target="_blank" style="{if $sync_products_by_cron == false};display:none{/if}">{$sync_products_by_cron_path|escape:'urlencode'}</a></p>

		</div>
		{if $help_Cat_upd.ps_version > '1.4.11'}
			<label>
				{l s='Synch cancellations, refunds and returns' mod='ebay'}
			</label>
			<div class="margin-form">
				<input type="radio" size="20" name="sync_orders_returns_mode" class="sync_orders_returns_mode" value="save" {if $sync_orders_returns_by_cron == false}checked="checked"{/if}/> {l s='every 30 minutes on page load' mod='ebay'}
				<input type="radio" size="20" name="sync_orders_returns_mode" class="sync_orders_returns_mode" value="cron" {if $sync_orders_returns_by_cron == true}checked="checked"{/if}/> {l s='by CRON task' mod='ebay'}<br>
				<p><a id="sync_orders_returns_by_cron_url" href="{$sync_orders_returns_by_cron_url|escape:'urlencode'}" target="_blank" style="{if $sync_orders_returns_by_cron == false};display:none{/if}">{$sync_orders_returns_by_cron_path|escape:'urlencode'}</a></p>

			</div>
		{/if}
		<label>
			{l s='Always override Business Policies' mod='ebay'}
		</label>
		<div class="margin-form">
			<input type="checkbox" name="activate_resynchBP" value="1"{if $activate_resynchBP == 1} checked="checked"{/if} data-inlinehelp="{l s='If activiated, Business Policies created by PrestaShop will be overriden at every product synchronisation.' mod='ebay'}">

		</div>
		<div class="clear both"></div>

	</fieldset>

	<div class="margin-form" id="buttonEbayParameters" style="margin-top:5px;">
		<a href="#categoriesEbayProgression" class="load_cat_sync" style="display: none"></a>
		<a href="#categoriesProgression" {if $catLoaded}id="displayFancybox"{/if}>
			<input class="primary button" name="submitSave" type="hidden" value="{l s='Save and continue' mod='ebay'}" />
			<input  class="primary button" type="submit" id="save_ebay_parameters" value="{l s='Save and continue' mod='ebay'}" />
		</a>
	</div>


</form>

