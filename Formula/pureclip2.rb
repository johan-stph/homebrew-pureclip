class Pureclip2 < Formula
  desc "Capturing protein-RNA interaction footprints from single-nucleotide CLIP-seq data"
  homepage "https://github.com/johan-stph/PureCLIP"
  url "https://github.com/johan-stph/PureCLIP/archive/refs/tags/v1.3.1.tar.gz"
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
