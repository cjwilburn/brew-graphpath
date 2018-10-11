class Graphpath < Formula
  desc "Generates ASCII network diagram from the route table of a Unix/Linux"
  homepage "https://bsdrp.net/"
  url "https://github.com/ocochard/graphpath/archive/v1.1.tar.gz"
  sha256 "b6a773d4087fb1659ff5c20f28516b85e0615765"
  head "https://github.com/ocochard/graphpath.git"

  bottle :unneeded

  def install
    bin.install "graphpath" => "graphpath"
  end

  test do
    system "#{bin}/graphpath", "-v"
  end
end
