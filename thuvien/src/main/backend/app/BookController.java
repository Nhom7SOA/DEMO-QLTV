package app;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api/books")
public class BookController {

    @Autowired
    private BookRepository bookRepository;

    // GET /api/books/random  -> 5 cuốn ngẫu nhiên (trang chủ)
    @GetMapping("/random")
    public List<Book> getRandomBooks() {
        return bookRepository.findRandom5();
    }

    // GET /api/books/search?keyword=harry  -> tìm kiếm
    @GetMapping("/search")
    public List<Book> search(@RequestParam String keyword) {
        return bookRepository.findByTitleContainingIgnoreCase(keyword);
    }

    // GET /api/books/3  -> chi tiết 1 cuốn (khi bấm vào sách)
    @GetMapping("/{id}")
    public Book getById(@PathVariable Long id) {
        return bookRepository.findById(id).orElse(null);
    }
}
