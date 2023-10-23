package com.model;

public class CoffeeDTO {

		private String menuNm;
		private int price;
		private String size;
		public String getMenuNm() {
			return menuNm;
		}
		
		// 생성자
		public CoffeeDTO(String menuNm, int price, String size) {
			this.menuNm = menuNm;
			this.price = price;
			this.size = size;
		}
		
		// getter 메서드
		public int getPrice() {
			return price;
		}
		public String getSize() {
			return size;
		}

		// toString : 객체 내 정보(실제 데이터)를 보여주기 위한 메소드
		@Override
		public String toString() {
			return "CoffeeDTO [menuNm=" + menuNm + ", price=" + price + ", size=" + size + "]";
		}
		
		
		
		
}
