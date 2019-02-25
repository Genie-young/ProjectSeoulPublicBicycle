package Rserve;

import org.rosuda.REngine.Rserve.RConnection;

public class Wordcloud {
	public String returnWC1() {
		RConnection r = null;
		String retStr = "";
		try {
			r = new RConnection();
			r.eval("library(wordcloud2)");		
			r.eval("library(rvest)");	
			r.eval("library(htmltools)");		
			r.eval("app <- read.csv('C:/Rstudy/app_top_20.csv',stringsAsFactors = FALSE)");
			r.eval("app <- app[,-c(1)]");
			r.eval("my_cloud <-wordcloud2(app,size=0.5,col='random-dark',fontFamily ='타이포_백범일지 B')");
			r.eval("my_path <- renderTags(my_cloud)");
			retStr = r.eval("my_path$html").asString();
			
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		} finally {
			r.close();
		}
		return retStr;
	}
	public String returnWC2() {
		RConnection r = null;
		String retStr = "";
		try {
			r = new RConnection();
			r.eval("library(wordcloud2)");		
			r.eval("library(rvest)");			
			r.eval("library(htmltools)");		
			r.eval("opinion <- read.csv('C:/Rstudy/opinion_top_20.csv',stringsAsFactors = FALSE)");
			r.eval("opinion <- opinion[,-c(1)]");
			r.eval("my_cloud <-  wordcloud2(opinion,size=1,col='random-dark',fontFamily ='타이포_백범일지 B')");
			r.eval("my_path <- renderTags(my_cloud)");
			retStr = r.eval("my_path$html").asString();
			
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		} finally {
			r.close();
		}
		return retStr;
	}
}
