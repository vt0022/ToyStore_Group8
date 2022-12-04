/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.nhom8.dao;

import com.nhom8.entity.Cart;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface CartDAO {

    void delete(int cid);

    List<Cart> getAllCarts();

    Cart getCartByCusID(int cid);

    void insert(Cart c);

    void update(Cart c);
    
}
