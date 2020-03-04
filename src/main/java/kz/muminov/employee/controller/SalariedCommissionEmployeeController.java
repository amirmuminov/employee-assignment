package kz.muminov.employee.controller;

import kz.muminov.employee.service.SalariedCommissionEmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class SalariedCommissionEmployeeController {

    private SalariedCommissionEmployeeService salariedCommissionEmployeeService;

    @Autowired
    public SalariedCommissionEmployeeController(SalariedCommissionEmployeeService salariedCommissionEmployeeService){
        this.salariedCommissionEmployeeService = salariedCommissionEmployeeService;
    }

    public void controllerMenu(){
        System.out.println("1. Increase salaried commission employees by 10% ");
        System.out.println("2. List all employees");
    }

    public void increaseSalary(){
        salariedCommissionEmployeeService.increaseEmployeeSalary();
    }

    public void showAllEmployees(){
        salariedCommissionEmployeeService.showAllEmployees();
    }

}
