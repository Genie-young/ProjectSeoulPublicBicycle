package Rserve;

import org.rosuda.REngine.Rserve.RConnection;

public class RLeaflet {
	
	public String returnLeaflet2(String path) {
		RConnection r = null;
		String retStr = "";
		try {
			
			
			r = new RConnection(); 
			  r.eval("library(ggmap)"); r.eval("library(dplyr)");
			  r.eval("library(leaflet)");
			  r.eval("register_google(key='AIzaSyD-nx_y7aBlJgfgVZRaIwMbnShQJsxpryY')");
			  r.eval("seoul_lonlat = unlist(geocode('seoul', source='google'))");
			  r.eval("names(seoul_lonlat) <- NULL");
			  r.eval("bike <- read.csv('c:/Rstudy/대여소정보.csv')");
			  r.eval("map <- leaflet(bike) %>% " +
			  "setView(lng = seoul_lonlat[1], lat = seoul_lonlat[2], zoom = 11) %>% " +
			  " addTiles() %>% " + "addCircles(lng = ~경도, lat=~위도, popup = ~대여소명)"); 
			  String fileName = path + "/index.html"; 
			  String libPath = path + "/lib";
			  r.eval("save_html(map,'" + fileName + "', libdir='" + libPath + "')");

			retStr = r.eval("'index.html'").asString();
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		} finally {
			r.close();
		}
		return retStr;
	}

	public String returnLeaflet3(String path) {
		RConnection r = null;
		String retStr = "";
		try {
			
			
			r = new RConnection(); 
			  r.eval("library(ggmap)"); 
			  r.eval("library(dplyr)");
			  r.eval("library(leaflet)");
			  r.eval("bike <- read.csv('C:/Rstudy/대여소정보색깔.csv', stringsAsFactors = FALSE)");
			  r.eval("register_google(key='AIzaSyD-nx_y7aBlJgfgVZRaIwMbnShQJsxpryY')");
			  r.eval("seoul_lonlat = unlist(geocode('seoul', source='google'))");
			  r.eval("names(seoul_lonlat) <- NULL");
			  
			  r.eval("bike_color<-subset(bike,select = c(구명,위도,경도,대여소명,구분색,구분구명))");
			  r.eval("colnames(bike_color) = c('gu','lat','lng','name','col','div')");


			  //r.eval("color = c('blue','red','green','black','purple','yellow','olivedrab','orange','powderblue','yellowgreen','steelblue','peru','maroon','mistyrose','lightgray','lightgreen','darkgray','cyan','brown','darksalmon','magenta','gold','khaki','peachpuff','tan')");
				 
			  r.eval("map <- leaflet(bike_color) %>% setView(lng = seoul_lonlat[1], lat = seoul_lonlat[2], zoom = 11) %>% addTiles() %>% addCircles(color = bike_color$col, popup=~name) %>% addLegend(labels = bike_color$div[1:25], colors=c('blue','red','green','black','purple','yellow','olivedrab','orange','powderblue','yellowgreen','steelblue','peru','maroon','mistyrose','lightgray','lightgreen','darkgray','cyan','brown','darksalmon','magenta','gold','khaki','peachpuff','tan') )"); 
			  String fileName = path + "/index.html"; 
			  String libPath = path + "/lib";
			  r.eval("save_html(map,'" + fileName + "', libdir='" + libPath + "')");

			retStr = r.eval("'index.html'").asString();
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		} finally {
			r.close();
		}
		return retStr;
	}
}
