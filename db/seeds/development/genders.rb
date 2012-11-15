# coding: utf-8
captions = ["男性", "女性"]

0.upto(1) do |idx|
  Gender.create(
    gender_code: idx + 1,
    caption: captions[idx],
  )
end
