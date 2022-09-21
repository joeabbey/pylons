import 'package:fixnum/fixnum.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pylons_wallet/model/amount.dart';
import 'package:pylons_wallet/model/balance.dart';
import 'package:pylons_wallet/model/execution_list_by_recipe_response.dart';
import 'package:pylons_wallet/model/nft.dart';
import 'package:pylons_wallet/model/nft_ownership_history.dart';
import 'package:pylons_wallet/model/stripe_get_login_based_address.dart';
import 'package:pylons_wallet/model/stripe_update_account_request.dart';
import 'package:pylons_wallet/model/transaction.dart';
import 'package:pylons_wallet/modules/Pylonstech.pylons.pylons/module/export.dart';
import 'package:pylons_wallet/pages/home/currency_screen/model/ibc_coins.dart';
import 'package:pylons_wallet/pages/home/currency_screen/model/ibc_trace_model.dart';
import 'package:pylons_wallet/utils/base_env.dart';
import 'package:transaction_signing_gateway/model/transaction_hash.dart';

TransactionHash MOCK_TRANSACTION = const TransactionHash(hash: '64CFE19786363B8C6AB10D865A5C570C3999AB0B95E5723BE584F574FC58F99E');

String MOCK_USERNAME = "Jawad";
String MOCK_ID = "Jawad123Jawad";
String SENDER_APP = 'Sending app';

List<TransactionHistory> MOCK_TRANSACTIONS_HISTORY = [
  TransactionHistory(
      recipeId: "LOUDGetCharacter1",
      address: "pylo1fhvaknqx2ngyltz2qzychlm75cyp4tkh09d539",
      amount: "10upylon",
      cookbookId: "cookbookLOUD1",
      createdAt: 1654508506,
      transactionType: "NFTSELL",
      transactionTypeEnum: TransactionType.values.byName("NFTSELL"),
      ibcCoin: IBCCoins.upylon,
      txID: "txID"),
  TransactionHistory(
      address: "pylo12rzzd8nwxzrh28l6hexm2snuylldyht9cvj28c",
      cookbookId: "",
      recipeId: "",
      amount: "1000ubedrock",
      createdAt: 1655890906,
      transactionType: "RECEIVE",
      transactionTypeEnum: TransactionType.values.byName("RECEIVE"),
      ibcCoin: IBCCoins.uatom,
      txID: "txID"),
  TransactionHistory(
      address: "pylo1fhvaknqx2ngyltz2qzychlm75cyp4tkh09d539",
      cookbookId: "",
      recipeId: "",
      amount: "10upylon",
      createdAt: 1654508506,
      transactionType: "SEND",
      transactionTypeEnum: TransactionType.values.byName("SEND"),
      ibcCoin: IBCCoins.upylon,
      txID: "txID"),
];

String MOCK_COOKBOOK = """
{
  "creator": "pylo1akzpu26f36pgxr636uch8evdtdjepu93v5y9s2",
  "ID": "$MOCK_COOKBOOK_ID",
  "name": "Legend of the Undead Dragon",
  "nodeVersion": "v0.1.3",
  "description": "Cookbook for running pylons recreation of LOUD",
  "developer": "Pylons Inc",
  "version": "v0.0.1",
  "supportEmail": "alex@shmeeload.xyz",
  "costPerBlock": {"denom":  "upylon", "amount":  "1000000"},
  "enabled": true
}""";

String MOCK_RECIPE = """
{
  "cookbookID": "$MOCK_COOKBOOK_ID",
  "ID": "$MOCK_RECIPE_ID",
  "name": "Test NFT v3",
  "description": " A simple test recipe to be executed",
  "version": "v1.0.0",
  "coinInputs": [
    {
      "coins": [
        {
          "denom": "upylon",
          "amount": "350"
        }
      ]
    }
  ],
  "itemInputs": [],
  "entries": {
    "coinOutputs": [],
    "itemOutputs": [
      {
        "ID": "How_do_you_do_turn_this_on",
        "doubles": [
          {
            "key": "Residual",
            "weightRanges": [
              {
                "lower": "2000000000000000000",
                "upper": "2000000000000000000",
                "weight": 1
              }
            ]
          }
        ],
        "longs": [
          {
            "key": "Quantity",
            "weightRanges": [
              {
                "lower": 34,
                "upper": 34,
                "weight": 1
              }
            ]
          },
          {
            "key": "Width",
            "weightRanges": [
              {
                "lower": 960,
                "upper": 960,
                "weight": 1
              }
            ]
          },
          {
            "key": "Height",
            "weightRanges": [
              {
                "lower": 1280,
                "upper": 1280,
                "weight": 1
              }
            ]
          }
        ],
        "strings": [
          {
            "key": "Name",
            "value": "How do you do turn this on"
          },
          {
            "key": "App_Type",
            "value": "Avatar"
          },
          {
            "key": "Description",
            "value": "This is NFT Description for Test "
          },
          {
            "key": "NFT_URL",
            "value": "https://i.imgur.com/QechbvX.jpg"
          },
          {
            "key": "Currency",
            "value": "upylon"
          },
          {
            "key": "Price",
            "value": "450"
          },
          {
            "key": "Creator",
            "value": "NFT Studio"
          }
        ],
        "mutableStrings": [],
        "transferFee": [{"denom": "upylon",
          "amount": "10"
        }],
        "tradePercentage": "100000000000000000",
        "amountMinted": 0,
        "quantity": 30,
        "tradeable": true
      }
    ],
    "itemModifyOutputs": []
  },
  "outputs": [
    {
      "entryIDs": [
        "How_do_you_do_turn_this_on"
      ],
      "weight": 1
    }
  ],
  "blockInterval": 1,
  "enabled": true
}""";

