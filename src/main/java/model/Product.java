package model;

public class Product {
	private String id;
	private String name;
	private String category;
	private float price;
	private String image;
	
	public Product() {}
	
	public Product(String id, String name, String category, float price, String image) {
		id = id;
		name = name;
		category = category;
		price = price;
		image = image;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
}
