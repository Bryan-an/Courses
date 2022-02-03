package es.pildoras.IoC;

public class BossEmployee implements Employees {

	private CreationReports newReport;

	public BossEmployee(CreationReports newReport) {
		this.newReport = newReport;
	}

	@Override
	public String getTasks() {
		return "I manage the issues related to my section employees.";
	}

	@Override
	public String getReport() {
		// TODO Auto-generated method stub
		return "Presented report by the boss with fixes: " + newReport.getReport();
	}

}