const String MOCK_COOKBOOK_ID = 'cookbookLOUD';

const String MOCK_STRIPEURL = '';
const String MOCK_STRIPEPUBKEY = '';
const String MOCK_ADDRESS = 'pylo18238123823kjhgda7w1';
const String MOCK_RECIPE_ID = 'recipeid';
const String MOCK_ITEM_ID = 'itemId';
const String MOCK_EXECUTION_ID = 'executionId';
const String MOCK_ERROR = 'SOMETHING_WENT_WRONG';
const String MOCK_RECIPE_VERSION = 'recipe version';
const String MOCK_COOKBOOK_VERSION = 'cookbook version';
const String MOCK_NODE_VERSION = 'node version';
const String MOCK_MNEMONIC = "laundry number match ring spatial surround gadget rally teach second cover crucial";

const String MOCK_TOKEN = 'tokenXYZ';
const String SIGNATURE = 'signature';

const String MOCK_ACCOUNT_LINK = 'mock_account_link';
const String MOCK_ACCOUNT = 'mock_account';
const bool MOCK_STRIPE_ACCOUNT_EXISTS = true;
const bool MOCK_PRODUCT_PURCHASED = true;
const bool MOCK_IAP_AVAILABLE = true;

StripeUpdateAccountRequest MOCK_STRIPE_UPDATE_ACCOUNT_REQUEST = StripeUpdateAccountRequest(Address: MOCK_ADDRESS, Token: MOCK_TOKEN, Signature: SIGNATURE);
StripeGetLoginBasedOnAddressRequest MOCK_STRIPE_LOGIN_BASED_ADDRESS_REQUEST = StripeGetLoginBasedOnAddressRequest(MOCK_ADDRESS);

Item MOCK_ITEM = Item(
  owner: '',
  cookbookId: MOCK_COOKBOOK_ID,
  id: MOCK_ITEM_ID,
  nodeVersion: Int64(1),
  doubles: [],
  longs: [],
  strings: [],
);

Execution MOCK_EXECUTION = Execution(
  creator: MOCK_ADDRESS,
  id: MOCK_EXECUTION_ID,
  cookbookId: MOCK_COOKBOOK_ID,
  recipeVersion: MOCK_RECIPE_VERSION,
  nodeVersion: Int64(1),
);

BaseEnv MOCK_BASE_ENV = BaseEnv()
  ..setEnv(
      lcdUrl: '',
      grpcUrl: '',
      lcdPort: '9090',
      grpcPort: '9090',
      ethUrl: '',
      faucetUrl: '',
      stripeUrl: 'https://dev-api.pylons.com/',
      stripePubKey: '',
      stripeTestEnv: false,
      stripeCallbackUrl: '',
      stripeCallbackRefreshUrl: "",
      chainId: 'pylons-testnet-2',
      ibcTraceUrl: "",
      mongoUrl: '',
      skus: '[]');

IBCTraceModel MOCK_IBC_TRACE_MODEL = IBCTraceModel(denomTrace: DenomTrace(baseDenom: IBCCoins.ujunox, path: ''), ibcHash: '64CFE19786363B8C6AB10D865A5C570C3999AB0B95E5723BE584F574FC58F99E');
Map EXECUTE_RECIPE_JSON = {"creator": "", "cookbookId": DUMMY_COOKBOOK_ID, "recipeId": DUMMY_RECIPE_ID, "coinInputsIndex": 0};

const String DUMMY_COOKBOOK_ID = "Easel_CookBook_auto_cookbook_2022_08_31_152836_312";
const String DUMMY_RECIPE_ID = "Easel_Recipe_auto_recipe_2022_08_31_155921_714";
const String DUMMY_RESPONSE_AFTER_EXECUTION = "4E13B9E815BB387F72120AD1D868A09EBBE189BD71FAF938A3421F5EFCF947F3";
const String DUMMY_ITEM_ID = "pylons_10";

