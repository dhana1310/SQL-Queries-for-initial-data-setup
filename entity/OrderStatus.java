package com.asyouwish.CriteriaAndSpecification.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Data
@Entity
@Table(name = "order_status")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class OrderStatus implements Serializable {

    private static final long serialVersionUID = 5211051379158641639L;

    @Id
    @Column(name = "order_status_code",length = 10 ,nullable = false)
    private String orderStatusCode;

    @Column(name = "order_status_description",length = 50, nullable = false)
    private String orderStatusDescription;
}
