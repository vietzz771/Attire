/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hades
 */
public class Cart {

    private List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }
    
    public List<Item> getItems(){
        return items;
    }
    
    public int getQuantityById(int id) {
        return getItemById(id).getQuantity();
    }
    
    private Item getItemById(int id){
        for(Item i : items){
            if(i.getProduct().getProductID() == id){
                return i;
            }
        }
        return null;
    }
    
    public void addItem(Item t){
        if(getItemById(t.getProduct().getProductID()) != null){
            Item m = getItemById(t.getProduct().getProductID());
            m.setQuantity(m.getQuantity() + t.getQuantity());
        }else {
            items.add(t);
        }
    }
    
    public void removeItem(int id){
        if(getItemById(id) != null){
            items.remove(getItemById(id));
        }
    }
    public int getTotalMoney(){
        int t = 0;
        for(Item i : items){
            t+= (i.getQuantity() * i.getPrice());
        }
        return t;
    }
    
    private Product getProductById(int id, List<Product> list){
        for(Product i: list){
            if(i.getProductID() == id){
                return i;
            }
        }
        return null;
    }
    
    public Cart(String txt, List<Product> list){
        items = new ArrayList<>();
        try {
            if(txt != null && txt.length()!=0){
                String[] s= txt.split("/");
                for(String i:s){
                    String[] n = i.split(":");
                    int id = Integer.parseInt(n[0]);
                    int quantity = Integer.parseInt(n[1]);
                    Product p = getProductById(id, list);
                    Item t = new Item(p, quantity, p.getPrice());
                    addItem(t);
                }
            }
        } catch (Exception e) {
        }
    }
}
