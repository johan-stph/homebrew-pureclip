class Pureclip2 < Formula
  desc "Detect protein-RNA interaction footprints from single-nucleotide CLIP-seq data"
  homepage "https://github.com/johan-stph/PureCLIP"
  url "https://github.com/johan-stph/PureCLIP/archive/refs/tags/v2.0.2.tar.gz"
  sha256 "f4cef85fe796a6b8c553717c7b2495f0a04e5801ace9833e904f2a4a737a9f66"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "gsl"
  depends_on "libomp"

  def install
    mkdir "build" do
      system "cmake", "../src",
        "-DCMAKE_BUILD_TYPE=Release",
        "-DGSL_ROOT_DIR=#{Formula["gsl"].opt_prefix}",
        "-DCMAKE_PREFIX_PATH=#{Formula["boost"].opt_prefix}",
        *std_cmake_args
      system "make", "-j#{ENV.make_jobs}"
    end
    bin.install "build/pureclip" => "pureclip2"
    bin.install "build/winextract"
  end

  test do
    system "#{bin}/pureclip2", "--version"
  end
end
