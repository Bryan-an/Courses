package es.pildoras.testannotations;

import org.springframework.beans.factory.annotation.Value;

public class FinancialDirector implements Employees {

	private CreationFinancialReport financialReport;

	@Value("${email}")
	private String email;

	@Value("${companyName}")
	private String companyName;

	public FinancialDirector(CreationFinancialReport financialReport) {
		this.financialReport = financialReport;
	}

	public String getEmail() {
		return email;
	}

	public String getCompanyName() {
		return companyName;
	}

	@Override
	public String getTasks() {
		// TODO Auto-generated method stub
		return "Management and direction of the company's financial operations";
	}

	@Override
	public String getReport() {
		// TODO Auto-generated method stub
		return financialReport.getFinancialReport();
	}

}
