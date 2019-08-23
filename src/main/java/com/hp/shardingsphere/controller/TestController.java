package com.hp.shardingsphere.controller;

import com.hp.shardingsphere.DataOpts;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 测试Controller
 *
 * @author hupan
 * @date 2019-08-23 09:57
 */
@RestController
public class TestController {

    @Resource
    private DataOpts dataOpts;

    @GetMapping("/order/add/{userId}")
    public Object addOrderByUserId(@PathVariable Integer userId) {
        dataOpts.addOrder(userId);
        return "ok";
    }

}
