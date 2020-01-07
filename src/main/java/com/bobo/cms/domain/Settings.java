package com.bobo.cms.domain;

import java.io.Serializable;

public class Settings implements Serializable {
    /**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: 系统配置
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;

    private String siteDomain;

    private String siteName;

    private Integer articleListSize;

    private Integer slideSize;

    private String adminUsername;

    private String adminPassword;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSiteDomain() {
        return siteDomain;
    }

    public void setSiteDomain(String siteDomain) {
        this.siteDomain = siteDomain == null ? null : siteDomain.trim();
    }

    public String getSiteName() {
        return siteName;
    }

    public void setSiteName(String siteName) {
        this.siteName = siteName == null ? null : siteName.trim();
    }

    public Integer getArticleListSize() {
        return articleListSize;
    }

    public void setArticleListSize(Integer articleListSize) {
        this.articleListSize = articleListSize;
    }

    public Integer getSlideSize() {
        return slideSize;
    }

    public void setSlideSize(Integer slideSize) {
        this.slideSize = slideSize;
    }

    public String getAdminUsername() {
        return adminUsername;
    }

    public void setAdminUsername(String adminUsername) {
        this.adminUsername = adminUsername == null ? null : adminUsername.trim();
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword == null ? null : adminPassword.trim();
    }
}