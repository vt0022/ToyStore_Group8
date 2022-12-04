/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.nhom8.dao;

import com.nhom8.entity.CartItem;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface CartItemDAO {

    void delete(int ciid);

    List<CartItem> getAllCartItems();

    List<CartItem> getCartItemByCart(int cartid);

    /*
    public static void main(String[] args) {
    CartItemDAOImpl dao = new CartItemDAOImpl();
    int p ;
    p = dao.countCartItems();
    System.out.println(p);
    }
     */
    void insert(CartItem ci);

    void update(CartItem ci);

    CartItem getCartItemByID(int ciid);
    
}
