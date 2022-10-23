$appId="89bbd353-90df-4153-b1e5-05636710af77"
$appSecret="89bbd353-90df-4153-b1e5-05636710af77"
$tenantId="828623f3-62b1-4edd-aef5-a3563727cea5"
$subscriptionName="23Oct-Subscription"
$resourceGroup = "CookbookRG2"

az login --service-principal --username $appId --password $appSecret --tenant $TenantId

az account set --subscription $subscriptionName

az group create --name $resourceGroup --location "East US"

az databricks workspace create --resource-group $resourceGroup --name BigDataWorkspace --location "East US" --sku standard
