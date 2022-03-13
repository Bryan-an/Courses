package es.pildoras.testannotations;

import org.springframework.stereotype.Component;

@Component
public class FinancialReportQuart4 implements CreationFinancialReport {

	@Override
	public String getFinancialReport() {
		// TODO Auto-generated method stub
		return "Presentation of year-end report";
	}

}
