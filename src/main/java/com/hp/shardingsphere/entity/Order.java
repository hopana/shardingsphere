package com.hp.shardingsphere.entity;

import lombok.Data;

/**
 * 订单
 *
 * @author hupan
 * @date 2019-08-23 09:43
 */
@Data
public class Order {

    private Long orderId;
    private Integer userId;
    private Integer status;

}
