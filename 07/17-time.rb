# -*- coding: utf-8 -*-
require "time"

t = Time.new                        # => 2010-12-04 16:23:32 +0900
t.year                              # => 2010
t.month                             # => 12
t.day                               # => 4
t.hour                              # => 16
t.min                               # => 23
t.sec                               # => 32
t.usec                              # => 607788
t.to_i                              # => 1291447412

t = Time.mktime(2009,12,9)      # => 2009-12-09 00:00:00 +0900

t1 = Time.new
t2 = Time.new
t2 - t1                         # => 1.0e-06

t.strftime("%Y %m %d")          # => "2009 12 09"
t.rfc2822                       # => "Wed, 09 Dec 2009 00:00:00 +0900"
t.iso8601                       # => "2009-12-09T00:00:00+09:00"

t.utc                           # => 2009-12-08 15:00:00 UTC
t.localtime                     # => 2009-12-09 00:00:00 +0900

t = Time.parse "2009-12-09 00:00:00 +0900" # => 2009-12-09 00:00:00 +0900
t                                          # => 2009-12-09 00:00:00 +0900
t.class                                    # => Time
Time.parse "s59.1.24" # => 1984-01-24 00:00:00 +0900

require "date"

d1 = Date.new(2009,12,4)
d2 = Date.new(2010,12,4)
d2 - d1                         # => (365/1)
d1 + 1                          # => #<Date: 2009-12-05 (4910341/2,0,2299161)>
d1 + 30                         # => #<Date: 2010-01-03 (4910399/2,0,2299161)>
t + 1                           # => 2009-12-09 00:00:01 +0900
t + 30                          # => 2009-12-09 00:00:30 +0900
d1 >> 1                         # => #<Date: 2010-01-04 (4910401/2,0,2299161)>
d1 >> 2                         # => #<Date: 2010-02-04 (4910463/2,0,2299161)>

d1.strftime("%Y %m %d")          # => "2009 12 04"
DateTime.parse "s59.1.24" # => #<DateTime: 1984-01-24T00:00:00+00:00 (4891447/2,0/1,2299161)>
