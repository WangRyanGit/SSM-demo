package com.luo.domain;

import java.io.Serializable;
import java.sql.Date;

public class Offer implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8723150926640091382L;

	private Integer id;
	private Integer type;
	private Long provider;
	private String name;
	private String pkg;
	private String country;
	private String click;
	private String offerid;
	private Float price;
	private Integer status;
	private Date created_at;
		
	public Offer() {
		
	}
	
	public Offer(Integer id,Integer type,Long provider,String name,String pkg,String country,String click,String offerid,Float price,Integer status,Date created_at){
		super();
		this.id=id;
		this.type=type;
		this.provider=provider;
		this.name=name;
		this.pkg=pkg;
		this.country=country;
		this.click=click;
		this.offerid=offerid;
		this.price=price;
		this.status=status;
		this.created_at=created_at;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Long getProvider() {
		return provider;
	}
	public void setProvider(Long provider) {
		this.provider = provider;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPkg() {
		return pkg;
	}
	public void setPkg(String pkg) {
		this.pkg = pkg;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getClick() {
		return click;
	}
	public void setClick(String click) {
		this.click = click;
	}
	public String getOfferid() {
		return offerid;
	}
	public void setOfferid(String offerid) {
		this.offerid = offerid;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}


	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date createdAt) {
		created_at = createdAt;
	}

	@Override
	public String toString() {
		return "Offer [click=" + click + ", country=" + country
				+ ", created_at=" + created_at + ", id=" + id + ", name="
				+ name + ", offerid=" + offerid + ", pkg=" + pkg + ", price="
				+ price + ", provider=" + provider + ", status=" + status
				+ ", type=" + type + "]";
	}
	
	
	
	
	
}
