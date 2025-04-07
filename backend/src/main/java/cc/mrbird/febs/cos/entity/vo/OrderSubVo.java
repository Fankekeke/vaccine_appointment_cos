package cc.mrbird.febs.cos.entity.vo;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class OrderSubVo {

    /**
     * 所属疫苗商家
     */
    private Integer pharmacyId;

    /**
     * 疫苗ID
     */
    private Integer drugId;

    /**
     * 购买数量
     */
    private BigDecimal total;

    /**
     * 单价
     */
    private BigDecimal unitPrice;
}
