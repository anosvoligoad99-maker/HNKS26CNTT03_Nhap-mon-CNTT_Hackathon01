# BÀI LÀM – HACKATHON 01

- **Mã đề:** 14
- **Họ tên:Lê Minh Quân** 
- **Lớp:CNTT03** 
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):Windows** 

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -Recuse
cd .\huong_dan_cham_soc.txt\ .\docs\
cd .\logo_nha_nhoa.png\ .\media\
cp .\docs\logo_nha_khoa.png\ .\backup\
rm .\temp_226.tmp
cd logs
ls
cd ..

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```shell
D:\starter-kit\nha-khoa-website> Get-ChildItem -Recurse -Force


    Directory: D:\starter-kit\nha-khoa-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/28/2026  11:17 AM                backup
d-----        10/28/2026  11:03 AM                data
d-----        10/28/2026  11:17 AM                docs
d-----        10/28/2026  11:03 AM                logs
d-----        10/28/2026  11:17 AM                media
------        10/27/2026   1:32 AM             65 .env
-a----        10/27/2026   1:32 AM           2224 bai_lam.md


    Directory: D:\starter-kit\nha-khoa-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           5736 logo_nha_khoa.png


    Directory: D:\starter-kit\nha-khoa-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6094 dieu_tri_thang_4.xlsx


    Directory: D:\starter-kit\nha-khoa-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           1079 clinic.log


    Directory: D:\starter-kit\nha-khoa-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM             63 huong_dan_cham_soc.txt
```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
Get-Content .\logs\clinic.log | Select-String "ERROR" >> .\logs\daily_report.txt
```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```shell
2026-04-28 09:51:29 [ERROR] Ket noi he thong ho so that bai
2026-04-28 10:07:29 [ERROR] Khong tim thay trang /bang-gia-dich-vu (404)

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\auto_report.txt
```

### Kết quả hiển thị

```text

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
 (Get-Content .\logs\clinic.log | Select-String "ERROR").Count
```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```shell
5
```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
"===== TONG HOP LOG ====" >> .\logs\tong_hop.txt
 Get-Content .\logs\clinic.log | Select-String "WARNING" >> .\logs\tong_hop.txt
 Get-Content .\logs\clinic.log | Select-String "ERROR" >> .\logs\tong_hop.txt
(Get-Content .\logs\clinic.log | Select-String "ERROR").Count
```

### Nội dung file logs/tong_hop.txt

```shell
===== TONG HOP LOG ====

2026-04-28 09:27:29 [WARNING] Thoi gian phan hoi cham
2026-04-28 09:31:29 [WARNING] Anh X-quang dung luong lon
2026-04-28 09:39:29 [WARNING] Anh X-quang dung luong lon
2026-04-28 10:11:29 [WARNING] Lich kham chieu thu bay sap kin



2026-04-28 09:51:29 [ERROR] Ket noi he thong ho so that bai
2026-04-28 10:07:29 [ERROR] Khong tim thay trang /bang-gia-dich-vu (404)
2026-04-28 10:19:29 [ERROR] Ket noi he thong ho so that bai
2026-04-28 10:27:29 [ERROR] Ket noi he thong ho so that bai
2026-04-28 10:35:29 [ERROR] Dat lich hen that bai



```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/dieu_tri_thang_4.xlsx`, không cần ghi vào đây.
