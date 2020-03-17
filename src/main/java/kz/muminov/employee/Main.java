package kz.muminov.employee;

import kz.muminov.employee.config.SpringConfiguration;
import kz.muminov.employee.controller.EmployeeController;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);

        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(SpringConfiguration.class);
        EmployeeController employeeController
                = context.getBean("employeeController", EmployeeController.class);

        employeeController.controllerMenu();

        int choice = in.nextInt();

        switch (choice){
            case 1:
                employeeController.increaseSalariedCommissionEmployeeFixedSalary();
                break;
            case 2:
                employeeController.showAllEmployees();
                break;
            default:
                System.out.println("Invalid choice");
                break;
        }

    }


}
