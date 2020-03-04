package kz.muminov.employee.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@ComponentScan("kz.muminov.employee")
@PropertySource("application.properties")
public class SpringConfiguration {
}
