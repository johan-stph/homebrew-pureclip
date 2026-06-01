class Pureclip2 < Formula
  desc "Detect protein-RNA interaction footprints from single-nucleotide CLIP-seq data"
  homepage "https://github.com/johan-stph/PureCLIP"
  url "https://github.com/johan-stph/PureCLIP/archive/refs/tags/v2.0.3.tar.gz"
  sha256 "3997922cf6c0bd2433497857c79efaab13d9670f587a725e21014e64972d6b8f"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "gsl"
  depends_on "libomp"

  def install
    mkdir "build" do
      system "cmake", "../src",
        "-DCMAKE_BUILD_TYPE=Release",
        "-DPURE_CLIP_VERSION=#{version}",
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
