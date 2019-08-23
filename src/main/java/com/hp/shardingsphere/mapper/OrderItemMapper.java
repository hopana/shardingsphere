package com.hp.shardingsphere.mapper;

import com.hp.shardingsphere.entity.OrderItem;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;

/**
 * 订单Mapper
 *
 * @author hupan
 * @date 2019-08-23 09:49
 */
public interface OrderItemMapper {

    @Options(useGeneratedKeys = true, keyColumn = "order_item_id", keyProperty = "orderItemId")
    @Insert("insert into t_order_item(order_id, user_id, status) values(#{orderId}, #{userId}, #{status})")
    int insert(OrderItem orderItem);

}
