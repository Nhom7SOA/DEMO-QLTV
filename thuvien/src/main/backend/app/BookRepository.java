package app;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


public interface BookRepository extends JpaRepository<Book, Long> {

    // Lấy 5 cuốn sách ngẫu nhiên
    @Query(value = "SELECT * FROM books ORDER BY RAND() LIMIT 5", nativeQuery = true)
    List<Book> findRandom5();

    // Tìm sách theo tên
    List<Book> findByTitleContainingIgnoreCase(String keyword);
}
