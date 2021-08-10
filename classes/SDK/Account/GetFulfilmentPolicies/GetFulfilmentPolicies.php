<?php


namespace Ebay\classes\SDK\Account\GetFulfilmentPolicies;

use Ebay\classes\SDK\Account\GetFulfilmentPolicies\Request as GetRequest;
use Ebay\classes\SDK\Account\GetFulfilmentPolicies\Response as GetResponse;
use Ebay\classes\SDK\Core\ApiBaseUri;
use Ebay\classes\SDK\Core\BearerAuthToken;
use Ebay\classes\SDK\Core\EbayApiResponse;
use Ebay\classes\SDK\Core\EbayClient;
use Ebay\services\MarketplaceByProfile;
use Symfony\Component\VarDumper\VarDumper;
use Exception;

class GetFulfilmentPolicies
{
    /** @var \EbayProfile*/
    protected $ebayProfile;

    public function __construct(\EbayProfile $ebayProfile)
    {
        $this->ebayProfile = $ebayProfile;
    }

    public function execute()
    {
        try {
            $result = $this->getClient()->executeRequest($this->getRequest());
        } catch (Exception $e) {
            return (new EbayApiResponse())->setSuccess(false);
        }

        if ($result->getStatusCode() != 200) {
            return (new EbayApiResponse())
                ->setSuccess(false)
                ->setResult($result);
        }

        $response = new GetResponse();
        $resultContent = json_decode($result->getBody()->getContents(), true);


        // TODO: complete a methode
    }

    protected function getToken()
    {
        return (new BearerAuthToken($this->ebayProfile));
    }

    /**
     * @return string
     */
    protected function getMarketplace()
    {
        return (new MarketplaceByProfile())->get($this->ebayProfile);
    }

    /**
     * @return EbayClient
     */
    protected function getClient()
    {
        return new EbayClient($this->getApiBaseUri());
    }

    protected function getApiBaseUri()
    {
        return new ApiBaseUri();
    }

    protected function getRequest()
    {
        return new GetRequest(
            $this->getToken(),
            $this->getMarketplace()
        );
    }
}