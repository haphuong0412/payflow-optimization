# Báo Cáo Phân Tích EXPLAIN

## So sánh Execution Plan
- **Trước tối ưu:** `type = ALL` (Quét toàn bộ 5 triệu dòng), `key = NULL`.
- **Sau tối ưu:** `type = range`, `key = idx_type_date`, số dòng quét giảm xuống chỉ còn các giao dịch của tháng 6.

## Kết luận
Thay thế hàm `YEAR()` và `MONTH()` bằng khoảng thời gian `>=` và `<` giúp MySQL sử dụng B-Tree Index, giải quyết triệt để sự cố quá tải CPU.
