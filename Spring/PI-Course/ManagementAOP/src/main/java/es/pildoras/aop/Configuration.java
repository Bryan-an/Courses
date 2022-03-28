package es.pildoras.aop;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@org.springframework.context.annotation.Configuration
@EnableAspectJAutoProxy
@ComponentScan("es.pildoras.aop")
public class Configuration {

}
