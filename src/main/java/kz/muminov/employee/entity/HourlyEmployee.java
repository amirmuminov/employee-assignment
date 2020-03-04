package kz.muminov.employee.entity;

public class HourlyEmployee extends Employee{
    private double paymentPerHour;
    private double overtimeCoefficient;

    public HourlyEmployee(Long id, String name, int age, double paymentPerHour, double overtimeCoefficient) {
        super(id, name, age);
        this.paymentPerHour = paymentPerHour;
        this.overtimeCoefficient = overtimeCoefficient;
    }

    public double getPaymentPerHour() {
        return paymentPerHour;
    }

    public void setPaymentPerHour(double paymentPerHour) {
        this.paymentPerHour = paymentPerHour;
    }

    public double getOvertimeCoefficient() {
        return overtimeCoefficient;
    }

    public void setOvertimeCoefficient(double overtimeCoefficient) {
        this.overtimeCoefficient = overtimeCoefficient;
    }

}
