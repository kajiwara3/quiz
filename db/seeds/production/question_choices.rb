# coding: utf-8
0.upto(9) do |idx|
  0.upto(5) do |m|
    QuestionChoice.create(
      question_id: idx + 1,
      caption: "#{m + 1} 急ブレーキをかけると、横すべりを起こすおそれがあるので、ブレーキは数回に分けてかけるようにするとよい。",
      correct_flag: m == 1 ? true : false,
    )
  end
end

