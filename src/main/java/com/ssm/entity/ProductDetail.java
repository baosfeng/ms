package com.ssm.entity;

import java.io.Serializable;

/**
 * product_detail
 * @author 小书包
 */
public class ProductDetail implements Serializable {
    /**
     * 主键
     */
    private Integer id;

    /**
     * 商品id
     */
    private Integer productId;

    /**
     * 商家id
     */
    private Integer shoperId;

    /**
     * 商品产地
     */
    private String originPlace;

    /**
     * 商品名称
     */
    private String name;

    /**
     * 品牌
     */
    private String brand;

    /**
     * 重量
     */
    private Integer weight;

    /**
     * 规格和包装
     */
    private String sizePackage;

    /**
     * 商品详情图片地址
     */
    private String detailImage;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getShoperId() {
        return shoperId;
    }

    public void setShoperId(Integer shoperId) {
        this.shoperId = shoperId;
    }

    public String getOriginPlace() {
        return originPlace;
    }

    public void setOriginPlace(String originPlace) {
        this.originPlace = originPlace;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public String getSizePackage() {
        return sizePackage;
    }

    public void setSizePackage(String sizePackage) {
        this.sizePackage = sizePackage;
    }

    public String getDetailImage() {
        return detailImage;
    }

    public void setDetailImage(String detailImage) {
        this.detailImage = detailImage;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        ProductDetail other = (ProductDetail) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getProductId() == null ? other.getProductId() == null : this.getProductId().equals(other.getProductId()))
            && (this.getShoperId() == null ? other.getShoperId() == null : this.getShoperId().equals(other.getShoperId()))
            && (this.getOriginPlace() == null ? other.getOriginPlace() == null : this.getOriginPlace().equals(other.getOriginPlace()))
            && (this.getName() == null ? other.getName() == null : this.getName().equals(other.getName()))
            && (this.getBrand() == null ? other.getBrand() == null : this.getBrand().equals(other.getBrand()))
            && (this.getWeight() == null ? other.getWeight() == null : this.getWeight().equals(other.getWeight()))
            && (this.getSizePackage() == null ? other.getSizePackage() == null : this.getSizePackage().equals(other.getSizePackage()))
            && (this.getDetailImage() == null ? other.getDetailImage() == null : this.getDetailImage().equals(other.getDetailImage()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getProductId() == null) ? 0 : getProductId().hashCode());
        result = prime * result + ((getShoperId() == null) ? 0 : getShoperId().hashCode());
        result = prime * result + ((getOriginPlace() == null) ? 0 : getOriginPlace().hashCode());
        result = prime * result + ((getName() == null) ? 0 : getName().hashCode());
        result = prime * result + ((getBrand() == null) ? 0 : getBrand().hashCode());
        result = prime * result + ((getWeight() == null) ? 0 : getWeight().hashCode());
        result = prime * result + ((getSizePackage() == null) ? 0 : getSizePackage().hashCode());
        result = prime * result + ((getDetailImage() == null) ? 0 : getDetailImage().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", productId=").append(productId);
        sb.append(", shoperId=").append(shoperId);
        sb.append(", originPlace=").append(originPlace);
        sb.append(", name=").append(name);
        sb.append(", brand=").append(brand);
        sb.append(", weight=").append(weight);
        sb.append(", sizePackage=").append(sizePackage);
        sb.append(", detailImage=").append(detailImage);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}