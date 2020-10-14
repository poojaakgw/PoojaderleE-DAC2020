
package Bank;
import java.util.Scanner;

public class Bank_Application {
         Scanner sc=new Scanner(System.in);
        long Ac_Number;
    String Ac_Type;
    Double Amount;
    String Name;
    Double deposit_amount;
    Double Withdraw_amount;
      void OpenAccount()
          {
                System.out.println("Enter the Name: ");
                 Name=sc.nextLine();
              System.out.println("Enter the Account Number: ");
                Ac_Number=sc.nextLong();
                  
                System.out.println("Enter the Account Type: ");
                 Ac_Type=sc.next();
                 
                
                 
                 
                  System.out.println("Enter the Amount: ");
                  Amount=sc.nextDouble();
          }
          
          
            void ShowAccountinfo()
            {
                System.out.println("Account Number:" +Ac_Number);
                System.out.println("Account Type:" + Ac_Type);
                System.out.println("Account Name:" +Name);
                System.out.println("Account Amount:" +Amount);
            }
          
               void deposit()
               {
                    System.out.println("Enter the Amount to deposit: ");
                    deposit_amount=sc.nextDouble();  
                  
                   Amount=Amount+deposit_amount;
                   System.out.println("Deposit" +Amount);
                   
               }
               
               void withdraw()
               {
                     System.out.println("Enter the Amount to withdraw: ");
                    Withdraw_amount=sc.nextDouble();  
                   if(Amount<=500)
                   {
                       System.out.println("Not Sufficent Balance");
                   }
                   else
                   {
                   Amount=Amount-Withdraw_amount;
                    System.out.println(" After withdraw Remining Amount is "+Amount);
                   }
               }
                
             
          void CheckBal()
               {
                  
               
                   System.out.println("Amount of Account" +Amount);
                   
               }
    public static void main(String args[])
    {
         Scanner sc1=new Scanner(System.in);
        Bank_Application s=new Bank_Application();
      
        char ans = 0;
        
         do
      {
   
         System.out.println("OpenAccount");
         System.out.println("ShowAccountinfo2");
          System.out.println("deposit");
           System.out.println("withdraw"); 
           System.out.println("CheckBal");
             System.out.println("exit");
           
           
         System.out.println("Enter the choice");
          int ch=sc1.nextInt();
      
     
         switch(ch)
         {
             case 1:
                         s.OpenAccount();
                      break;
                      
               case 2:
                       
                         s. ShowAccountinfo();
                            break;
                      
                             
                      
                      
                 case 3:
                      s.deposit();
                      break;
                      
                     
                 case 4:
                     s.withdraw();
                     
                      break;
                      
                 case 5:
                    s. CheckBal();
                      break;
                      
                
                      
                  default:
                           System.out.println("Exit");
                  
         }
            System.out.println("do you want continue");
            ans=sc1.next().charAt(0);
        }while(ans=='y'||ans=='Y');
             
        
    }
    
}
