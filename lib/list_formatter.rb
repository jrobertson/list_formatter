#!/usr/bin/env ruby

# file: list_formatter.rb

class ListFormatter

  attr_reader :to_s

  def initialize(layout='', a=[], title: 'Untitled List', field_marker: '$', width: 60)
    
    top = "== #{title} ".ljust(width,'=')
    bottom = '=' * width
     
    @to_s = top + "\n\n" \
       + format_rows(a, layout, field_marker).join("\n" + '-' * width \
       + "\n\n") + "\n" + bottom

  end

  private

  def format_rows(a, layout, field_marker='$')

    a.map do |h|

      line = layout.clone
      h.each {|k,v| line.sub!(field_marker + k.to_s,v) }
      line

    end

  end
end
