class Jlcat < Formula
  desc "JSON/JSONL table viewer with auto-flattening and TUI support"
  homepage "https://github.com/tomoya55/jlcat"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomoya55/jlcat/releases/download/v#{version}/jlcat-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5eeaaa1471950f386e2470fb2c0fc028a400294bca7584a086e7866e025e1182" # arm64
    else
      url "https://github.com/tomoya55/jlcat/releases/download/v#{version}/jlcat-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "625b7cf71444ebe5af62fa86cdae46f89b5a5c2491ee5d0fb0fb05b0aa0f761b" # x64
    end
  end

  def install
    bin.install "jlcat"
  end

  test do
    pipe_output("#{bin}/jlcat", '{"name":"test"}', 0)
  end
end
