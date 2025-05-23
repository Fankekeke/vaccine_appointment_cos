package cc.mrbird.febs.cos.entity.vo;

import lombok.Data;

@Data
public class OrderDetailVo {

    /**
     * 所属用户
     */
    private Integer userId;

    /**
     * 购买疫苗信息
     */
    private String drugString;
}
