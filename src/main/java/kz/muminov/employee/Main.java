package kz.muminov.employee;

import kz.muminov.employee.config.SpringConfiguration;
import kz.muminov.employee.controller.SalariedCommissionEmployeeController;
import kz.muminov.employee.entity.SalariedCommissionEmployee;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);

        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(SpringConfiguration.class);
        SalariedCommissionEmployeeController salariedCommissionEmployeeController
                = context.getBean("salariedCommissionEmployeeController", SalariedCommissionEmployeeController.class);

        salariedCommissionEmployeeController.controllerMenu();

        int choice = in.nextInt();

        switch (choice){
            case 1:
                salariedCommissionEmployeeController.increaseSalary();
                break;
            case 2:
                salariedCommissionEmployeeController.showAllEmployees();
                break;
            default:
                System.out.println("Invalid choice");
                break;
        }

    }
}
