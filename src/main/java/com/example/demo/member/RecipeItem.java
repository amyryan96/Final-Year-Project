package com.example.demo.member;

public class RecipeItem {

	private String publisher;
	private String title;
	private String srcurl;
	private String image;
	private String recipeid;

	public String getRecipeid() {
		return recipeid;
	}

	public void setRecipeid(String recipeid) {
		this.recipeid = recipeid;
	}

	public RecipeItem() {

	}

	public RecipeItem(String publisher, String title, String srcurl, String image, String recipeid) {

		this.publisher = publisher;
		this.title = title;
		this.srcurl = srcurl;
		this.image = image;
		this.recipeid = recipeid;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSrcurl() {
		return srcurl;
	}

	public void setSrcurl(String srcurl) {
		this.srcurl = srcurl;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
