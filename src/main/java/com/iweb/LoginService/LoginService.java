package com.iweb.LoginService;

import javax.servlet.http.HttpServletRequest;

public interface LoginService {
    // 调用数据库服务类，具体查询
    public String login(HttpServletRequest request) throws Exception;
}
