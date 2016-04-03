/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prueba.configuration;

import java.io.File;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import org.apache.catalina.LifecycleException;
import org.apache.catalina.WebResourceRoot;
import org.apache.catalina.core.StandardContext;
import org.apache.catalina.startup.Tomcat;
import org.apache.catalina.webresources.DirResourceSet;
import org.apache.catalina.webresources.StandardRoot;

/**
 *
 * @author cesbe
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            String webappDirLocation = "src/main/webapp/";
            Tomcat tomcat = new Tomcat();
            
            //The port that we should run on can be set into an environment variable
            //Look for that variable and default to 8080 if it isn't there.
            String webPort = System.getenv("PORT");
            if(webPort == null || webPort.isEmpty()) {
                webPort = "8080";
            }
            
            tomcat.setPort(Integer.valueOf(webPort));
            
            StandardContext ctx = (StandardContext) tomcat.addWebapp("/", new File(webappDirLocation).getAbsolutePath());
            System.out.println("configuring app with basedir: " + new File("./" + webappDirLocation).getAbsolutePath());
            
            // Declare an alternative location for your "WEB-INF/classes" dir
            // Servlet 3.0 annotation will work
            File additionWebInfClasses = new File("target/classes");
            WebResourceRoot resources = new StandardRoot(ctx);
            resources.addPreResources(new DirResourceSet(resources, "/WEB-INF/classes",
                    additionWebInfClasses.getAbsolutePath(), "/"));
            ctx.setResources(resources);
            
            tomcat.start();
            tomcat.getServer().await();
        } catch (ServletException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        } catch (LifecycleException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
