package training.web.application.dao;


public class DBException extends RuntimeException {
    public DBException(String message, Throwable cause) {
        super(message, cause);
    }
}
