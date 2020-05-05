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
@Table(name = "brands")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Brand implements Serializable {

    private static final long serialVersionUID = 5251051379158641639L;

    @Id
    @Column(name = "brand_code",length = 10 ,nullable = false)
    private String brandCode;

    @Column(name = "brand_description",length = 50, nullable = false)
    private String brandDescription;
}
