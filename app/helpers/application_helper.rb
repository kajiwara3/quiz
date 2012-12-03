# coding: utf-8
module ApplicationHelper
  def correct_icon(correct_flag)
    if correct_flag == true
      return content_tag(:i,'', class: 'icon-thumbs-up')    end
    return '-'
  end
end