package org.webScraping.logger;

import java.util.logging.Level;
import java.util.logging.Logger;

public class CustomLogger {
    private  static final Logger logger = Logger.getLogger(CustomLogger.class.getName());

    public static void info(String message){
        logger.log(Level.INFO,message);
    }
    public static void error(String message, Exception e){
        logger.log(Level.SEVERE,message,e);
    }
}
