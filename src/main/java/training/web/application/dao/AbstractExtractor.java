package training.web.application.dao;

import training.web.application.model.*;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Set;
import java.util.TreeSet;


public abstract class AbstractExtractor<T> {
    public abstract T extract(ResultSet rs) throws SQLException;

    public Set<T> extractAll(ResultSet rs) throws SQLException{
        Set<T> result = new TreeSet<T>();
        while (rs.next()){
            result.add(extract(rs));
        }
        return result;
    }
}
