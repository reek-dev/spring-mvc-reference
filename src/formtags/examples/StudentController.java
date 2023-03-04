package formtags.examples;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {

	/*
	 * before you show the form, you must create a student object and add it to the
	 * model
	 */
	@RequestMapping("/showForm")
	public String showForm(Model model) {

		// create the object
		Student student = new Student();

		// add it to the model
		model.addAttribute("student", student);
		return "student-form";
	}

	/*
	 * Spring will automatically populate the Student object using this function
	 * behind the scene
	 */
	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("student") Student student) {

		/*
		 * logging the input data to verify the automatic population.
		 * this is not a necessary step at all.
		 */
		System.out.println(
				"theStudent:" 
						+ "[ firstname: " + student.getFirstName()
						+ " , lastname: " + student.getLastName()
				+ " ]");
		return "student-confirmation";
	}

}
