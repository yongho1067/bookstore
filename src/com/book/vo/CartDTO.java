package com.book.vo;
public class CartDTO {
	
	String amount;
	String sum;
	String bas_order;
	String bas_count;
	String bas_total;
	int bo_id;
	int mem_id_num;
	String bas_address_1;
	String bas_address_2;
	
	public String getBas_address_1() {
		return bas_address_1;
	}
	
	public void setBas_address_1(String bas_address_1) {
		this.bas_address_1 = bas_address_1;
	}
	public String getBas_address_2() {
		return bas_address_2;
	}
	public void setBas_address_2(String bas_address_2) {
		this.bas_address_2 = bas_address_2;
	}
	public CartDTO() {
		
		// TODO Auto-generated constructor stub
	}

	public String getBas_order() {
		return bas_order;
	}

	public void setBas_order(String bas_order) {
		this.bas_order = bas_order;
	}

	public String getBas_count() {
		return bas_count;
	}
	public void setBas_count(String bas_count) {
		this.bas_count = bas_count;
	}
	public String getBas_total() {
		return bas_total;
	}
	public void setBas_total(String bas_total) {
		this.bas_total = bas_total;
	}
	public int getBo_id() {
		return bo_id;
	}
	public void setBo_id(int bo_id) {
		this.bo_id = bo_id;
	}
	public int getMem_id_num() {
		return mem_id_num;
	}
	public void setMem_id_num(int mem_id_num) {
		this.mem_id_num = mem_id_num;
	}

	
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getSum() {
		return sum;
	}
	public void setSum(String sum) {
		this.sum = sum;
	}

	public CartDTO(String amount, String sum, String bas_order, String bas_count, String bas_total, int bo_id,
			int mem_id_num, String bas_address_1, String bas_address_2) {
		super();
		this.amount = amount;
		this.sum = sum;
		this.bas_order = bas_order;
		this.bas_count = bas_count;
		this.bas_total = bas_total;
		this.bo_id = bo_id;
		this.mem_id_num = mem_id_num;
		this.bas_address_1 = bas_address_1;
		this.bas_address_2 = bas_address_2;
	}
	
	
	
	
}