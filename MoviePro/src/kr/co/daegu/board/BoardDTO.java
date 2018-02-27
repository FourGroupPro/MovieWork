package kr.co.daegu.board;

import java.io.Serializable;

public class BoardDTO implements Serializable {

   private int no;
   private String movie;
   private String title;
   private String author;
   private String nal;
   private String content;
   private int readcount;

   public BoardDTO() {
      super();
      // TODO Auto-generated constructor stub
   }

   public int getNo() {
      return no;
   }

   public void setNo(int no) {
      this.no = no;
   }

   public String getMovie() {
      return movie;
   }

   public void setMovie(String movie) {
      this.movie = movie;
   }

   public String getTitle() {
      return title;
   }

   public void setTitle(String title) {
      this.title = title;
   }

   public String getAuthor() {
      return author;
   }

   public void setAuthor(String author) {
      this.author = author;
   }

   public String getNal() {
      return nal;
   }

   public void setNal(String nal) {
      this.nal = nal;
   }

   public String getContent() {
      return content;
   }

   public void setContent(String content) {
      this.content = content;
   }

   public int getReadcount() {
      return readcount;
   }

   public void setReadcount(int readcount) {
      this.readcount = readcount;
   }

   @Override
   public String toString() {
      return "BoardDTO [no=" + no + ", movie=" + movie + ", title=" + title + ", author=" + author + ", nal=" + nal
            + ", content=" + content + ", readcount=" + readcount + "]";
   }

   public BoardDTO(int no, String movie, String title, String author, String nal, String content, int readcount) {
      super();
      this.no = no;
      this.movie = movie;
      this.title = title;
      this.author = author;
      this.nal = nal;
      this.content = content;
      this.readcount = readcount;
   }
   
}
   
   