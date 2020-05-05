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
@Table(name = "categories")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Category implements Serializable {

    private static final long serialVersionUID = 6837164371047512720L;

    @Id
    @Column(name = "category_code", length = 10, nullable = false)
    private String categoryCode;

    @Column(name = "category_description",length = 50, nullable = false)
    private String categoryDescription;
}
