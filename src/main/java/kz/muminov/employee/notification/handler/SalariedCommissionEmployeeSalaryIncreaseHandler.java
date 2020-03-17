package kz.muminov.employee.notification.handler;

import kz.muminov.employee.notification.event.SalariedCommissionEmployeeSalaryIncreaseEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

@Component
public class SalariedCommissionEmployeeSalaryIncreaseHandler implements ApplicationListener<SalariedCommissionEmployeeSalaryIncreaseEvent> {

    @Override
    public void onApplicationEvent(SalariedCommissionEmployeeSalaryIncreaseEvent salariedCommissionEmployeeSalaryIncreaseEvent) {
        System.out.println("Salaried commission employees salaries increased on 10%");
    }

}
