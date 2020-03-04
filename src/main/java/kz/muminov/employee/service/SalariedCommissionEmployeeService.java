package kz.muminov.employee.service;

import kz.muminov.employee.dao.SalariedCommissionEmployeeDAO;
import kz.muminov.employee.entity.SalariedCommissionEmployee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class SalariedCommissionEmployeeService {

    private SalariedCommissionEmployeeDAO salariedCommissionEmployeeDAO;

    @Autowired
    public SalariedCommissionEmployeeService(SalariedCommissionEmployeeDAO salariedCommissionEmployeeDAO){
        this.salariedCommissionEmployeeDAO = salariedCommissionEmployeeDAO;
    }

    public void showAllEmployees(){
        List<SalariedCommissionEmployee> employees = salariedCommissionEmployeeDAO.getAllEmployees();
        for (SalariedCommissionEmployee employee: employees) {
            System.out.println(employee);
        }
    }

    public void increaseEmployeeSalary() {
        int affectedRows = salariedCommissionEmployeeDAO.increaseEmployeeSalary();
        System.out.println("Affected rows: " + affectedRows);
    }
}
