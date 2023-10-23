package com.model;

public class LocaDTO {
   private String latitude; 
   private String longitude;
   private String place_name;
   
   public LocaDTO(String latitude, String longitude) {
      this.latitude = latitude;
      this.longitude = longitude;
   }
   
   public LocaDTO(String place_name) {
	   this.place_name = place_name;
}
   
   
public String getPlace_name() {
	return place_name;
}

public void setPlace_name(String place_name) {
	this.place_name = place_name;
}

public String getLatitude() {
      return latitude;
   }
   public String getLongitude() {
      return longitude;
   } 

}