/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author Hades
 */
public class Order {
    private int order_id;
    private int account_id;
    private String order_date;
    private String order_status;
    private int total_price;
    private String order_notes;
    private int promotion_id;

    public Order() {
    }

    public Order(int order_id, int account_id, String order_date, String order_status, int total_price, String order_notes, int promotion_id) {
        this.order_id = order_id;
        this.account_id = account_id;
        this.order_date = order_date;
        this.order_status = order_status;
        this.total_price = total_price;
        this.order_notes = order_notes;
        this.promotion_id = promotion_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public String getOrder_date() {
        return order_date;
    }

    public void setOrder_date(String order_date) {
        this.order_date = order_date;
    }

    public String getOrder_status() {
        return order_status;
    }

    public void setOrder_status(String order_status) {
        this.order_status = order_status;
    }

    public int getTotal_price() {
        return total_price;
    }

    public void setTotal_price(int total_price) {
        this.total_price = total_price;
    }

    public String getOrder_notes() {
        return order_notes;
    }

    public void setOrder_notes(String order_notes) {
        this.order_notes = order_notes;
    }

    public int getPromotion_id() {
        return promotion_id;
    }

    public void setPromotion_id(int promotion_id) {
        this.promotion_id = promotion_id;
    }

    @Override
    public String toString() {
        return "Order{" + "order_id=" + order_id + ", account_id=" + account_id + ", order_date=" + order_date + ", order_status=" + order_status + ", total_price=" + total_price + ", order_notes=" + order_notes + ", promotion_id=" + promotion_id + '}';
    }
    
}
