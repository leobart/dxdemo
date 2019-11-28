/**
 * Created by Leonid Bartenev
 */

public without sharing class RatesService {
    
    public static Decimal getRate(String curr){
        RemoteCall ratesRemoteCall = new RatesRemoteCall();
        RatesRemoteCall.RatesRemoteCallResponse response = (RatesRemoteCall.RatesRemoteCallResponse) ratesRemoteCall.execute();
        return response.rates.get(curr);
    }
    
    public static void useServiceDemo(){
        System.debug('Rate of EUR/USD: ' + RatesService.getRate('EUR'));
    }

}