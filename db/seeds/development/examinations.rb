# coding: utf-8
0.upto(9) do |idx|
  Examination.create(
    name: "テスト #{idx}",
    passing_grade: 60 + idx,
    start_at: 1.days.ago,
    end_at: 1.weeks.from_now,
  )
end