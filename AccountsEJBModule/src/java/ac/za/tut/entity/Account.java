/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.za.tut.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SecondaryTable;
import javax.persistence.SecondaryTables;
import javax.persistence.Table;
import javax.persistence.Temporal;

/**
 *
 * @author test
 */
@Entity
@Table(name = "ACOOUNT_TBL")
@SecondaryTables({@SecondaryTable(name="ADDRESS_TBL"),@SecondaryTable(name="CONTACT_TBL")})
public class Account implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    private Long id;
    @Column(name = "Name",nullable = false , length = 50)
    private String firstName;
    @Column(name = "Balance",nullable =true,length = 20 )
    private Double balance;
    @Column(table = "ADDRESS_TBL",nullable = true,length = 20)
    private String street;
    @Column(table = "ADDRESS_TBL",nullable = true,length = 20)
    private String code;
    @Column(table = "ADDRESS_TBL",nullable = true,length = 20)
    private String city;
    @Column(table = "CONTACT_TBL",nullable = true,length = 20)
    private String cellNo;
    @Column(table = "CONTACT_TBL",nullable = true,length = 20)
    private String emailAddress;
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    private Date creationdate;

    public Account() {
    }

    public Account(Long id, String firstName, Double balance, String street, String code, String city, String cellNo, String emailAddress, Date creationdate) {
        this.id = id;
        this.firstName = firstName;
        this.balance = balance;
        this.street = street;
        this.code = code;
        this.city = city;
        this.cellNo = cellNo;
        this.emailAddress = emailAddress;
        this.creationdate = creationdate;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCellNo() {
        return cellNo;
    }

    public void setCellNo(String cellNo) {
        this.cellNo = cellNo;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public Date getCreationdate() {
        return creationdate;
    }

    public void setCreationdate(Date creationdate) {
        this.creationdate = creationdate;
    }
    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Account)) {
            return false;
        }
        Account other = (Account) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ac.za.tut.entity.Account[ id=" + id + " ]";
    }
    
}
