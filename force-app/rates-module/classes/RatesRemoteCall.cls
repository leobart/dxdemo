/**
 * Created by Leonid Bartenev
 */

public without sharing class RatesRemoteCall extends RemoteCall{
    
    public class RatesRemoteCallResponse{
        public String base;
        public Map<String, Decimal> rates;
    }
    
    public RatesRemoteCall(){
        endPointURL = 'callout:RatesService';
        httpMethod = METHOD_GET;
    }
    
    public override Type getType() {
        return RatesRemoteCall.class;
    }
    
    protected override String buildRequestBody() {
        return null;
    }
    
    protected override Object parseResponse(String responseBody) {
        return JSON.deserialize(responseBody, RatesRemoteCallResponse.class);
    }
    
}