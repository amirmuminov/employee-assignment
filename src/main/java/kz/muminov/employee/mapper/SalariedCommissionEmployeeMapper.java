package kz.muminov.employee.mapper;

import kz.muminov.employee.entity.SalariedCommissionEmployee;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SalariedCommissionEmployeeMapper implements RowMapper<SalariedCommissionEmployee> {

    @Override
    public SalariedCommissionEmployee mapRow(ResultSet resultSet, int i) throws SQLException {
        SalariedCommissionEmployee employee = new SalariedCommissionEmployee(
                resultSet.getLong(1),
                resultSet.getString(2),
                resultSet.getInt(3),
                resultSet.getDouble(4),
                resultSet.getDouble(5)
        );

        return employee;
    }

}
