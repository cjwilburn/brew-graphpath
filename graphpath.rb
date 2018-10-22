class Graphpath < Formula
  desc "Generates ASCII network diagram from the route table of a Unix/Linux"
  homepage "https://bsdrp.net/"
  url "https://github.com/ocochard/graphpath/archive/v1.2.tar.gz"
  sha256 "b41603871d232f266a82e2a123e8b95387a42bba"
  head "https://github.com/ocochard/graphpath.git"

  bottle :unneeded

  def install
    bin.install "graphpath" => "graphpath"
  end

  test do
    system "#{bin}/graphpath", "198.18.0.10 198.19.0.10"
  end
end
