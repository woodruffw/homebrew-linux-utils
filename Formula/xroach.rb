class Xroach < Formula
  desc "Cockroaches that crawl underneath X11 windows."
  url "ftp://ftp.netbsd.org/pub/pkgsrc/distfiles/xroach-4.4/xroach.tar"
  version "4.4"
  sha256 "31c10b16fe0bd3ddf2edf679c18ef180f0b0c5f1539f2823663c84fcf2fcf97e"

  # NOTE: this package depends on X11 (libX11), but i don't declare it
  # or any other dependencies here since i know that my system provides them.

  def install
    chmod 0755, "Makefile"
    mv "xroach.6", "xroach.1"

    inreplace "Makefile" do |s|
      s.gsub! "-lX11/X11", "-lX11"
    end

    system "pmake"
    bin.install "xroach"
    man1.install "xroach.1"
  end
end
