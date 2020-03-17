package kz.muminov.employee.repository;

import kz.muminov.employee.entity.Employee;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface EmployeeRepository extends CrudRepository<Employee, Long> {

    List<Employee> findByEmplType(Enum emplType);

    @Transactional
    @Modifying
    @Query(value = "UPDATE employees SET fixed_salary = fixed_salary + (fixed_salary * 0.1) WHERE empl_type = 'SALARIED_COMMISSION'", nativeQuery = true)
    void salariedCommissionEmployeeIncreaseFixedSalary();
}
