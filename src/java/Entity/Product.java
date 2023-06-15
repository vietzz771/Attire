/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author Hades
 */
public class Product {

    private int productID;
    private String name;
    private String image;
    private String description;
    private String filter;
    private int cid;
    private int price;
    private int quantity;

    public Product() {
    }

    public Product(int productID, String name, String image, String description, String filter, int cid, int price, int quantity) {
        this.productID = productID;
        this.name = name;
        this.image = image;
        this.description = description;
        this.filter = filter;
        this.cid = cid;
        this.price = price;

        this.quantity = quantity;
    }

    public Product(String name, String image, int price, String description, int cid) {
        this.name = name;
        this.image = image;
        this.description = description;
        this.cid = cid;
        this.price = price;

    }

    public Product(String name, String image, int price, String description, int cid, int productID) {
        this.productID = productID;
        this.name = name;
        this.image = image;
        this.description = description;
        this.cid = cid;
        this.price = price;

    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getFilter() {
        return filter;
    }

    public void setFilter(String filter) {
        this.filter = filter;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Product{" + "productID=" + productID + ", name=" + name + ", image=" + image + ", description=" + description + ", filter=" + filter + ", cid=" + cid + ", price =" + price + ", quantity =" +'}';
    }

}
