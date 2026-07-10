# Story Proxy

Story Proxy là gói ứng dụng Node.js dành cho Windows, cung cấp giao diện web dashboard và chạy cục bộ trên máy tính tại `http://localhost:1111`.

## Yêu cầu hệ thống

- Windows x64.
- [Node.js](https://nodejs.org/) phiên bản 20 trở lên.

Bạn có thể kiểm tra phiên bản Node.js hiện tại bằng lệnh:

```powershell
node --version
```

## Cài đặt và khởi chạy

1. Giải nén gói ứng dụng vào một thư mục, ví dụ `C:\StoryProxy`.
2. Cài đặt Node.js 20 trở lên nếu máy chưa có.
3. Nhấp đúp vào file `START.cmd`.
4. Nhập mật khẩu đăng nhập ban đầu khi được yêu cầu. Mật khẩu không được để trống.
5. Trình duyệt sẽ tự động mở trang đăng nhập. Nếu trình duyệt không tự mở, hãy truy cập:

   <http://localhost:1111/login>

Ứng dụng mặc định chỉ lắng nghe trên `127.0.0.1` qua cổng `1111`.

## Dữ liệu và sao lưu

- Dữ liệu khi chạy được lưu trong thư mục `data` nằm cùng cấp với `START.cmd`.
- File `.jwt-secret` được tự động tạo trong lần khởi chạy đầu tiên và phải luôn nằm cùng cấp với `START.cmd`.
- Khi sao lưu hoặc chuyển ứng dụng sang máy khác, hãy sao lưu toàn bộ thư mục `data` và giữ lại file `.jwt-secret`.

> **Quan trọng:** Không chia sẻ file `.jwt-secret` hoặc đưa file này lên repository công khai.

## Bảo mật

Theo cấu hình mặc định, Story Proxy chỉ có thể được truy cập từ chính máy đang chạy ứng dụng. Không công khai cổng `1111` ra Internet nếu chưa thiết lập đầy đủ:

- Tường lửa phù hợp.
- HTTPS.
- Mật khẩu mạnh.
- Cơ chế kiểm soát truy cập bổ sung khi cần thiết.

## Dừng ứng dụng

Để dừng Story Proxy, thực hiện một trong hai cách:

- Đóng cửa sổ dòng lệnh có tiêu đề **Story Proxy**.
- Nhấn `Ctrl+C` trong cửa sổ đó.

## Xử lý sự cố

### Node.js chưa được cài đặt

Nếu xuất hiện thông báo `Node.js is not installed`, hãy cài Node.js 20 trở lên từ [nodejs.org](https://nodejs.org/), sau đó chạy lại `START.cmd`.

### Không mở được trang đăng nhập

- Kiểm tra cửa sổ **Story Proxy** vẫn đang chạy.
- Truy cập trực tiếp <http://localhost:1111/login>.
- Kiểm tra cổng `1111` có đang được một ứng dụng khác sử dụng hay không.

### Di chuyển ứng dụng sang máy khác

Sao chép toàn bộ gói ứng dụng, bao gồm thư mục `data` và file `.jwt-secret`, sang máy mới. Máy đích vẫn cần cài Node.js 20 trở lên.
