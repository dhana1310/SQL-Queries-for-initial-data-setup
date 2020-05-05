package com.asyouwish.CriteriaAndSpecification.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class OrderItemId implements Serializable {

    private static final long serialVersionUID = 582707034545615487L;

    private Integer order;

    private Integer itemId;

}