ProductDetails DUMMY_PRODUCT_DETAILS = ProductDetails(
    id: "pylons_10",
    title: "Buy 10 points (Pylons)",
    description: "Pylons points can be used to purchase digital items priced in Pylons points. They have no cash value and cannot be redeemed. This package is for 10 Pylons Points.",
    price: "Rs 220.00",
    rawPrice: 220.0,
    currencyCode: "PKR",
    currencySymbol: "PKR");

const String MOCK_IP = '172.168.1.1';
const InternetConnectionStatus INTERNET_CONNECTIVITY_STATUS_CONNECTED = InternetConnectionStatus.connected;
const InternetConnectionStatus INTERNET_CONNECTIVITY_STATUS_DISCONNECTED = InternetConnectionStatus.disconnected;
const String MOCK_BASE_URL = 'https://dev-api.pylons.com/';
const String MOCK_SOMETHING_WENT_WRONG = 'Something went wrong';

List<Balance> MOCK_BALANCE = [
  Balance(
    denom: "upylon",
    amount: Amount.fromString("34500"),
  )
];

ExecutionListByRecipeResponse MOCK_EXECUTION_LIST_BY_RECIPE_RESPONSE = ExecutionListByRecipeResponse(completedExecutions: [
  Execution(
    recipeId: MOCK_RECIPE_ID,
    creator: MOCK_USERNAME,
    cookbookId: MOCK_COOKBOOK_ID,
    id: MOCK_ID,
    blockHeight: Int64(2),
    coinInputs: [
      Coin(amount: "3545", denom: "upylon"),
    ],
    coinOutputs: [
      Coin(amount: "123", denom: "upylon"),
    ],
    itemInputs: [
      ItemRecord(
        id: MOCK_ITEM_ID,
        doubles: [
          DoubleKeyValue(
            key: "price",
            value: "10",
          )
        ],
      )
    ],
  ),
], pendingExecutions: [
  Execution(
    recipeId: MOCK_RECIPE_ID,
    creator: MOCK_USERNAME,
    cookbookId: MOCK_COOKBOOK_ID,
    id: MOCK_ID,
    blockHeight: Int64(2),
    coinInputs: [
      Coin(amount: "3545", denom: "upylon"),
    ],
    coinOutputs: [
      Coin(amount: "123", denom: "upylon"),
    ],
    itemInputs: [
      ItemRecord(
        id: MOCK_ITEM_ID,
        doubles: [
          DoubleKeyValue(
            key: "price",
            value: "10",
          )
        ],
      )
    ],
  ),
]);

const String MOCK_DYNAMIC_LINK = "https://we.tl/t-kEvBGXDG19";

NFT MOCK_NFT = NFT(
  name: "This is my Image NFT",
  height: "2400",
  description: "Please Buy my Image NFT",
  width: "1080",
  url: "https://proxy.pylons.tech/ipfs/bafkreihzxrk7rpxmih3wr6o5kccxpfyjneg7rbgkpmdflvwyd63geaiaby",
  recipeID: "Easel_Recipe_auto_recipe_2022_08_31_154526_206",
  duration: "0:0",
  cookbookID: "Easel_CookBook_auto_cookbook_2022_08_31_152836_312",
  appType: "easel",
  creator: "Ahmad",
  fileSize: "90.12KB",
  itemID: "DtnxAS8L4pf",
  owner: "abd",
  ibcCoins: IBCCoins.upylon,
);
const int MOCK_FAUCET_COIN = 10;

Trade MOCK_TRADE = Trade(id: Int64(2), creator: MOCK_USERNAME);
const String MOCK_IMAGE_SOURCE = "file://my_image.png";

Recipe MOCK_RECIPE_MODEL = Recipe(
  id: MOCK_ID,
  name: MOCK_USERNAME,
  version: MOCK_RECIPE_VERSION,
  coinInputs: [],
  itemInputs: [],
  outputs: [],
  nodeVersion: Int64(1),
  cookbookId: MOCK_COOKBOOK_ID,
);

Cookbook MOCK_COOKBOOK_MODEL = Cookbook(
  nodeVersion: Int64(1),
  version: MOCK_COOKBOOK_VERSION,
  name: MOCK_USERNAME,
  id: MOCK_ID,
  creator: MOCK_USERNAME,
  description: "Cookbook for running pylons recreation of LOUD",
  developer: "Pylons Inc",
  supportEmail: "alex@shmeeload.xyz",
);

NftOwnershipHistory MOCK_NFT_OWNERSHIP_HISTORY = NftOwnershipHistory(
  itemID: "ahmad123axd",
  cookbookID: "Easel_CookBook_auto_cookbook_2022_08_31_152836_312",
  createdAt: 0,
  receiver: "xyz",
  senderName: "abcxyz",
);
