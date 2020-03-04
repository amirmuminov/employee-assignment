package kz.muminov.employee.entity;

public class SalariedCommissionEmployee extends Employee {
    private double baseSalary;
    private double percentageFromSales;

    public SalariedCommissionEmployee(Long id, String name, int age, double baseSalary, double percentageFromSales) {
        super(id, name, age);
        this.baseSalary = baseSalary;
        this.percentageFromSales = percentageFromSales;
    }

    public SalariedCommissionEmployee() {
    }

    public double getBaseSalary() {
        return baseSalary;
    }

    public void setBaseSalary(double baseSalary) {
        this.baseSalary = baseSalary;
    }

    public double getPercentageFromSales() {
        return percentageFromSales;
    }

    public void setPercentageFromSales(double percentageFromSales) {
        this.percentageFromSales = percentageFromSales;
    }

    @Override
    public String toString() {
        return "SalariedCommissionEmployee{" +
                "baseSalary=" + baseSalary +
                ", percentageFromSales=" + percentageFromSales +
                ", id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                '}';
    }
}
