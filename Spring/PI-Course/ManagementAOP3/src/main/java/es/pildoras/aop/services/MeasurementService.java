package es.pildoras.aop.services;

import java.util.concurrent.TimeUnit;

import org.springframework.stereotype.Component;

@Component
public class MeasurementService {
	public String getService() {
		System.out.println("****** THE METHOD DOING ITS TASKS ******");
		try {
			TimeUnit.SECONDS.sleep(4);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		return "Services finished";
	}
}
