package com.hp.shardingsphere.entity;

import lombok.Data;

/**
 * 订单条目
 *
 * @author hupan
 * @date 2019-08-23 09:47
 */
@Data
public class OrderItem {

    private Long orderItemId;
    private Long orderId;
    private Integer userId;
    private Integer status;

}
