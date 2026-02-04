class Jlcat < Formula
  desc "JSON/JSONL table viewer with auto-flattening and TUI support"
  homepage "https://github.com/tomoya55/jlcat"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomoya55/jlcat/releases/download/v#{version}/jlcat-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4f033140291fc365c25f02f77f7d5fda7aac685356e0dab2ea1ab056e5ef03dd" # arm64
    else
      url "https://github.com/tomoya55/jlcat/releases/download/v#{version}/jlcat-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "07d1fa6fd765f18679b3e66ac1044dae8a9bd5bf72e32e461ad982a735c6f6c8" # x64
    end
  end

  def install
    bin.install "jlcat"
  end

  test do
    pipe_output("#{bin}/jlcat", '{"name":"test"}', 0)
  end
end
