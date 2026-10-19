# Nhật Ký Prompt AI

1. **Hỏi về Non-SARGable:** Tìm hiểu tại sao dùng hàm `YEAR(created_at)` lại khiến MySQL bỏ qua Index và chạy Full Table Scan.
2. **Hỏi về Composite Index:** Tìm hiểu cách sắp xếp thứ tự cột `(transaction_type, created_at)` để tối ưu theo nguyên tắc Leftmost Prefix.
3. **Hỏi về EXPLAIN Extra:** Phân biệt ý nghĩa của `Using index condition` và `Using index`.
