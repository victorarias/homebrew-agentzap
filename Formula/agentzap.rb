class Agentzap < Formula
  desc "Minimal relay for multi-agent chat over TCP/JSONL"
  homepage "https://github.com/victorarias/agentzap"
  url "https://api.github.com/repos/victorarias/agentzap/tarball/v0.1.1"
  sha256 "ebd35ded55e45f40a8834dfda72fc882149a1da175b99915df25f6ac30e74951"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"agentzap", "./"
    bin.install "agentzap-send"
  end

  test do
    system "#{bin}/agentzap", "--help"
  end
end
