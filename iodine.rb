class Iodine < Formula
  desc "Tunnel IPv4 data through a DNS server"
  homepage "http://code.kryo.se/iodine/"
  url "http://code.kryo.se/iodine/iodine-0.7.0.tar.gz"
  version "0.7.0"
  sha256 "ad2b40acf1421316ec15800dcde0f587ab31d7d6f891fa8b9967c4ded93c013e"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{sbin}/iodine", "-v"
  end
end
