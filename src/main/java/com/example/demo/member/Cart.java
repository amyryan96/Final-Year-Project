package com.example.demo.member;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Cart {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int CartId;
	private String product;
	private String category;
	private int price;
	private String title;
	private String manufacturer;
	
	
	
	
	
	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getManufacturer() {
		return manufacturer;
	}


	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}


	@OneToMany 
	private Set<Product> prod = new HashSet<Product>();
	
	@OneToOne
	private Customer cust1;
	
	@OneToOne
	private Admin admin1;
	

	public Cart()
	{
		
	}
	
	
	public Cart(String product, Admin admin1, Customer cust1) {
		super();
		this.product = product;
		this.admin1 = admin1;
		this.cust1 = cust1;
	}


	public int getCartId() {
		return CartId;
	}


	public void setCartId(int cartId) {
		CartId = cartId;
	}


	public String getProduct() {
		return product;
	}


	public void setProduct(String product) {
		this.product = product;
	}


	public Set<Product> getProd() {
		return prod;
	}


	public void setProd(Set<Product> prod) {
		this.prod = prod;
	}


	public Customer getCust1() {
		return cust1;
	}


	public void setCust1(Customer cust1) {
		this.cust1 = cust1;
	}


	public Admin getAdmin1() {
		return admin1;
	}


	public void setAdmin1(Admin admin1) {
		this.admin1 = admin1;
	}


	
	


}



