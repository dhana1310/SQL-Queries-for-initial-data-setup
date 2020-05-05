package com.asyouwish.CriteriaAndSpecification.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;
import org.hibernate.annotations.ColumnDefault;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
@IdClass(StockId.class)
@Table(name = "stocks")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Stock implements Serializable {

    private static final long serialVersionUID = 4337192157262939246L;

    @Id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="store_id", referencedColumnName="store_id", nullable = false)
    private Store store;

    @Id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="product_id", referencedColumnName="product_id", nullable = false)
    private Product product;

    @Column(name = "quantity")
    private Integer quantity;

}
