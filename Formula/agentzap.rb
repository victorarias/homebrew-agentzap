class Agentzap < Formula
  desc "Minimal relay for multi-agent chat over TCP/JSONL"
  homepage "https://github.com/victorarias/agentzap"
  url "https://api.github.com/repos/victorarias/agentzap/tarball/v0.1.0"
  sha256 "7a81f2236de73bacc9d17a82784fbacdb29f74b0fd799721f53d72b40ea11d99"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"agentzap", "./"
    bin.install "agentzap-send"
  end

  test do
    system "#{bin}/agentzap", "--help"
  end
end
