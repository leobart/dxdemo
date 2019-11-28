/**
 * Created by Leonid Bartenev
 */

public without sharing class Schedule_RatesUpdate implements Schedulable{
    
    public void execute(SchedulableContext sc) {
        //TODO
    }
    
    public static void run(){
        System.schedule('Update Rates Job', '0 0 0 * * *', new Schedule_RatesUpdate());
    }
    
}