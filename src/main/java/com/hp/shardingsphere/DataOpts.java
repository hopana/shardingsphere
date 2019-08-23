package com.hp.shardingsphere;

import com.hp.shardingsphere.entity.Order;
import com.hp.shardingsphere.entity.OrderItem;
import com.hp.shardingsphere.mapper.OrderItemMapper;
import com.hp.shardingsphere.mapper.OrderMapper;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * 数据库操作类
 *
 * @author hupan
 * @date 2019-08-23 09:53
 */

@Component
public class DataOpts {

    @Resource
    private OrderMapper orderMapper;
    @Resource
    private OrderItemMapper orderItemMapper;

    public void addOrder(Integer userId) {
        Order order = new Order();
        order.setUserId(userId);
        order.setStatus(1);
        orderMapper.insert(order);

        OrderItem orderItem = new OrderItem();
        orderItem.setOrderId(order.getOrderId());
        orderItem.setUserId(userId);
        order.setStatus(1);
        orderItemMapper.insert(orderItem);
    }

}
