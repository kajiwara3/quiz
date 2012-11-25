# coding: utf-8
0.upto(9) do |idx|
  0.upto(9) do |m|
    Question.create(
      examination_id: idx + 1,
      caption: "問題 #{m + 1}",
      description: " 下の標識がある道路は、四輪車の通行は禁止されるが、原動機付自転車は通行できる。",
      credits: 10,
    )
  end
end
