package Dev.AxisBank;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class CaseStudy3 {
	public static void main(String[] args) throws InterruptedException  {
		WebDriver d=new ChromeDriver();
		//Navigating to Rediff mail register account
		d.get("https://register.rediff.com/register/register.php?FormName=user_details");
		d.manage().window().maximize();
		
		Thread.sleep(8000);
		System.out.println("Rediff mail registration tab opend in Chrome");
		
		//Printing Title Of Page
		String title=d.findElement(By.xpath("//*[@id=\"tblcrtac\"]/tbody/tr[1]/td")).getText();
		System.out.println("The Title of the Page is "+title);
		
		//Giving Full Name And printing value
		d.findElement(By.xpath("//*[@id=\"tblcrtac\"]/tbody/tr[3]/td[3]/input")).sendKeys("QAWarriors");
		String Full_name=d.findElement(By.xpath("//*[@id=\"tblcrtac\"]/tbody/tr[3]/td[3]/input")).getAttribute("value");
		System.out.println("Full Name entered is "+Full_name);
		
		//Giving Email and checking for availability
		d.findElement(By.xpath("//*[@id=\"tblcrtac\"]/tbody/tr[7]/td[3]/input[1]")).sendKeys("qawarriors");
		d.findElement(By.xpath("//*[@id=\"tblcrtac\"]/tbody/tr[7]/td[3]/input[2]")).click();
		System.out.println("Given mail ID And Checked for Availability");
		
		//Entering Password And Confirming it
		d.findElement(By.xpath("//*[@id=\"newpasswd\"]")).sendKeys("Qawarriors@12345");
		System.out.println("Password Given");
		d.findElement(By.xpath("//*[@id=\"newpasswd1\"]")).sendKeys("Qawarriors@12345");
		System.out.println("Re enterred Password");
		
		//Entering Alternate Email
		d.findElement(By.xpath("//*[@id=\"div_altemail\"]/table/tbody/tr[1]/td[3]/input")).sendKeys("QaWarriorstest@gmail.com");
		System.out.println("Alternate Email Given");
		
		//Entering Phone Number And Printing value
		d.findElement(By.xpath("//*[@id=\"mobno\"]")).sendKeys("7894561230");
		System.out.println("Phone Number Given");
		String phonenumber=d.findElement(By.xpath("//*[@id=\"mobno\"]")).getAttribute("value");
		System.out.println("The Entered phone Number is "+phonenumber);
		
		//Closing the Tab
		Thread.sleep(6000);
		d.close();
	}
}