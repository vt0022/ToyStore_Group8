/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.nhom8.dao;

import com.nhom8.entity.OrderItem;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface OrderItemDAO {

    void delete(int oiid);

    List<OrderItem> getAllOrderItems();

    OrderItem getOrderItemByID(int oiid);
    /*
    public static void main(String[] args) {
    EntityManager em = DBUtil.getEmFactory().createEntityManager();
    EntityTransaction trans = em.getTransaction();
    trans.begin();
    CartItem p = em.find(CartItem.class, "DC010");
    System.out.println(p.getId());
    }
     */

    List<OrderItem> getOrderItemByOrder(int orderid);

    void insert(OrderItem oi);

    void update(OrderItem oi);
    
}
