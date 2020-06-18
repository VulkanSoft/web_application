package training.web.application.dao;

import training.web.application.model.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;


public class AdminExtractor extends AbstractExtractor<Admin> {
    public Admin extract(ResultSet rs) throws SQLException {
        Admin admin = new Admin(rs.getInt("id"), rs.getString("login"), rs.getString("password"));
        return admin;
    }
}
