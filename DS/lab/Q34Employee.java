import java.util.Scanner;

class Employee_Detail {
    int Employee_ID;
    String Name;
    String Designation;
    double Salary;

    public Employee_Detail(int Employee_ID, String Name, String Designation, double Salary) {
        this.Employee_ID = Employee_ID;
        this.Name = Name;
        this.Designation = Designation;
        this.Salary = Salary;
    }

    public void printDetails() {
        System.out.println("Employee ID: " + Employee_ID);
        System.out.println("Name: " + Name);
        System.out.println("Designation: " + Designation);
        System.out.println("Salary: " + Salary);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter Employee ID: ");
        int Employee_ID = scanner.nextInt();

        System.out.print("Enter Name: ");
        String Name = scanner.next();

        System.out.print("Enter Designation: ");
        String Designation = scanner.next();

        System.out.print("Enter Salary: ");
        double Salary = scanner.nextDouble();

        Employee_Detail employee = new Employee_Detail(Employee_ID, Name, Designation, Salary);

        System.out.println("Employee Details:");
        employee.printDetails();
    }
}