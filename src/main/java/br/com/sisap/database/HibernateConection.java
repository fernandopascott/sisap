/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.sisap.database;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateConection {

    private static SessionFactory fabricaSessao = null;

    static {
        
        try {
        	
        	String host = "localhost"; //System.getenv("OPENSHIFT_MYSQL_DB_HOST");
            String port = "3306"; //System.getenv("OPENSHIFT_MYSQL_DB_PORT");
            String name = "sisap";

            Configuration cfg = new Configuration().
            		setProperty("hibernate.dialect", "org.hibernate.dialect.MySQLDialect").
                    setProperty("hibernate.connection.driver_class", "com.mysql.jdbc.Driver"). 
                    setProperty("hibernate.connection.url","jdbc:mysql://" + host + ":" + port + "/" + name).
                    setProperty("hibernate.connection.username", "root").
                    setProperty("hibernate.connection.password", "cpd2756").
                    setProperty("hibernate.connection.CharSet", "utf8").
                    setProperty("hibernate.connection.characterEncoding", "utf8").
                    setProperty("hibernate.connection.useUnicode", "true").
                    setProperty("jdbc.batch_size", "0").
                    setProperty("hibernate.show_sql", "true").
                    setProperty("hibernate.format_sql", "true").
                    setProperty("use_sql_comments", "true");
            
                        
            fabricaSessao = cfg.configure().buildSessionFactory();

        } catch (Exception e) {
        	e.printStackTrace();           
            fabricaSessao = null;
        }
    }

    public static Session getSessao() {
        return fabricaSessao.openSession();
    }
}
