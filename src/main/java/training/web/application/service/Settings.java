package training.web.application.service;

import java.io.IOException;
import java.util.Properties;


public class Settings {
    private static final Settings INSTANCE = new Settings();

    private final Properties PROPERTIES = new Properties();

    private Settings(){
        try{
            PROPERTIES.load(getClass().getClassLoader().getResourceAsStream("derby.properties"));
        }
        catch (IOException e){
            e.printStackTrace();
        }
    }

    public static Settings getInstance(){
        return INSTANCE;
    }

    public String value(String key){
        return this.PROPERTIES.getProperty(key);
    }
}
