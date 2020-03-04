package kz.muminov.employee.motification.event;

import org.springframework.context.ApplicationEvent;

public class SalariedCommissionEmployeeSalaryIncreaseEvent extends ApplicationEvent {

    public SalariedCommissionEmployeeSalaryIncreaseEvent(Object source) {
        super(source);
    }

}
