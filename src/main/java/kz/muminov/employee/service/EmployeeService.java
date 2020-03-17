package kz.muminov.employee.service;

import kz.muminov.employee.entity.Employee;
import kz.muminov.employee.entity.EmployeeType;
import kz.muminov.employee.notification.event.SalariedCommissionEmployeeSalaryIncreaseEvent;
import kz.muminov.employee.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.context.ApplicationEventPublisherAware;
import org.springframework.stereotype.Component;

@Component
public class EmployeeService implements ApplicationEventPublisherAware {

    private EmployeeRepository employeeRepository;
    private ApplicationEventPublisher eventPublisher;

    @Autowired
    public EmployeeService(EmployeeRepository employeeRepository){
        this.employeeRepository = employeeRepository;
    }

    public void getAllEmployees(){
        for (Employee employee: employeeRepository.findAll()){
            System.out.println("Employee id: " + employee.getId());
            System.out.println("Employee name: " + employee.getName());
            System.out.println("Employee fixed salary: " + employee.getFixedSalary());
        }
    }

    public void increaseSalariedCommissionEmployeeFixedSalary() {
        eventPublisher.publishEvent(new SalariedCommissionEmployeeSalaryIncreaseEvent(this));
        employeeRepository.salariedCommissionEmployeeIncreaseFixedSalary();
    }

    @Override
    public void setApplicationEventPublisher(ApplicationEventPublisher applicationEventPublisher) {
        this.eventPublisher = applicationEventPublisher;
    }
}
