package com.example.demo.app.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.example.demo.app.member.Employee;
import com.example.demo.app.member.EmployeeService;
import com.example.demo.app.member.Exercise;
import com.example.demo.app.member.ExerciseDate;
import com.example.demo.app.member.ExerciseDateService;
import com.example.demo.app.member.ExerciseService;
import com.example.demo.app.member.Member;
import com.example.demo.app.member.MemberService;
import com.example.demo.app.member.WelcomeEmail;
import com.example.demo.app.member.foodDiary;
import com.example.demo.app.member.foodDiaryService;
import com.google.api.client.util.Value;
import com.stripe.Stripe;
import com.stripe.model.Charge;

@Controller
public class ApplicationController {

	@Autowired
	public WelcomeEmail welcomeEmail;

	@Autowired
	public ExerciseDateService exerDateSer;

	// @Value("${mail.welcome}")
	private String text = "Thank You for Registering to iGym! \nLogin to start your journey.\n\n Kind Regards,\n iGym Portmarnock Team";

	@Autowired
	private ExerciseService exerSer;

	@Autowired
	private MemberService memberSer;

	@Autowired
	private foodDiaryService foodSer;
	@Autowired
	private EmployeeService empSer;

	@RequestMapping("/welcome")
	public String welcome(HttpServletRequest request) {

		return "welcome";
	}

	@RequestMapping("/progress")
	public String progress() {
		return "progress";
	}

	@RequestMapping("/progresschart")
	public String chart() {
		return "progresschart";
	}

	@PostMapping("/addExercise")
	public String addExercise(@SessionAttribute("id") int id, HttpServletRequest request) {

		String day = request.getParameter("day");
		String day1 = request.getParameter("day1");
		String day2 = request.getParameter("day2");
		String day3 = request.getParameter("day3");
		String day4 = request.getParameter("day4");
		String day5 = request.getParameter("day5");
		String day6 = request.getParameter("day6");
		ExerciseDate exDate = new ExerciseDate(request.getParameter("dateWeek"));
		Member mem = memberSer.getByMemberid(id);
		if (day != null) {
			Exercise exercise = new Exercise();
			exercise.setCardioTime(Integer.parseInt(request.getParameter("exercise1")));
			exercise.setWeightTime(Integer.parseInt(request.getParameter("exercise2")));
			exercise.setCaswTime(Integer.parseInt(request.getParameter("exercise3")));
			exercise.setDay(day);
			exDate.getExercise().add(exercise);
			exerSer.addExercise(exercise);
			request.getParameter("Memberid");
			//Member mem = memberSer.getByMemberid(id);
			mem.getExerciseDate().add(exDate);

		}
		if (day1 != null) {
			Exercise exercise = new Exercise();
			exercise.setCardioTime(Integer.parseInt(request.getParameter("exercise1M")));
			exercise.setWeightTime(Integer.parseInt(request.getParameter("exercise2M")));
			exercise.setCaswTime(Integer.parseInt(request.getParameter("exercise3M")));
			exercise.setDay(day1);
			exerSer.addExercise(exercise);
			exDate.getExercise().add(exercise);
			
			request.getParameter("Memberid");
			//Member mem = memberSer.getByMemberid(id);
			mem.getExerciseDate().add(exDate);

		}
		if (day2 != null) {
			Exercise exercise = new Exercise();
			exercise.setCardioTime(Integer.parseInt(request.getParameter("exerciseT1")));
			exercise.setWeightTime(Integer.parseInt(request.getParameter("exerciseT2")));
			exercise.setCaswTime(Integer.parseInt(request.getParameter("exerciseT3")));
			exercise.setDay(day2);
//			exerSer.addExercise(exercise);

			exDate.getExercise().add(exercise);
			exerSer.addExercise(exercise);
			request.getParameter("Memberid");
			//Member mem = memberSer.getByMemberid(id);
			mem.getExerciseDate().add(exDate);
			

		}
		if (day3 != null) {
			Exercise exercise = new Exercise();
			exercise.setCardioTime(Integer.parseInt(request.getParameter("exercise1W")));
			exercise.setWeightTime(Integer.parseInt(request.getParameter("exercise2W")));
			exercise.setCaswTime(Integer.parseInt(request.getParameter("exercise3W")));
			exercise.setDay(day3);
		//	exerSer.addExercise(exercise);

			exDate.getExercise().add(exercise);
			exerSer.addExercise(exercise);
			request.getParameter("Memberid");
			//Member mem = memberSer.getByMemberid(id);
			mem.getExerciseDate().add(exDate);
		}
		if (day4 != null) {
			Exercise exercise = new Exercise();
			exercise.setCardioTime(Integer.parseInt(request.getParameter("exercise1T")));
			exercise.setWeightTime(Integer.parseInt(request.getParameter("exercise2T")));
			exercise.setCaswTime(Integer.parseInt(request.getParameter("exercise3T")));
			exercise.setDay(day4);
			//exerSer.addExercise(exercise);

			exDate.getExercise().add(exercise);
			exerSer.addExercise(exercise);
			request.getParameter("Memberid");
			//Member mem = memberSer.getByMemberid(id);
			mem.getExerciseDate().add(exDate);
		}
		if (day5 != null) {
			Exercise exercise = new Exercise();
			exercise.setCardioTime(Integer.parseInt(request.getParameter("exercise1F")));
			exercise.setWeightTime(Integer.parseInt(request.getParameter("exercise2F")));
			exercise.setCaswTime(Integer.parseInt(request.getParameter("exercise3F")));
			exercise.setDay(day5);
			//exerSer.addExercise(exercise);

			exDate.getExercise().add(exercise);
			exerSer.addExercise(exercise);
			request.getParameter("Memberid");
			//Member mem = memberSer.getByMemberid(id);
			mem.getExerciseDate().add(exDate);
		}
		if (day6 != null) {
			Exercise exercise = new Exercise();
			exercise.setCardioTime(Integer.parseInt(request.getParameter("exercise1S")));
			exercise.setWeightTime(Integer.parseInt(request.getParameter("exercise2S")));
			exercise.setCaswTime(Integer.parseInt(request.getParameter("exercise3S")));
			exercise.setDay(day6);
			//exerSer.addExercise(exercise);

			exDate.getExercise().add(exercise);
			exerSer.addExercise(exercise);
			request.getParameter("Memberid");
			//Member mem = memberSer.getByMemberid(id);
			mem.getExerciseDate().add(exDate);
			//memberSer.upadteMember(mem.getMemberid(), mem);

		}
		exerDateSer.addExerciseDate(exDate);
		memberSer.upadteMember(mem.getMemberid(), mem);

		return "progresschart";
	}

