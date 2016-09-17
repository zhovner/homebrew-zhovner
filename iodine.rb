class Iodine < Formula
  desc "Tunnel IPv4 data through a DNS server"
  homepage "http://code.kryo.se/iodine/"
  url "https://github.com/yarrick/iodine/archive/8e15a73a77c9973270d8aaf86a1cb683d28fbea5.zip"
  sha256 "357920f31de9eb3971fb846f8da961997951560b5c38fe9e07e02714f876badb"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{sbin}/iodine", "-v"
  end
end
