class Pureclip < Formula
  desc "Accurate detection of RBP interaction sites from eCLIP-seq data"
  homepage "https://github.com/skrakau/PureCLIP"
  url "https://github.com/skrakau/PureCLIP/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "" # TODO: fill in after confirming release tarball sha256
  license "GPL-3.0-or-later"

  depends_on "cmake" => :build
  depends_on "seqan"

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end

  test do
    system "#{bin}/pureclip", "--version"
  end
end
