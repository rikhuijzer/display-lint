# This file was generated, do not modify it. # hide
# hideall
using DisplayLint
project_root()::String = basename(basename(pathof(DisplayLint)))

function ansi2html(text)
  span_color(color, s) = "<span style=\"color:$color;\">$s</span>"
  text = strip(text)
  lines = split(text, '\n')
  function clean(line) 
    if contains(line, "------")
      return span_color("red", "------ " * line[30:end-4])
    end
    if contains(line, "++++++")
      return span_color("green", "++++++ " * line[30:end-4])
    end
    line
  end
  text = join(clean.(lines), '\n')
  text = strip(text)
  """
  ~~~ 
  <pre>
  <div class="hljs">
  $text 
  </div>
  </pre>
  ~~~
  """
end