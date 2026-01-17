class Agentzap < Formula
  desc "Minimal relay for multi-agent chat over TCP/JSONL"
  homepage "https://github.com/victorarias/agentzap"

  head "https://github.com/victorarias/agentzap.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"agentzap", "./"
    bin.install "agentzap-send"
  end

  test do
    system "#{bin}/agentzap", "--help"
  end
end
