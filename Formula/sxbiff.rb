class Sxbiff < Formula
  desc "xbiff with signals"
  homepage "https://github.com/woodruffw/sxbiff"
  url "https://github.com/woodruffw/sxbiff/archive/1.3.tar.gz"
  sha256 "9de42606253f2409127cf27d0cc633ebc2bceaa7b85b7445b27f7c9ea9ccad1b"

  # NOTE: this package depends on X11 (libX11), but i don't declare it
  # or any other dependencies here since i know that my system provides them.

  def install
    system "make"
    bin.install "sxbiff"
    man1.install "sxbiff.1"
  end
end
