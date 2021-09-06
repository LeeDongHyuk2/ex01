package com.ex01.domain;
// 이미지 첨부 VO
public class AttachImageVO {
	// 경로
	private String uploadPath;
	// uuid
	private String uuid;
	// 파일이름
	private String fileName;
	// 상품 id
	private int product_no;
	// 이미지 첨부 위치
	private String type;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUploadPath() {
		return uploadPath;
	}
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	@Override
	public String toString() {
		return "AttachImageVO [uploadPath=" + uploadPath + ", uuid=" + uuid + ", fileName=" + fileName + ", product_no="
				+ product_no + ", type=" + type + "]";
	}
}
