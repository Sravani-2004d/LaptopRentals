public class LaptopBookingHandler {

    public static void sendEmailNotification (List<Laptop_Bookings__c> lapList){

        for(Laptop_Bookings__c lap:lapList)

        {

            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();

                email.setToAddresses( new List<String>{lap.Email__c});

                email.setSubject('Welcome to our company');

             string body = 'Dear Customer, \n';

             body += 'Welcome to Laptop Rentals! You have been seen as a valuable customer to us.\n Please continue your journey with us, while we try to provide you with good quality resources. \n Laptop Amount = ' + lap.Amount__c + ' \n Core_Type__c = '+lap.core_type__c +' \nLaptop_Names__c = '+lap.Laptop_names__c;

             email.setPlainTextBody(body);

                Messaging.sendEmail(new List<Messaging.SingleEmailMessage>{email});


        }

    }

}