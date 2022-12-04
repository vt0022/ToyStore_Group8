package com.nhom8.dao;

import com.nhom8.entity.Account;
import java.util.List;

public interface AccountDAO {

    Account adminLogin(String username, String password);

    //    public boolean checkWrongPassword(String username, String password) {
    //        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
    //        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
    //        TypedQuery<Account> q = em.createQuery("SELECT acc FROM Account acc WHERE acc.username = :username", Account.class); // trả về kết quả dưới dạng đối tượng của class
    //        q.setParameter("username", username); // Truyền tham số
    //
    //        List<Account> a = new ArrayList<>();
    //        try {
    //            a = q.getResultList();
    //        } finally {
    //            em.close();
    //        }
    //        if(a.get(0).getPassword()){
    //            return true;
    //        }
    //        return false;
    //    }
    Account checkExist(String username);

    void delete(int id);

    Account getAccountByID(int id);

    List<Account> getAllAccounts();

    Account login(String username, String password);

    void register(Account acc);

    void update(Account acc);
    
}
