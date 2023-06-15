/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author Hades
 */
public class OrderDetail {
    private int o_id;
    private int product_id;
    private int quantity;
    private int price;

    public OrderDetail() {
    }

    public OrderDetail(int o_id, int product_id, int quantity, int price) {
        this.o_id = o_id;
        this.product_id = product_id;
        this.quantity = quantity;
        this.price = price;
    }

    public int getO_id() {
        return o_id;
    }

    public void setO_id(int o_id) {
        this.o_id = o_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "o_id=" + o_id + ", product_id=" + product_id + ", quantity=" + quantity + ", price=" + price + '}';
    }

    
    
}
