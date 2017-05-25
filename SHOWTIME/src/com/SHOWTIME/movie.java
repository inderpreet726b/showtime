package com.SHOWTIME;

public class movie {
String id,name,duration,date,director,actor,type,image1,image2,image3;
movie(String id,String name,String duration,String date,String director,String actor,String type,String image1,String image2,String image3)
{this.id=id;
this.name=name;
this.duration=duration;
this.date=date;
this.director=director;
this.actor=actor;
this.type=type;
this.image1=image1;
this.image2=image2;
this.image3=image3;
  
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDuration() {
	return duration;
}
public void setDuration(String duration) {
	this.duration = duration;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getDirector() {
	return director;
}
public void setDirector(String director) {
	this.director = director;
}
public String getActor() {
	return actor;
}
public void setActor(String actor) {
	this.actor = actor;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public String getImage1() {
	return image1;
}
public void setImage1(String image1) {
	this.image1 = image1;
}
public String getImage2() {
	return image2;
}
public void setImage2(String image2) {
	this.image2 = image2;
}
public String getImage3() {
	return image3;
}
public void setImage3(String image3) {
	this.image3 = image3;
}
}

