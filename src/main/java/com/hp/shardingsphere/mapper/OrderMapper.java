package com.hp.shardingsphere.mapper;

import com.hp.shardingsphere.entity.Order;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;

/**
 * 订单Mapper
 *
 * @author hupan
 * @date 2019-08-23 09:49
 */
public interface OrderMapper {

    @Options(useGeneratedKeys = true, keyColumn = "order_id", keyProperty = "orderId")
    @Insert("insert into t_order(user_id, status) values(#{userId}, #{status})")
    int insert(Order order);

}
