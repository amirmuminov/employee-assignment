package kz.muminov.employee.entity;

public class SalariedEmployee extends Employee {
    private double salary;

    public SalariedEmployee(Long id, String name, int age, double salary) {
        super(id, name, age);
        this.salary = salary;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "SalariedEmployee{" +
                "name=" + name +
                "salary=" + salary +
                '}';
    }
}
