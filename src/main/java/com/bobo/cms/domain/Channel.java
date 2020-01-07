package com.bobo.cms.domain;

import java.io.Serializable;
/**
 * 
 * @ClassName: Channel 
 * @Description: 栏目
 * @author: charles
 * @date: 2019年12月10日 下午3:09:04
 */
public class Channel  implements Serializable{


	/**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: TODO
	 */
	private static final long serialVersionUID = 3759970855850906176L;

	private Integer id;

    private String name;

    private String description;

    private String icon;

    private Integer sorted;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

    public Integer getSorted() {
        return sorted;
    }

    public void setSorted(Integer sorted) {
        this.sorted = sorted;
    }
}