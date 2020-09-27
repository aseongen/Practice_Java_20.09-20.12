package com.net.yjh.Model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class yjhVO {
	
	private Integer yNo;
	private String yTitle;
	private String yWriter;
	private String yPublish;
	
	@Override
	public String toString() {
		return "yjhVO [yNo=" + yNo + ", yTitle=" + yTitle + ", yWriter=" + yWriter + ", yPublish=" + yPublish + "]";
	}
	
}
