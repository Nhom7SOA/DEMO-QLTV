package app;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/auth")
@CrossOrigin
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody User user) {

        if (userRepository.existsByUsername(user.getUsername())) {
            Map<String, Object> response = new HashMap<>();
            response.put("success", false);
            response.put("message", "Tên đăng nhập đã tồn tại");
            return ResponseEntity.badRequest().body(response);
        }

        if (userRepository.existsByEmail(user.getEmail())) {
            Map<String, Object> response = new HashMap<>();
            response.put("success", false);
            response.put("message", "Email đã tồn tại");
            return ResponseEntity.badRequest().body(response);
        }

        // Người đăng ký luôn là Độc giả
        user.setRole(1);

        userRepository.save(user);

        Map<String, Object> response = new HashMap<>();
        response.put("success", true);
        response.put("message", "Đăng ký thành công");

        return ResponseEntity.ok(response);
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody User user) {

        User existingUser =
                userRepository.findByUsername(user.getUsername());

        if (existingUser == null) {
            Map<String, Object> response = new HashMap<>();
            response.put("success", false);
            response.put("message", "Tên đăng nhập không tồn tại");
            return ResponseEntity.badRequest().body(response);
        }

        if (!existingUser.getPassword().equals(user.getPassword())) {
            Map<String, Object> response = new HashMap<>();
            response.put("success", false);
            response.put("message", "Mật khẩu không đúng");
            return ResponseEntity.badRequest().body(response);
        }

        Map<String, Object> response = new HashMap<>();

        response.put("success", true);
        response.put("message", "Đăng nhập thành công");
        response.put("id", existingUser.getId());
        response.put("username", existingUser.getUsername());
        response.put("email", existingUser.getEmail());
        response.put("role", existingUser.getRole());

        return ResponseEntity.ok(response);
    }
}