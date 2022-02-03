package es.pildoras.IoC;

public class ManagerEmployee implements Employees {

	private String email;
	private String companyName;

	// Creation of the CreationReports type field (interface)
	private CreationReports newReport;

	// Creation the constructor that injects the dependency
	public ManagerEmployee(CreationReports newReport) {
		this.newReport = newReport;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	@Override
	public String getTasks() {
		// TODO Auto-generated method stub
		return "Manage the company staff";
	}

	@Override
	public String getReport() {
		// TODO Auto-generated method stub
		return "Report created by the Manager: " + newReport.getReport();
	}

	// init method. Execute tasks before the bean be available
	public void initialMethod() {
		System.out.println("Inside of init method. Here there will be the tasks to execute before the bean is ready");
	}

	// destroy method. Execute tasks after the bean has been used
	public void finalMethod() {
		System.out.println(
				"Inside of destroy method. Here there will be the tasks to execute after the bean has been used");
	}

}
