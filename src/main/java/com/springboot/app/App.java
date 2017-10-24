package com.springboot.app;

import com.springboot.app.configuration.JpaConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;

@Import(JpaConfiguration.class)
@SpringBootApplication(scanBasePackages = "com.springboot.app")
public class App {

  public static void main(String[] args) {
    SpringApplication.run(App.class, args);
  }
}
