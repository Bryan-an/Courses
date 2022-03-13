package es.pildoras.testannotations;

import org.springframework.stereotype.Component;

@Component
public class FinancialReportQuart2 implements CreationFinancialReport {

	@Override
	public String getFinancialReport() {
		// TODO Auto-generated method stub
		return "Submission of catastrophic report for quarter 2";
	}

}
