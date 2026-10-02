// Lấy ảnh: nếu là link http thì dùng luôn, nếu là tên file thì lấy trong /images/
function layAnh(image) {
    if (image == null || image == "") return "/images/placeholder.svg";
    if (image.startsWith("http")) return image;
    return "/images/" + image;
}

// Hiển thị danh sách sách ra màn hình
function hienThiSach(danhSach) {
    var html = "";
    for (var i = 0; i < danhSach.length; i++) {
        var b = danhSach[i];
        html += '<div class="book-card" onclick="xemChiTiet(' + b.id + ')">'
              + '<img src="' + layAnh(b.image) + '" onerror="this.src=\'/images/placeholder.svg\'">'
              + '<p>' + b.title + '</p>'
              + '</div>';
    }
    document.getElementById("bookList").innerHTML = html;
}

// Gọi backend lấy 5 sách ngẫu nhiên
function loadSachNgauNhien() {
    fetch("/api/books/random")
        .then(function (res) { return res.json(); })
        .then(function (data) { hienThiSach(data); });
}

// Tìm kiếm theo tên
function timKiem() {
    var keyword = document.getElementById("keyword").value;
    if (keyword == "") {
        loadSachNgauNhien();
        return;
    }
    fetch("/api/books/search?keyword=" + encodeURIComponent(keyword))
        .then(function (res) { return res.json(); })
        .then(function (data) { hienThiSach(data); });
}

// Bấm vào 1 cuốn sách -> lấy chi tiết từ database và hiện form
function xemChiTiet(id) {
    fetch("/api/books/" + id)
        .then(function (res) { return res.json(); })
        .then(function (b) {
            document.getElementById("dImage").src = layAnh(b.image);
            document.getElementById("dTitle").innerText = b.title;
            document.getElementById("dAuthor").innerText = b.author;
            document.getElementById("dPublisher").innerText = b.publisher;
            document.getElementById("dYear").innerText = b.publishYear;
            document.getElementById("dGenre").innerText = b.genre;
            document.getElementById("overlay").classList.add("show");
        });
}

function dongForm() {
    document.getElementById("overlay").classList.remove("show");
}

// Chạy khi mở trang
loadSachNgauNhien();
