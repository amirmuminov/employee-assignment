package kz.muminov.employee.dao;

import kz.muminov.employee.connection.DatabaseConnection;
import kz.muminov.employee.entity.SalariedCommissionEmployee;
import kz.muminov.employee.mapper.SalariedCommissionEmployeeMapper;
import kz.muminov.employee.motification.event.SalariedCommissionEmployeeSalaryIncreaseEvent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.context.ApplicationEventPublisherAware;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class SalariedCommissionEmployeeDAO implements ApplicationEventPublisherAware {

    private ApplicationEventPublisher eventPublisher;
    private JdbcTemplate jdbcTemplate;

    private final String GET_ALL_EMPLOYEES = "SELECT * FROM salaried_commission_employee";
    private final String INCREASE_ALL_EMPLOYEES_SALARY = "UPDATE salaried_commission_employee SET base_salary = base_salary + (base_salary * 0.1)";

    @Autowired
    public SalariedCommissionEmployeeDAO(DatabaseConnection databaseConnection){
        this.jdbcTemplate = new JdbcTemplate(databaseConnection.getDataSource());
    }

    public List<SalariedCommissionEmployee> getAllEmployees(){
        return jdbcTemplate.query(GET_ALL_EMPLOYEES, new SalariedCommissionEmployeeMapper());
    }

    public int increaseEmployeeSalary(){
        eventPublisher.publishEvent(new SalariedCommissionEmployeeSalaryIncreaseEvent(this));
        return jdbcTemplate.update(INCREASE_ALL_EMPLOYEES_SALARY);
    }

    @Override
    public void setApplicationEventPublisher(ApplicationEventPublisher applicationEventPublisher) {
        this.eventPublisher = applicationEventPublisher;
    }

}
