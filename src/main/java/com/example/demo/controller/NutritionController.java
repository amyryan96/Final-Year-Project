package com.example.demo.controller;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Scanner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.member.RecipeItem;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Controller
public class NutritionController {

	@RequestMapping("/nutrition")
	public String nutrition(HttpServletRequest request) {
		String querySearch = request.getParameter("searchQ");
		String URL = "https://www.food2fork.com/api/search?key=74e740f9174b7814f02c0912352fa273&q=" + querySearch;
		HttpPost httpPost = new HttpPost(URL);
		CloseableHttpClient httpClient = HttpClientBuilder.create().build();
		ArrayList<RecipeItem> ritems = new ArrayList<RecipeItem>();

		try {

			HttpResponse response = httpClient.execute(httpPost);
			InputStream stream = response.getEntity().getContent();
			String json = new Scanner(stream).useDelimiter("\\A").next();
			JsonParser parser = new JsonParser();
			Object obj = parser.parse(json);
			JsonObject jo = (JsonObject) obj;

			JsonArray recipes = (JsonArray) jo.get("recipes");
			for (int i = 0; i < recipes.size(); i++) {
				JsonObject recipeob = (JsonObject) recipes.get(i);
				String publisher = recipeob.get("publisher").getAsString();
				//System.out.println(publisher);

				String title = recipeob.get("title").getAsString();
				//System.out.println(title);

				String srcurl = recipeob.get("source_url").getAsString();
				//System.out.println(srcurl);

				String image = recipeob.get("image_url").getAsString();
				//System.out.println(image);

				String recipeid = recipeob.get("recipe_id").getAsString();
				//System.out.println(recipeid);

				RecipeItem item = new RecipeItem();
				item.setPublisher(publisher);
				item.setTitle(title);
				item.setSrcurl(srcurl);
				item.setImage(image);
				item.setRecipeid(recipeid);
				ritems.add(item);

			}
			HttpSession session = request.getSession();
			session.setAttribute("recipelist", ritems);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "recipes";

	}

	


}
