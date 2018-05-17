class Graphpath < Formula
  desc "Graphpath generates an ASCII network diagram from the route table of a Unix/Linux"
  homepage "https://bsdrp.net/"
  url "https://github.com/ocochard/graphpath/archive/v1.0.tar.gz"
  sha256 "9e018bbb44f748595d4eb030896ccc195a9a75db773160da480743f31b5b8272"

  def install

    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "script", "-q", "/dev/null", bin/"graphpath"
  end
end
