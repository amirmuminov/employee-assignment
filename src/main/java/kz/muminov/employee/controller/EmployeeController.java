package kz.muminov.employee.controller;

import kz.muminov.employee.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class EmployeeController {

    private EmployeeService employeeService;

    @Autowired
    public EmployeeController(EmployeeService employeeService){
        this.employeeService = employeeService;
    }

    public void controllerMenu(){
        System.out.println("1. Increase salaried commission employees by 10% ");
        System.out.println("2. List all employees");
    }

    public void showAllEmployees(){
        employeeService.getAllEmployees();
    }

    public void increaseSalariedCommissionEmployeeFixedSalary(){
        employeeService.increaseSalariedCommissionEmployeeFixedSalary();
    }

}
