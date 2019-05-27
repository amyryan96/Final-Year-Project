package com.example.demo.controller;

import java.io.InputStream;
import java.util.Scanner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Controller
public class NutritionController {

	final String endpoint = "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/mealplans/generate?timeFrame=day&targetCalories=2000&diet=vegetarian&exclude=shellfish%2C+olives";
	static String apikey = "00638cedeamsh424fbb1650e1886p1d9bb5jsnd4d86e6da725";
	static String host = "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com";
	
	@RequestMapping("/nutrition")
	public String Nutrition(HttpServletRequest request, HttpSession session){
		//String var = "Chocolate";
		CloseableHttpClient client = HttpClientBuilder.create().build();
		//HttpEntity entity = MultipartEntityBuilder.create().addTextBody("title", var).build();
		
		//RestTemplate restTemplate = new RestTemplate();
		//HttpHeaders headers = new HttpHeaders();
		//restTemplate.getForObject(endpoint, String.class);
		//headers.set("X-RapidAPI-Key", "00638cedeamsh424fbb1650e1886p1d9bb5jsnd4d86e6da725");
		//headers.set("X-RapidAPI-Host", "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com");
		//headers.set("RapidAPI Project", "default-application_3774304");
		//headers.set("Content-Type", "application/json");
		HttpPost httpPost = new HttpPost(endpoint);
		httpPost.setHeader("X-RapidAPI-Host", host);
		httpPost.setHeader("X-RapidAPI-Key", apikey);
		httpPost.setHeader("Content-Type", "application/json");
		//httpPost.setEntity(entity);
		
		try
		{
			HttpResponse response = client.execute(httpPost);
			InputStream stream = response.getEntity().getContent();
			String json = new Scanner(stream).useDelimiter("\\A").next();
			JsonParser parser = new JsonParser();
			Object obj = parser.parse(json);
			JsonObject jo = (JsonObject) obj;
			System.out.println(json);
			//JsonObject jo = new JsonParser().parse(json).getAsJsonObject();
			//JsonObject calories = (JsonObject) jo.get("calories");
			String calval = jo.getAsJsonObject("id").get("title").getAsString();
			System.out.println(calval);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "welcome";
	}
	
	
}
