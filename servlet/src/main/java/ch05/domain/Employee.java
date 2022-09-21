package ch05.domain;

import java.time.LocalDate;

public class Employee {
	private int employeeId;
	private String name;
	private LocalDate hireDate;
	
	@Override
	public String toString() {
		return employeeId + ", " + name + ", " + hireDate;
	}
}