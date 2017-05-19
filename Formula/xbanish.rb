class Xbanish < Formula
  desc "Banish the mouse cursor when typing, show it again when the mouse moves"
  homepage "https://github.com/jcs/xbanish"
  url "https://github.com/jcs/xbanish/archive/v1.5.tar.gz"
  sha256 "d10007a468227bb11549ee341c84ff4b4f1e2f49a3d03a971d5a35a56b117cbc"

  # NOTE: this package depends on X11 (libX11), but i don't declare it
  # or any other dependencies here since i know that my system provides them.

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end
end
