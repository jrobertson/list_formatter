#!/usr/bin/env ruby

# file: list_formatter.rb

class ListFormatter

  attr_reader :to_s

  def initialize(layout='', a=[], title: 'Untitled List', field_marker: '$', width: 60)
    
    top = "== #{title} ".ljust(width,'=')
    bottom = '=' * width
    s = top + "\n\n" \
       + format_rows(a, layout, field_marker).join("\n" + '-' * width \
       + "\n\n") + "\n" + bottom
    @to_s = printout(wordwrap(s, width),width)

  end

  private

  def format_rows(a, layout, field_marker='$')

    a.map do |h|

      line = layout.clone
      h.each {|k,v| line.sub!(field_marker + k.to_s,v) }
      line

    end

  end


  def printout(s, width=32)

    a2 = (" \n" + s + "\n ").lines.inject([]) do |r,x| 
      r + x.chomp.each_char.each_slice(width).map do |row|
        "%s" % (row.join + ' ' * width).slice(0,width)
      end
    end
    "%s" % [a2.join("\n")]
  end
    
  def wordwrap(s, cols=32)

    a = s.split(/ /).inject(['']) do |r,word|

      word.lines.each do |x|

        if (r[-1] + x).length <= cols then
          r[-1] << (r[-1].empty? ? x : ' ' + x)
        else
          r +=  [x]
        end
        r[-1] = r[-1].chomp ; r += [''] if x[-1] == "\n"

      end
      r
    end

    a.join("\n")

  end

  
end
