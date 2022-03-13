package es.pildoras.testannotations;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@ComponentScan("es.pildoras.testannotations")
@PropertySource("classpath:companyData.properties")
public class EmployeesConfig {

	// Define bean for FinancialReportPurchasingDmt
	@Bean
	public CreationFinancialReport financialReportPurchasingDmt() { // it will be the injected Bean id
		return new FinancialReportPurchasingDmt();
	}

	// Define bean for FinancialDirector and inject dependencies
	@Bean
	public Employees financialDirector() {
		return new FinancialDirector(financialReportPurchasingDmt());
	}
}
