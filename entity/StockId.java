package com.asyouwish.CriteriaAndSpecification.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
public class StockId implements Serializable {

    private static final long serialVersionUID = 582707034545615487L;

    private Integer store;

    private Integer product;

}
