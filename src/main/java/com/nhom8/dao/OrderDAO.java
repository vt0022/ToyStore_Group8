package com.nhom8.dao;

import com.nhom8.entity.MyOrder;
import java.util.List;

public interface OrderDAO {

    void delete(int orderid);

    List<MyOrder> getAllOrders();

    List<MyOrder> getOrdersByCusID(int cid);

    /*
    public static void main(String[] args) {
    CartDAOImpl dao = new CartDAOImpl();
    int p ;
    p = dao.countCarts();
    System.out.println(p);
    }
     */
    void insert(MyOrder o);

    void update(MyOrder o);
    
}
