package es.pildoras.testannotations;

import org.springframework.stereotype.Component;

@Component
public class FinancialReportQuart3 implements CreationFinancialReport {

	@Override
	public String getFinancialReport() {
		// TODO Auto-generated method stub
		return "Submission of favorable quarter 3 report";
	}

}
