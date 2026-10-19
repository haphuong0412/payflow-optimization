USE payflow_db;

-- Tạo Composite Index tối ưu cho câu lệnh
CREATE INDEX idx_type_date ON Transactions(transaction_type, created_at);

-- Truy vấn đã tối ưu hóa (SARGable)
EXPLAIN 
SELECT SUM(amount) AS total_deposit
FROM Transactions
WHERE transaction_type = 'DEPOSIT' 
  AND created_at >= '2026-06-01 00:00:00' 
  AND created_at < '2026-07-01 00:00:00';
