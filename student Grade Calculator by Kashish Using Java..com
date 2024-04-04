
import java.util.Scanner;
public class StudentGrade {

    
     
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Enter The Marks Of Subject1");
        System.out.println("Enter The Marks Of Subject2");
        System.out.println("Enter The Marks OF Subject3");
        System.out.println("Enter The Marks Of Subject4");
        System.out.println("Enter The Marks Of Subject5");
        System.out.println("Enter The Marks Of Subject6");
        System.out.println("Enter The Marks Of Subject7");
        int a1 = input.nextInt();
        int a2 = input.nextInt();
        int a3 = input.nextInt();
        int a4 = input.nextInt();
        int a5 = input.nextInt();
        int a6 = input.nextInt();
        int a7 = input.nextInt();
        int total = a1+a2+a3+a4+a5+a6+a7;
        float per = total/7;
        System.out.println("Total :"+total);
        System.out.println("Percentage :"+per);
        if(per>=90) {
            System.out.println("Grade A");
            }
        else if(per>=80) {
            System.out.println("Grade B");
        }
        else if(per>=70) {
            System.out.println("Grade C");
        }
        else if(per>=60) {
            System.out.println("Grade D");
        }
        
            else if(per>=50) {
                System.out.println("Grade E");
            }
        else
                System.out.println("Grade F");
            
    }
    
}
