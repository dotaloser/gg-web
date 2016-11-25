package com.dota.gg.article.entity;

import java.io.Serializable;
import java.util.Date;

/**
   * 描述：入门实体
   * @author: ning.li
   * @version: 2016年11月23日 下午5:26:36
 */
public class Article implements Serializable{
	private static final long serialVersionUID = 4726349277875283587L;
	
	
	private Long id;//db info

	private Long authorId;
	private String catalog;
	private String title;
	private String subTitle;
	private String content;
	private String description;
	private Date createTime;
	private Date modifyTime;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getAuthorId() {
		return authorId;
	}
	public void setAuthorId(Long authorId) {
		this.authorId = authorId;
	}
	public String getCatalog() {
		return catalog;
	}
	public void setCatalog(String catalog) {
		this.catalog = catalog;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSubTitle() {
		return subTitle;
	}
	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getModifyTime() {
		return modifyTime;
	}
	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

//	private Boolean isFirstArticle;
//	private Long preArticleId;
//	private Long nextArticleId;
//	
//	private Long accessCount;
}
