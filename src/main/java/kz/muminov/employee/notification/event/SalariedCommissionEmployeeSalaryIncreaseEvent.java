package kz.muminov.employee.notification.event;

import org.springframework.context.ApplicationEvent;

public class SalariedCommissionEmployeeSalaryIncreaseEvent extends ApplicationEvent {

    public SalariedCommissionEmployeeSalaryIncreaseEvent(Object source) {
        super(source);
    }

}
