/**
 * Created by Leonid Bartenev
 */

public without sharing class RatesRemoteCall extends RemoteCall{
    
    public class RatesRemoteCallResponse{
        public String base;
        public Map<String, Decimal> rates;
    }
    
    public class RatesRemoteCallRequest{
        public String baseRate;
    }
    
    public RatesRemoteCall(){
        endPointURL = 'callout:RatesService';
        httpMethod = METHOD_GET;
    }
    
    public override Type getType() {
        return RatesRemoteCall.class;
    }
    
    protected override String buildRequestBody() {
        RatesRemoteCallRequest request = new RatesRemoteCallRequest();
        String body = JSON.serialize(request);
        return body;
    }
    
    protected override Object parseResponse(String responseBody) {
        System.debug('RESPONSE: ' + responseBody);
        return null;
    }
}