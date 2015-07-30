# Introducing the List_formatter gem


    require 'list_formatter'

    layout =<<EOF
    $date: to: $to from: $from 
    subject: $title 
    EOF


    a = [
      {title: 'Testing this', date: '2015-07-29', from: 'test1@a111.com', to: 'x6745@xdw4.com'},
      {title: 'XYZ Conference 2015', date: '2015-07-30', from: 'sponsor1@xyzconf2016.com', to: 'normanbrown@ghfje.co.uk'},
    ]

    lf = ListFormatter.new layout, a, title: 'Email for James'
    puts lf.to_s

## Output

<pre>
== Email for James =========================================

2015-07-29: to: x6745@xdw4.com from: test1@a111.com 
subject: Testing this 

------------------------------------------------------------

2015-07-30: to: normanbrown@ghfje.co.uk from: sponsor1@xyzconf2016.com 
subject: XYZ Conference 2015 

============================================================
</pre>


## Resources

* ?list_formatter https://rubygems.org/gems/list_formatter?

listformatter gem list formatter
