package app;

import jakarta.persistence.*;

// Class này ứng với bảng "books" trong MySQL
@Entity
@Table(name = "books")
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "title")
    private String title;        // Tên sách

    @Column(name = "author")
    private String author;       // Tác giả

    @Column(name = "publisher")
    private String publisher;    // Nhà xuất bản

    @Column(name = "publish_year")
    private Integer publishYear; // Năm xuất bản

    @Column(name = "genre")
    private String genre;        // Thể loại

    @Column(name = "image")
    private String image;        // Tên file ảnh (hoặc link ảnh)

    public Book() {
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }

    public String getPublisher() { return publisher; }
    public void setPublisher(String publisher) { this.publisher = publisher; }

    public Integer getPublishYear() { return publishYear; }
    public void setPublishYear(Integer publishYear) { this.publishYear = publishYear; }

    public String getGenre() { return genre; }
    public void setGenre(String genre) { this.genre = genre; }

    public String getImage() { return image; }
    public void setImage(String image) { this.image = image; }
}
