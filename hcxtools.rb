class Hcxtools < Formula
  desc "Portable solution for capturing wlan traffic and conversion to hashcat formats (recommended by hashcat) and to John the Ripper formats. hcx: h = hash, c = capture, convert and calculate candidates, x = different hashtypes"
  homepage "https://github.com/ZerBea/hcxtools"
  head "https://github.com/ZerBea/hcxtools.git"

  head do
    url "https://github.com/ZerBea/hcxtools.git"
  end

  depends_on "openssl@1.1"


  def install
    ENV.prepend "CPPFLAGS", "-I#{Formula["openssl@1.1"].opt_include}"
    ENV.prepend "LDFLAGS", "-L#{Formula["openssl@1.1"].opt_lib}"

    system "make", "install", "INSTALLDIR=#{prefix}"
  end

  test do
    system "#{bin}/hcxpcapngtool", "--version"
  end
end
