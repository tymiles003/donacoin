module Donacoin
end

#require_relative "roba"
require_relative "ui"

# persist window in jar
event_thread = nil
SwingUtilities.invokeAndWait { Donacoin::UI.new } # normal launch
SwingUtilities.invokeAndWait { event_thread = java.lang.Thread.currentThread }
event_thread.join