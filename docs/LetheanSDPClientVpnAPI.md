# LetheanSDPClientVpnAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**startLetheand**](LetheanSDPClientVpnAPI.md#startletheand) | **GET** /letheand/start | 


# **startLetheand**
```swift
    open class func startLetheand(dataDir: String, version: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LetheanSDP

let dataDir = "dataDir_example" // String | Returns the binary version
let version = true // Bool | Returns the binary version (optional)

LetheanSDPClientVpnAPI.startLetheand(dataDir: dataDir, version: version) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataDir** | **String** | Returns the binary version | 
 **version** | **Bool** | Returns the binary version | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

