package com.nhom8.entity;

import com.nhom8.entity.Account;
import com.nhom8.entity.CartItem;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2022-12-05T00:38:56")
@StaticMetamodel(Cart.class)
public class Cart_ { 

    public static volatile SingularAttribute<Cart, Integer> id;
    public static volatile SingularAttribute<Cart, Account> account;
    public static volatile ListAttribute<Cart, CartItem> cartitems;

}