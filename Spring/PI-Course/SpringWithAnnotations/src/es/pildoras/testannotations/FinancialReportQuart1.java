package es.pildoras.testannotations;

import org.springframework.stereotype.Component;

@Component
public class FinancialReportQuart1 implements CreationFinancialReport {

	@Override
	public String getFinancialReport() {
		// TODO Auto-generated method stub
		return "Presentation of financial report for quarter 1";
	}

}
