/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import Context.DBContext;
import Entity.Account;
import Entity.Cart;
import Entity.Category;
import Entity.CategoryName;
import Entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hades
 */
public class DAO {

    PreparedStatement ps;
    ResultSet rs;
    Connection con;

    public Account Login(String user, String pass) {
        String query = "select * from  Account where [user] = ? and pass = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareCall(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account CheckAccountExist(String user) {
        String query = "select * from  Account where [user] = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareCall(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void Register(String user, String pass, String name, String phone) {
        String query = "insert into Account values(?,?,?,?,0)";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareCall(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, name);
            ps.setString(4, phone);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Account> getListAccount() {
        try {
            String query = "Select * from account";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            List<Account> list = new ArrayList<>();
            while (rs.next()) {
                Account e = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)
                );
                list.add(e);
            }
            return list;
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return null;
    }

    public void addAdminAccount(Account account) {
        try {
            String query = "insert into Account([user], pass, [name], phone, isAdmin) value(?,?,?,?,?)";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
//            set gia tri 
            ps.setString(1, account.getUser());
            ps.setString(2, account.getPass());
            ps.setString(3, account.getName());
            ps.setString(4, account.getPhone());
            ps.setInt(5, account.getIsAdmin());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
    }

    public void deleteAccount(String id) {
        try {
            String query = "delete from Account \n"
                    + "Where uID = ?";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
//            set gia tri 
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
    }

    public void deleteProduct(String id) {
        try {
            String query = "delete from Product \n"
                    + "Where productID = ?";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
//            set gia tri 
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
    }

    public void editProduct(Product product) {
        try {
            String query = "update Product set [name] = ?, [image] = ?, price = ?, [description] = ?, cid = ? where productID = ?";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, product.getName());
            ps.setString(2, product.getImage());
            ps.setInt(3, product.getPrice());
            ps.setString(4, product.getDescription());
            ps.setInt(5, product.getCid());
            ps.setInt(6, product.getProductID());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
    }

    public void addProduct(Product product) {
        try {
            String query = "insert into Product([name], image, price, description, cid)\n"
                    + "Values (?,?,?,?,?);";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
//            set gia tri 
            ps.setString(1, product.getName());
            ps.setString(2, product.getImage());
            ps.setInt(3, product.getPrice());
            ps.setString(4, product.getDescription());
            ps.setInt(5, product.getCid());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
    }

    public List<Product> getTopProduct() {
        try {
            String query = "Select top 8 * from product";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product e = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)
                );
                list.add(e);
            }
            return list;
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return null;
    }

    public List<Product> getTopProductByCID(String cid) {
        try {
            String query = "select top 4 * from product\n"
                    + "where cid = ?";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product e = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)
                );
                list.add(e);
            }
            return list;
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return null;
    }

    public List<Product> searchByName(String txtSearch) {
        try {
            String query = "select * from product where [name] like ?";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product e = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)
                );
                list.add(e);
            }
            return list;
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return null;
    }

    public List<Product> getListProduct() {
        try {
            String query = "Select * from product";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product e = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)
                );
                list.add(e);
            }
            return list;
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return null;
    }

    public List<Category> getListCategory() {
        try {
            String query = "Select * from Category";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            List<Category> list = new ArrayList<>();
            while (rs.next()) {
                Category e = new Category(rs.getInt(1),
                        rs.getString(2)
                );
                list.add(e);
            }
            return list;
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return null;
    }

    public CategoryName getCategoryName(String cid) {
        try {
            String query = "select top 1 c.cname \n"
                    + "from product p inner join category c\n"
                    + "on p.cid = c.cid\n"
                    + "where c.cid = ?";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new CategoryName(rs.getString(1)
                );
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return null;
    }

    public List<Product> getProductByCid(String cid) {
        try {
            String query = "select * from product where cid = ?";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product e = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)
                );
                list.add(e);
            }
            return list;
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return null;
    }

    public int getTotalProduct() {
//        PreparedStatement ps;
//        ResultSet rs;
//        Connection con;
        try {
            String query = "select count(*) from product";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Product> paging(int index) {
//        PreparedStatement ps;
//        ResultSet rs;
//        Connection con;
        try {
            String query = "Select * from product\n"
                    + "order by productId \n"
                    + "offset ? rows fetch next 9 rows only";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, (index - 1) * 9); // truyn vao dau  ? dau tien 
            // set truoc khi Excute
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product e = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)
                );
                list.add(e);
            }
            return list;
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return null;
    }

    public Product getProductById(String ID) {
        try {
            String query = "select * from product where productID = ?";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, ID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)
                );
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return null;
    }

//    public static void main(String[] args) throws Exception {
////        List<Product> list = paging(1);
////        for (Product e : list) {
////            System.out.println("id: "+ e.getCid());
////            System.out.println("name: "+ e.getName());
////
////        }
////        int m = getTotalProduct();
////        System.out.println(m);
//          CategoryName c = getCategory(2);
//          System.out.println(c);
//    }
}
