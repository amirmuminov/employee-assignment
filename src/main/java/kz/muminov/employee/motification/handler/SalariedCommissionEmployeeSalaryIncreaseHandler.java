package kz.muminov.employee.motification.handler;

import kz.muminov.employee.motification.event.SalariedCommissionEmployeeSalaryIncreaseEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

@Component
public class SalariedCommissionEmployeeSalaryIncreaseHandler implements ApplicationListener<SalariedCommissionEmployeeSalaryIncreaseEvent> {

    @Override
    public void onApplicationEvent(SalariedCommissionEmployeeSalaryIncreaseEvent salariedCommissionEmployeeSalaryIncreaseEvent) {
        System.out.println("Salaried commission employees salaries increased on 10%");
    }

}