	@RequestMapping("/MyFirstSchedule")
	public String schedule() {
		return "MyFirstSchedule";

	}
	
	@RequestMapping("/prevGoals")
	public String prevGoals() {
		return "previousGoals";
	}
	
	@RequestMapping("/ViewGoals")
	public String ViewGoals(HttpServletRequest request) {
		//int goalId = Integer.parseInt(request.getParameter("goalId"));
		//ExerciseDate ed = exerDateSer.getById(goalId);
		return "myGoals";
	}

	@RequestMapping("/recipes")
	public String recipes() {
		return "recipes";
	}

	@RequestMapping("/register")
	public String register() {
		return "register";
	}

	@PostMapping("/addMember")
	public String registerMember(@ModelAttribute Member mem, BindingResult bindingresult, HttpServletRequest request) {

		String emailAddress = request.getParameter("email");
		welcomeEmail.sendMessage(emailAddress, "iGym Registration", text);
		memberSer.addMember(mem);
		return "regsuccess";
	}

	@PostMapping("/addEmployee")
	public String registerEmployee(@ModelAttribute Employee emp, BindingResult bindingresult,
			HttpServletRequest request) {
		empSer.addEmployee(emp);
		return "empregsuccess";
	}

	@RequestMapping("/login")
	public String login(HttpServletRequest request) {

		return "login";

	}

	@RequestMapping("/loginMember")
	public String loginMember(@ModelAttribute Member mem, HttpServletRequest request) {
		String email = mem.getEmail();
		String password = mem.getPassword();
		String name = mem.getName();
		if (memberSer.findByEmailAndPassword(email, password) != null) {
			mem = memberSer.findByEmailAndPassword(email, password);
			HttpSession session = request.getSession();
			session.setAttribute("member", mem);
			session.setAttribute("id", mem.getMemberid());
			return "success";
		} else {

			return "failure";
		}
	}

	@RequestMapping("/loginEmployee")
	public String loginEmployee(@ModelAttribute Employee emp, HttpServletRequest request) {
		String email = emp.getEmail();
		String password = emp.getPassword();
		if (empSer.findByEmailAndPassword(email, password) != null) {
			emp = empSer.findByEmailAndPassword(email, password);
			HttpSession session = request.getSession();
			session.setAttribute("employee", emp);
			return "adminSuccess";
		} else {
			return "failure";
		}

	}

	@RequestMapping("/logoutMember")
	public String logoutMember(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "welcome";

	}

	@RequestMapping("/logoutEmployee")
	public String logoutEmployee(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "welcome";

	}

	@RequestMapping("/foodDiary")
	public String foodDiary() {
		return "foodDiary";
	}

	@PostMapping("/addFood")
	public String addfoodDiary(@SessionAttribute("id") int id, @ModelAttribute foodDiary food,
			BindingResult bindingresult, HttpServletRequest request) {
		String timeDay = request.getParameter("time");
		food.setTimeOfDay(timeDay);
		foodSer.addFood(food);
		request.getParameter("Memberid");
		Member mem = memberSer.getByMemberid(id);
		mem.getDiary().add(food);
		foodSer.addFood(food);
		return "success";
	}

	@GetMapping("/viewFoodLogs")
	public String viewFoodLogs(@ModelAttribute foodDiary food, HttpServletRequest request) {
		request.setAttribute("diaries", foodSer.viewFoodLogs());
		return "viewFoodLogs";
	}

	@RequestMapping("/payment")
	public String paymentPage() {
		return "payment";
	}

