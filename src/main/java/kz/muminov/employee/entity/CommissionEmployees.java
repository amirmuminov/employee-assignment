package kz.muminov.employee.entity;

public class CommissionEmployees {
    private double percentageFromSales;

    public CommissionEmployees(double percentageFromSales) {
        this.percentageFromSales = percentageFromSales;
    }

    public double getPercentageFromSales() {
        return percentageFromSales;
    }

    public void setPercentageFromSales(double percentageFromSales) {
        this.percentageFromSales = percentageFromSales;
    }

}
