# coding: utf-8
fnames = ["管理 佐藤", "管理 鈴木", "管理 高橋", "管理 田中"]
gnames = ["太郎", "次郎", "花子"]

0.upto(9) do |idx|
  Administrator.create(
    name: "#{fnames[idx % 4]} #{gnames[idx % 3]}",
    email: "admin#{idx}@a.com",
    password: "password",
    password_confirmation: "password"
  )
end