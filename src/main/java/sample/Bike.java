package sample;

public class Bike {
	
		private int code;
		private String model;
		private int year;
		private int price;
		
		public int getCode() {
			return code;
		}
		public void setCode(int code) {
			this.code = code;
		}
		public String getModel() {
			return model;
		}
		public void setModel(String model) {
			this.model = model;
		}
		public int getYear() {
			return year;
		}
		public void setYear(int year) {
			this.year = year;
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		@Override
		public String toString() {
			return "Bike [code=" + code + ", model=" + model + ", year=" + year + ", price=" + price + "]";
		}
}
