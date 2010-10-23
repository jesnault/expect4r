module Expect4r::Router::Ios
module TermServer
  
  def powercycle(lineno)
    config "line #{lineno}\nmodem dtr\nmodem dtr-active"
    sleep 2
    config "line #{lineno}\nno modem dtr\nno modem dtr-active"
  end
  def clear_line(lineno)
    exp_puts "clear line #{lineno}\n"
  end
  
end
end
