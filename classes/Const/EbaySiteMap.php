<?php
/**
 *  2007-2022 PrestaShop
 *
 *  NOTICE OF LICENSE
 *
 *  This source file is subject to the Academic Free License (AFL 3.0)
 *  that is bundled with this package in the file LICENSE.txt.
 *  It is also available through the world-wide-web at this URL:
 *  http://opensource.org/licenses/afl-3.0.php
 *  If you did not receive a copy of the license and are unable to
 *  obtain it through the world-wide-web, please send an email
 *  to license@prestashop.com so we can send you a copy immediately.
 *
 *  DISCLAIMER
 *
 *  Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 *  versions in the future. If you wish to customize PrestaShop for your
 *  needs please refer to http://www.prestashop.com for more information.
 *
 *  @author 202-ecommerce <tech@202-ecommerce.com>
 *  @copyright Copyright (c) 2007-2022 202-ecommerce
 *  @license Commercial license
 *  International Registered Trademark & Property of PrestaShop SA
 *
 */

class EbaySiteMap
{
    public static function get()
    {
        return array(
            'es' => array(
                'site_id' => 186,
                'documentation' => 'es',
                'language' => 'es_ES',
                'currency' => 'EUR',
                'site_name' => 'Spain',
                'site_extension' => 'es',
                'img_stats' => null,
                'iso_code' => 'es',
                'signin' => 'https://signin.ebay.es/ws/eBayISAPI.dll',
                'signin_sandbox' => 'https://signin.sandbox.ebay.es/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.ebay.es/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'pro_url' => 'http://pages.ebay.es/businesscentre/index.html',
                'fee_url' => 'http://pages.ebay.es/help/sell/businessfees.html',
                'title_desc_url' => 'http://pages.ebay.es/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://pages.ebay.es/help/search/questions/search-completed-listings.html',
                'picture_url' => 'http://pages.ebay.es/businesscentre/photocenter.html',
                'top_rated_url' => 'http://pages.ebay.es/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.es/help/sell/business-policies.html',
            ),
            'fr' => array(
                'site_id' => 71,
                'documentation' => 'fr',
                'language' => 'fr_FR',
                'currency' => 'EUR',
                'site_name' => 'France',
                'site_extension' => 'fr',
                'img_stats' => 'views/img/ebay_stats.png',
                'iso_code' => 'fr',
                'signin' => 'https://signin.ebay.fr/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.ebay.fr/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'signin_sandbox' => 'https://signin.sandbox.ebay.fr/ws/eBayISAPI.dll',
                'pro_url' => 'http://pages.ebay.fr/professionnels/index.html',
                'fee_url' => 'http://pages.ebay.fr/help/sell/businessfees.html',
                'title_desc_url' => 'http://pages.ebay.fr/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://pages.ebay.fr/help/search/questions/search-completed-listings.html',
                'picture_url' => 'http://pages.ebay.fr/professionnels/images.html',
                'top_rated_url' => 'http://pages.ebay.fr/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.fr/help/sell/business-policies.html',

            ),
            'ie' => array(
                'site_id' => 205,
                'documentation' => 'ie',
                'language' => 'en_IE',
                'currency' => 'EUR',
                'site_name' => 'Ireland',
                'site_extension' => 'ie',
                'img_stats' => null,
                'iso_code' => 'ie',
                'signin' => 'https://signin.ebay.ie/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.ebay.ie/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'signin_sandbox' => 'https://signin.sandbox.ebay.ie/ws/eBayISAPI.dll',
                'pro_url' => 'http://pages.ebay.ie/professionnels/index.html',
                'fee_url' => 'http://pages.ebay.ie/help/sell/businessfees.html',
                'title_desc_url' => 'http://pages.ebay.ie/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://pages.ebay.ie/help/search/questions/search-completed-listings.html',
                'picture_url' => 'http://pages.ebay.ie/professionnels/images.html',
                'top_rated_url' => 'http://pages.ebay.ie/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.ie/help/sell/business-policies.html',

            ),
            'nl' => array(
                'site_id' => 146,
                'documentation' => 'nl',
                'language' => 'nl_NL',
                'currency' => 'EUR',
                'site_name' => 'Netherlands',
                'site_extension' => 'nl',
                'img_stats' => null,
                'iso_code' => 'nl',
                'signin' => 'https://signin.ebay.nl/ws/eBayISAPI.dll',
                'signin_sandbox' => 'https://signin.sandbox.ebay.nl/ws/eBayISAPI.dll',
                'pro_url' => 'http://pages.ebay.nl/help/sell/rampingup.html',
                'signin_pro_url' => 'https://scgi.ebay.nl/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'fee_url' => 'http://pages.ebay.nl/help/sell/businessfees.html',
                'title_desc_url' => 'http://pages.ebay.nl/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://pages.ebay.nl/help/search/questions/search-completed-listings.html',
                'picture_url' => 'http://pages.ebay.nl/help/sell/pictures.html',
                'top_rated_url' => 'http://pages.ebay.nl/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.nl/help/sell/business-policies.html',
            ),
            'pl' => array(
                'site_id' => 212,
                'documentation' => 'pl',
                'language' => 'pl_PL',
                'currency' => 'PLN',
                'site_name' => 'Poland',
                'site_extension' => 'pl',
                'img_stats' => null,
                'iso_code' => 'pl',
                'signin' => 'https://signin.ebay.pl/ws/eBayISAPI.dll',
                'signin_sandbox' => 'https://signin.sandbox.ebay.pl/ws/eBayISAPI.dll',
                'pro_url' => 'http://pages.ebay.pl/help/sell/rampingup.html',
                'signin_pro_url' => 'https://scgi.ebay.pl/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'fee_url' => 'http://pages.ebay.pl/help/sell/businessfees.html',
                'title_desc_url' => 'http://pages.ebay.pl/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://pages.ebay.pl/help/search/questions/search-completed-listings.html',
                'picture_url' => 'http://pages.ebay.pl/help/sell/pictures.html',
                'top_rated_url' => 'http://pages.ebay.pl/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.pl/help/sell/business-policies.html',
            ),
            'be-fr' => array(
                'site_id' => 23,
                'documentation' => 'befr',
                'language' => 'fr_BE',
                'currency' => 'EUR',
                'site_name' => 'Belgium_French',
                'site_extension' => 'be',
                'subdomain' => 'befr',
                'img_stats' => null,
                'iso_code' => 'be',
                'signin' => 'https://signin.befr.ebay.be/ws/eBayISAPI.dll',
                'signin_sandbox' => 'https://signin.sandbox.befr.ebay.be/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.befr.ebay.be/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'pro_url' => 'http://pages.befr.ebay.be/befr/hubs/selling/professional/index.html',
                'fee_url' => 'http://pages.befr.ebay.be/help/sell/businessfees.html',
                'title_desc_url' => 'http://pages.befr.ebay.be/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://pages.befr.ebay.be/help/search/questions/search-completed-listings.html',
                'picture_url' => 'http://pages.befr.ebay.be/help/sell/pictures.html',
                'top_rated_url' => 'http://pages.befr.ebay.be/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.befr.ebay.be/help/sell/business-policies.html',
            ),
            'be-nl' => array(
                'site_id' => 123,
                'documentation' => 'benl',
                'language' => 'nl_BE',
                'currency' => 'EUR',
                'site_name' => 'Belgium_Dutch',
                'site_extension' => 'be',
                'subdomain' => 'benl',
                'img_stats' => null,
                'iso_code' => 'be',
                'signin' => 'https://signin.benl.ebay.be/ws/eBayISAPI.dll',
                'signin_sandbox' => 'https://signin.sandbox.benl.ebay.be/ws/eBayISAPI.dll',
                'pro_url' => 'http://pages.benl.ebay.be/benl/hubs/selling/professional/index.html',
                'signin_pro_url' => 'https://scgi.benl.ebay.be/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'fee_url' => 'http://pages.benl.ebay.be/help/sell/businessfees.html',
                'title_desc_url' => 'http://pages.benl.ebay.be/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://pages.benl.ebay.be/help/search/questions/search-completed-listings.html',
                'picture_url' => 'http://pages.benl.ebay.be/help/sell/pictures.html',
                'top_rated_url' => 'http://pages.benl.ebay.be/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.benl.ebay.be/help/sell/business-policies.html',
            ),
            'ch' => array(
                'site_id' => 193,
                'documentation' => 'de',
                'language' => 'de_DE',
                'currency' => 'CHF',
                'site_name' => 'Switzerland',
                'site_extension' => 'ch',
                'img_stats' => null,
                'iso_code' => 'ch',
                'signin' => 'https://signin.ebay.ch/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.ebay.ch/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'signin_sandbox' => 'https://signin.sandbox.ebay.ch/ws/eBayISAPI.dll',
                'pro_url' => 'http://pages.ebay.ch/help/sell/rampingup.html',
                'fee_url' => 'http://pages.ebay.ch/help/sell/businessfees.html',
                'title_desc_url' => 'http://pages.ebay.ch/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://pages.ebay.ch/help/search/questions/search-completed-listings.html',
                'picture_url' => 'http://pages.ebay.ch/help/sell/pictures.html',
                'top_rated_url' => 'http://pages.ebay.ch/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.ch/help/sell/business-policies.html',
            ),
            'at' => array(
                'site_id' => 16,
                'documentation' => 'de',
                'language' => 'de_DE',
                'currency' => 'EUR',
                'site_name' => 'Austria',
                'site_extension' => 'at',
                'img_stats' => null,
                'iso_code' => 'at',
                'signin' => 'https://signin.ebay.at/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.ebay.ch/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'signin_sandbox' => 'https://signin.sandbox.ebay.at/ws/eBayISAPI.dll',
                'pro_url' => 'http://pages.ebay.at/help/sell/rampingup.html',
                'fee_url' => 'http://pages.ebay.at/help/sell/businessfees.html',
                'title_desc_url' => 'http://pages.ebay.at/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://pages.ebay.at/help/search/questions/search-completed-listings.html',
                'picture_url' => 'http://pages.ebay.at/help/sell/pictures.html',
                'top_rated_url' => 'http://pages.ebay.at/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.at/help/sell/business-policies.html',
            ),
            'it' => array(
                'site_id' => 101,
                'documentation' => 'it',
                'language' => 'it_IT',
                'currency' => 'EUR',
                'site_name' => 'Italy',
                'site_extension' => 'it',
                'img_stats' => null,
                'iso_code' => 'it',
                'signin' => 'https://signin.ebay.it/ws/eBayISAPI.dll',
                'signin_sandbox' => 'https://signin.sandbox.ebay.it/ws/eBayISAPI.dll',
                'pro_url' => 'http://pages.ebay.fr/professionnels/index.html',
                'signin_pro_url' => 'https://scgi.ebay.it/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'fee_url' => 'http://pages.ebay.it/help/sell/businessfees.html',
                'title_desc_url' => 'http://pages.ebay.it/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://pages.ebay.it/help/search/questions/search-completed-listings.html',
                'picture_url' => 'http://pages.ebay.it/areaprofessionale/migliora_foto.html',
                'top_rated_url' => 'http://pages.ebay.it/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.it/help/sell/business-policies.html',
            ),
            'de' => array(
                'site_id' => 77,
                'documentation' => 'de',
                'language' => 'de_DE',
                'currency' => 'EUR',
                'site_name' => 'Germany',
                'site_extension' => 'de',
                'img_stats' => null,
                'iso_code' => 'de',
                'signin' => 'https://signin.ebay.de/ws/eBayISAPI.dll',
                'signin_sandbox' => 'https://signin.sandbox.ebay.de/ws/eBayISAPI.dll',
                'pro_url' => 'http://verkaeuferportal.ebay.de/',
                'signin_pro_url' => 'https://scgi.ebay.de/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'fee_url' => 'http://pages.ebay.de/help/sell/businessfees.html',
                'title_desc_url' => 'http://pages.ebay.de/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://pages.ebay.de/help/search/questions/search-completed-listings.html',
                'picture_url' => 'http://pages.ebay.de/help/sell/pictures.html',
                'top_rated_url' => 'http://pages.ebay.de/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.de/help/sell/business-policies.html',
            ),
            'gb' => array(
                'site_id' => 3,
                'documentation' => 'en',
                'language' => 'en_GB',
                'currency' => 'GBP',
                'site_name' => 'UK',
                'site_extension' => 'co.uk',
                'img_stats' => null,
                'iso_code' => 'gb',
                'signin' => 'https://signin.ebay.co.uk/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.ebay.co.uk/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'signin_sandbox' => 'https://signin.sandbox.ebay.co.uk/ws/eBayISAPI.dll',
                'pro_url' => 'http://sellercentre.ebay.co.uk/',
                'fee_url' => 'http://sellercentre.ebay.co.uk/fees-business-sellers-0',
                'title_desc_url' => 'http://pages.ebay.co.uk/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://sellercentre.ebay.co.uk/research-items-similar-yours',
                'picture_url' => 'http://sellercentre.ebay.co.uk/new-picture-standards',
                'top_rated_url' => 'http://pages.ebay.co.uk/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.co.uk/help/sell/business-policies.html',
            ),
            'ie' => array(
                'site_id' => 205,
                'documentation' => 'en',
                'language' => 'en_IE',
                'currency' => 'EUR',
                'site_name' => 'Ireland',
                'site_extension' => 'ie',
                'img_stats' => null,
                'iso_code' => 'ie',
                'signin' => 'https://signin.ebay.ie/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.ebay.ie/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'signin_sandbox' => 'https://signin.sandbox.ebay.ie/ws/eBayISAPI.dll',
                'pro_url' => 'http://sellercentre.ebay.ie/',
                'fee_url' => 'http://sellercentre.ebay.ie/fees-business-sellers-0',
                'title_desc_url' => 'http://pages.ebay.ie/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://sellercentre.ebay.ie/research-items-similar-yours',
                'picture_url' => 'http://sellercentre.ebay.ie/new-picture-standards',
                'top_rated_url' => 'http://pages.ebay.ie/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.ie/help/sell/business-policies.html',
            ),
            'au' => array(
                'site_id' => 15,
                'documentation' => 'en',
                'language' => 'en_AU',
                'currency' => 'AUD',
                'site_name' => 'Australia',
                'site_extension' => 'com.au',
                'img_stats' => null,
                'iso_code' => 'au',
                'signin' => 'https://signin.ebay.com.au/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.ebay.com.au/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'signin_sandbox' => 'https://signin.sandbox.ebay.com.au/ws/eBayISAPI.dll',
                'pro_url' => 'http://sellercentre.ebay.com.au/',
                'fee_url' => 'http://sellercentre.ebay.com.au/fees-business-sellers-0',
                'title_desc_url' => 'http://pages.ebay.com.au/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://sellercentre.ebay.com.au/research-items-similar-yours',
                'picture_url' => 'http://sellercentre.ebay.com.au/new-picture-standards',
                'top_rated_url' => 'http://pages.ebay.com.au/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.com.au/help/sell/business-policies.html',
            ),
            'us' => array(
                'site_id' => 0,
                'documentation' => 'en',
                'language' => 'en_EN',
                'currency' => 'USD',
                'site_name' => 'US',
                'site_extension' => 'com',
                'img_stats' => null,
                'iso_code' => 'US',
                'signin' => 'https://signin.ebay.com/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.ebay.com/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'signin_sandbox' => 'https://signin.sandbox.ebay.com/ws/eBayISAPI.dll',
                'pro_url' => 'http://sellercentre.ebay.com/',
                'fee_url' => 'http://sellercentre.ebay.com/fees-business-sellers-0',
                'title_desc_url' => 'http://pages.ebay.com/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://sellercentre.ebay.com/research-items-similar-yours',
                'picture_url' => 'http://sellercentre.ebay.com/new-picture-standards',
                'top_rated_url' => 'http://pages.ebay.com/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.com/help/sell/business-policies.html',
            ),
            'hk' => array(
                'site_id' => 201,
                'documentation' => 'en',
                'language' => 'en_EN',
                'currency' => 'HKD',
                'site_name' => 'Hong Kong',
                'site_extension' => 'com.hk',
                'img_stats' => null,
                'iso_code' => 'hk',
                'signin' => 'https://signin.ebay.com.hk/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.ebay.com.hk/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'signin_sandbox' => 'https://signin.sandbox.ebay.com.hk/ws/eBayISAPI.dll',
                'pro_url' => 'http://sellercentre.ebay.com.hk/',
                'fee_url' => 'http://sellercentre.ebay.com.hk/fees-business-sellers-0',
                'title_desc_url' => 'http://pages.ebay.com.hk/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://sellercentre.ebay.com.hk/research-items-similar-yours',
                'picture_url' => 'http://sellercentre.ebay.com.hk/new-picture-standards',
                'top_rated_url' => 'http://pages.ebay.com.hk/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.com.hk/help/sell/business-policies.html',
            ),
            'in' => array(
                'site_id' => 203,
                'documentation' => 'en',
                'language' => 'en_EN',
                'currency' => 'INR',
                'site_name' => 'India',
                'site_extension' => 'in',
                'img_stats' => null,
                'iso_code' => 'IN',
                'signin' => 'https://signin.ebay.in/ws/eBayISAPI.dll',
                'signin_sandbox' => 'https://signin.sandbox.ebay.in/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.ebay.in/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'pro_url' => 'http://sellercentre.ebay.in/',
                'fee_url' => 'http://sellercentre.ebay.in/fees-business-sellers-0',
                'title_desc_url' => 'http://pages.ebay.in/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://sellercentre.ebay.in/research-items-similar-yours',
                'picture_url' => 'http://sellercentre.ebay.in/new-picture-standards',
                'top_rated_url' => 'http://pages.ebay.in/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.in/help/sell/business-policies.html',
            ),
            'sg' => array(
                'site_id' => 216,
                'documentation' => 'en',
                'language' => 'en_EN',
                'currency' => 'SGD',
                'site_name' => 'Singapore',
                'site_extension' => 'com.sg',
                'img_stats' => null,
                'iso_code' => 'SG',
                'signin' => 'https://signin.ebay.com.sg/ws/eBayISAPI.dll',
                'signin_sandbox' => 'https://signin.sandbox.ebay.com.sg/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.ebay.com.sg/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'pro_url' => 'http://sellercentre.ebay.com.sg/',
                'fee_url' => 'http://sellercentre.ebay.com.sg/fees-business-sellers-0',
                'title_desc_url' => 'http://pages.ebay.com.sg/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://sellercentre.ebay.com.sg/research-items-similar-yours',
                'picture_url' => 'http://sellercentre.ebay.com.sg/new-picture-standards',
                'top_rated_url' => 'http://pages.ebay.com.sg/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.com.sg/help/sell/business-policies.html',
            ),
            'ph' => array(
                'site_id' => 211,
                'documentation' => 'en',
                'language' => 'en_EN',
                'currency' => 'PHP',
                'site_name' => 'Philippines',
                'site_extension' => 'ph',
                'img_stats' => null,
                'iso_code' => 'PH',
                'signin' => 'https://signin.ebay.ph/ws/eBayISAPI.dll',
                'signin_sandbox' => 'https://signin.sandbox.ebay.ph/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.ebay.ph/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'pro_url' => 'http://sellercentre.ebay.ph/',
                'fee_url' => 'http://sellercentre.ebay.ph/fees-business-sellers-0',
                'title_desc_url' => 'http://pages.ebay.ph/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://sellercentre.ebay.ph/research-items-similar-yours',
                'picture_url' => 'http://sellercentre.ebay.ph/new-picture-standards',
                'top_rated_url' => 'http://pages.ebay.ph/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.ph/help/sell/business-policies.html',
            ),
            'my' => array(
                'site_id' => 207,
                'documentation' => 'en',
                'language' => 'en_EN',
                'currency' => 'MYR',
                'site_name' => 'Malaysia',
                'site_extension' => 'com.my',
                'img_stats' => null,
                'iso_code' => 'MY',
                'signin' => 'https://signin.ebay.com.my/ws/eBayISAPI.dll',
                'signin_sandbox' => 'https://signin.sandbox.ebay.com.my/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.ebay.com.my/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'pro_url' => 'http://sellercentre.ebay.com.my/',
                'fee_url' => 'http://sellercentre.ebay.com.my/fees-business-sellers-0',
                'title_desc_url' => 'http://pages.ebay.com.my/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://sellercentre.ebay.com.my/research-items-similar-yours',
                'picture_url' => 'http://sellercentre.ebay.com.my/new-picture-standards',
                'top_rated_url' => 'http://pages.ebay.com.my/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.com.my/help/sell/business-policies.html',
            ),
            'ca_en' => array(
                'site_id' => 2,
                'documentation' => 'en',
                'language' => 'en_EN',
                'currency' => 'CAD',
                'site_name' => 'Canada',
                'site_extension' => 'ca',
                'img_stats' => null,
                'iso_code' => 'CA',
                'signin' => 'https://signin.ebay.ca/ws/eBayISAPI.dll',
                'signin_sandbox' => 'https://signin.sandbox.ebay.ca/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.ebay.ca/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'pro_url' => 'http://sellercentre.ebay.ca/',
                'fee_url' => 'http://sellercentre.ebay.ca/fees-business-sellers-0',
                'title_desc_url' => 'http://pages.ebay.ca/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://sellercentre.ebay.ca/research-items-similar-yours',
                'picture_url' => 'http://sellercentre.ebay.ca/new-picture-standards',
                'top_rated_url' => 'http://pages.ebay.ca/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.ebay.ca/help/sell/business-policies.html',
            ),
            'ca_fr' => array(
                'site_id' => 210,
                'documentation' => 'fr',
                'language' => 'fr_FR',
                'currency' => 'CAD',
                'site_name' => 'CanadaFrench',
                'site_extension' => 'ca',
                'subdomain' => 'cafr',
                'img_stats' => null,
                'iso_code' => 'CA',
                'signin' => 'https://signin.cafr.ebay.ca/ws/eBayISAPI.dll',
                'signin_sandbox' => 'https://signin.sandbox.cafr.ebay.ca/ws/eBayISAPI.dll',
                'signin_pro_url' => 'https://scgi.cafr.ebay.ca/ws/eBayISAPI.dll?RegisterEnterInfo&bizflow=2',
                'pro_url' => 'http://sellercentre.cafr.ebay.ca/',
                'fee_url' => 'http://sellercentre.cafr.ebay.ca/fees-business-sellers-0',
                'title_desc_url' => 'http://pages.cafr.ebay.ca/help/sell/title_desc_ov.html',
                'similar_items_url' => 'http://sellercentre.cafr.ebay.ca/research-items-similar-yours',
                'picture_url' => 'http://sellercentre.cafr.ebay.ca/new-picture-standards',
                'top_rated_url' => 'http://pages.cafr.ebay.ca/help/sell/top-rated.html',
                'url_help_business_policies' => 'http://pages.cafr.ebay.ca/help/sell/business-policies.html',
            )
        );
    }
}
