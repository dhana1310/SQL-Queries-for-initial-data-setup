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
@Table(name = "user_status")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class UserStatus implements Serializable {

    private static final long serialVersionUID = 5251051379158941639L;

    @Id
    @Column(name = "user_status_code",length = 10 ,nullable = false)
    private String userStatusCode;

    @Column(name = "user_status_description",length = 50, nullable = false)
    private String userStatusDescription;
}
