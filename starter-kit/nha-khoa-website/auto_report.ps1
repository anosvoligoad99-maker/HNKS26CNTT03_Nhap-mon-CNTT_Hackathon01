# Scipt : auto_report.ps1
# Tac gia : Le Minh Quan 
# Ngay Tao : 28/10/2026

Write-Host "Dang loc log.."

"==BAO CAO LOI ===" > ".\logs\auto_report.txt"
Get-Content ".\logs\clinic.log" | Select_String "ERROR" >> ".\logs\auto_report.txt"

Write-Host "Hoan Thanh"