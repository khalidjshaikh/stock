#!/usr/bin/env ruby

require 'stock'

symbols = %w(
FB
C
TRI
BKR
INTC
KSS
GE
ALGN
INTU
BBY
AVGO
IR
ENPH
NVDA
INTC
MSI
HPQ
NVDA
MSFT
)

symbols.each do |s|
facebook = Stock.new(s)
j = JSON.parse facebook.d
print s
print " "
print j["marketCap"]["fmt"]
puts ""
end
