class Graphpath < Formula
  desc "Generates ASCII network diagram from the route table of a Unix/Linux"
  homepage "https://bsdrp.net/"
  url "https://github.com/ocochard/graphpath/archive/v1.0.tar.gz"
  sha256 "9e018bbb44f748595d4eb030896ccc195a9a75db773160da480743f31b5b8272"
  head "https://github.com/ocochard/graphpath.git"

  bottle :unneeded

  def install
    bin.install "graphpath" => "graphpath"
  end

  test do
    system "#{bin}/graphpath", "-v"
  end
end

