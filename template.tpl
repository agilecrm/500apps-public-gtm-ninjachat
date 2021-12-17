___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "500apps - NinjaChat",
  "categories": ["CHAT","SUPPORT"],
  "brand": {
    "id": "brand_dummy",
    "displayName": "",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAfCAYAAADwbH0HAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAANYSURBVHgBtVe/T9tAFP7OOJXapUFiRunGRmBGIiyshJWhcf6BkkodOhVn6xbauRJJh67NzEKQmFHY2EiZO6RLB/Lj+r47DhxjB5OST3Js3/O97/28uyhkRXBTlN9NueSueOWtQPfkpy/3jtxP0XzRzaJOPfpFcBPIZxVolJAJYojnhTjyW5iJOBiUoNWRKCpgJogBarSF5stektRDMmkoHp7MTkqoArR/ZXQlSVNID/CcUKijmQsnh+ZNmkKuIqQlG945QkFynuvYR4fK8GpaTvOvFIrLwOqykmfg4lqjew30fmtkBwsut4am6vvmnS2j00nDsof9bc8Q9v/qW0NsXR4ej1Fvj2UcGaAKwHBfHurW4xRv6eXPd57x9PBY48vxPUFhCSiv0yCqkBh+HmX1vo9WblFNy+3hnoeddYXdryMT1iTQgJOPC0IKQ54JYifjtZOsUJnwhhLGNFKChNVvY5RWlLkyYofExSQJQ9iVAmqdPR6+zqU2l6uD2rY3fYJG0eNPkqwo1UtlBBU5ZfHn8rq6I2ctsAYakqLKxjRyXaA0nyZ2hVTZUDgoWwJGwhYUZMwzVxzvf4xNfdD7ZKiCnyZi7phngsXlwAJyBq19GkaqXJk5BFuMBrEw01JFc/tJAuaXYaTVVOiU8u7I3DPbjoXFOQ429KnF1idxL0nCKVwssiwMtW0aaPs8I3oelEo8MbBC6VFjb8GELSlf9JS5pDxs67uoEPQ2GoFJ6K7keHwq/gXRYYaYCwPzVljiZFlnNnwTvtNL69XqsidjjItGIH3cOhtPkHL+RVr/e15HNOo8NJfM++rmJBZG+xz4Jcsg39keNIhKuTQyBe3zyWXUkRJsKRrKdfwBlL9ovwoGDTG8hifA7VaE7QAa65l8O9CgNx+GsTrRTbReVG/bya/LrhFgSk/HUV63UXDLJAuRS2tJ2o1b5uaKjc6D4lSjurndDQQ3NTncNTBPaIT4nosRE5UBd6kS5oO2bIe77mVyvVM+BZkO5E9EV3RXowOTxHIkkQ+25KmD50PH6KTuCNI30LeDA5GG+B9EchrH9J07kOOQHslxVwd4GsTLYTXtX8TjxFEDYP7SVGAPDvG2Yxglj7oN5FrxsM5O/NCQPBbw2jyP8CcLURz/AFTQZFDACeJqAAAAAElFTkSuQmCC"
  },
  "description": "Easy to configure and use live chat application.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "api_key",
    "displayName": "Enter api_key",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const injectScript = require('injectScript');
const encodeUriComponent = require('encodeUriComponent');
const api_key =  encodeUriComponent(data.api_key);
const trackingUrl='https://gtm.500apps.com/gtm/ninjachat/'+api_key+'.js';
log('data = verify', trackingUrl);
injectScript(trackingUrl,data.gtmOnSuccess,data.gtmOnFailure);
// Call data.gtmOnSuccess when the tag is finished.
data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://gtm.500apps.com/gtm/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 26/10/2021, 17:23:30


