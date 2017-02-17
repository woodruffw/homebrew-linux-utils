class Xar < Formula
  desc "The eXtensible Archiver"
  homepage "https://mackyle.github.io/xar/"
  url "https://github.com/downloads/mackyle/xar/xar-1.6.1.tar.gz"
  sha256 "ee46089968457cf710b8cf1bdeb98b7ef232eb8a4cdeb34502e1f16ef4d2153e"

  # NOTE: this package depends on openssl (libssl-dev), but i don't declare
  # it or any other dependencies here since i know that my system provides them.

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end
