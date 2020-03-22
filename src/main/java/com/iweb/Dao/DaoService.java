package com.iweb.Dao;

import com.iweb.User.User;
public interface DaoService {
    public User check(String userName, String userPassword) throws Exception;
}
