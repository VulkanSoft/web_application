package training.web.application.dao;

import java.sql.Connection;
import java.sql.SQLException;


public abstract class AbstractDaoJdbc {
    private final ConnectionFactory FACTORY = new ConnectionPool_Derby();

    protected Connection getSerializableConnection() throws SQLException {
        try{
            Connection connection = FACTORY.newConnection();
            return connection;
        }
        catch(SQLException e){
            throw new SQLException("Exception while acquiring connection from Connection Pool");
        }
    }
}