	@RequestMapping("/purchase")
	public String payment(@SessionAttribute("id") int id, HttpServletRequest request, HttpSession session) {
		try {
			Member member = memberSer.getByMemberid(id);

			if (request.getParameter("memberType1") != null) {
				if (request.getParameter("memlength1") != null) {
					//Member member = memberSer.getByMemberid(id);
					Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
					Map<String, Object> chargeParams = new HashMap<String, Object>();
					String answer;
					int yourPrice;
					double price = (40 * 100);
					int eventPrice = (int) Math.round(price);
					chargeParams.put("amount", eventPrice);
					chargeParams.put("currency", "eur");
					chargeParams.put("description", ("Monthly Adult Membership " + member.getMemberid()));
					chargeParams.put("source", "tok_amex");
					Charge.create(chargeParams);
				}

				else if (request.getParameter("memlength2") != null) {
					Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
					Map<String, Object> chargeParams = new HashMap<String, Object>();
					String answer;
					int yourPrice;
					double price = (110 * 100);
					int eventPrice = (int) Math.round(price);
					chargeParams.put("amount", eventPrice);
					chargeParams.put("currency", "eur");
					chargeParams.put("description", ("3 Month Adult Membership " + member.getMemberid()));
					chargeParams.put("source", "tok_amex");
					Charge.create(chargeParams);
				} else if (request.getParameter("memlength3") != null) {
					Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
					Map<String, Object> chargeParams = new HashMap<String, Object>();
					String answer;
					int yourPrice;
					double price = (370 * 100);
					int eventPrice = (int) Math.round(price);
					chargeParams.put("amount", eventPrice);
					chargeParams.put("currency", "eur");
					chargeParams.put("description", ("Yearly Adult Membership " +  member.getMemberid()));
					chargeParams.put("source", "tok_amex");
					Charge.create(chargeParams);
				}
			} else if (request.getParameter("memberType2") != null) {
				if (request.getParameter("memlength1") != null) {
					Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
					Map<String, Object> chargeParams = new HashMap<String, Object>();
					String answer;
					int yourPrice;
					double price = (25 * 100);
					int eventPrice = (int) Math.round(price);
					chargeParams.put("amount", eventPrice);
					chargeParams.put("currency", "eur");
					chargeParams.put("description", ("Monthly Student Membership " + member.getMemberid()));
					chargeParams.put("source", "tok_amex");
					Charge.create(chargeParams);
				}

				else if (request.getParameter("memlength2") != null) {
					Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
					Map<String, Object> chargeParams = new HashMap<String, Object>();
					String answer;
					int yourPrice;
					double price = (70 * 100);
					int eventPrice = (int) Math.round(price);
					chargeParams.put("amount", eventPrice);
					chargeParams.put("currency", "eur");
					chargeParams.put("description", ("3 Month Student Membership " + member.getMemberid()));
					chargeParams.put("source", "tok_amex");
					Charge.create(chargeParams);
				} else if (request.getParameter("memlength3") != null) {
					Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
					Map<String, Object> chargeParams = new HashMap<String, Object>();
					String answer;
					int yourPrice;
					double price = (250 * 100);
					int eventPrice = (int) Math.round(price);
					chargeParams.put("amount", eventPrice);
					chargeParams.put("currency", "eur");
					chargeParams.put("description", ("Yearly Student Membership " + member.getMemberid()));
					chargeParams.put("source", "tok_amex");
					Charge.create(chargeParams);
				}
			} else if (request.getParameter("memberType3") != null) {
				if (request.getParameter("memlength1") != null) {
					Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
					Map<String, Object> chargeParams = new HashMap<String, Object>();
					String answer;
					int yourPrice;
					double price = (15 * 100);
					int eventPrice = (int) Math.round(price);
					chargeParams.put("amount", eventPrice);
					chargeParams.put("currency", "eur");
					chargeParams.put("description", ("Monthly Child Membership " + member.getMemberid()));
					chargeParams.put("source", "tok_amex");
					Charge.create(chargeParams);
				}

				else if (request.getParameter("memlength2") != null) {
					Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
					Map<String, Object> chargeParams = new HashMap<String, Object>();
					String answer;
					int yourPrice;
					double price = (40 * 100);
					int eventPrice = (int) Math.round(price);
					chargeParams.put("amount", eventPrice);
					chargeParams.put("currency", "eur");
					chargeParams.put("description", ("3 Month Child Membership " + member.getMemberid()));
					chargeParams.put("source", "tok_amex");
					Charge.create(chargeParams);
				} else if (request.getParameter("memlength3") != null) {
					Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
					Map<String, Object> chargeParams = new HashMap<String, Object>();
					String answer;
					int yourPrice;
					double price = (150 * 100);
					int eventPrice = (int) Math.round(price);
					chargeParams.put("amount", eventPrice);
					chargeParams.put("currency", "eur");
					chargeParams.put("description", ("Yearly Child Membership " + member.getMemberid()));
					chargeParams.put("source", "tok_amex");
					Charge.create(chargeParams);
				}
			}

		} catch (Exception e) {

		}
		return "success";
	}

}