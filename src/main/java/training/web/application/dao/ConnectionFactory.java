package training.web.application.dao;

import java.sql.Connection;
import java.sql.SQLException;


public interface ConnectionFactory {
    Connection newConnection() throws SQLException;
}
