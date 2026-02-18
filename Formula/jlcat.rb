class Jlcat < Formula
  desc "JSON/JSONL table viewer with auto-flattening and TUI support"
  homepage "https://github.com/tomoya55/jlcat"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomoya55/jlcat/releases/download/v#{version}/jlcat-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "12eb3ff0524dbb0a75a2aa247298063de65f54d0772afe1b7bba8094d2f5bf98" # arm64
    else
      url "https://github.com/tomoya55/jlcat/releases/download/v#{version}/jlcat-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "eaa55d5496f29d8d0702e534c272df56a4f63cec66069e7f48def1a1f64c988c" # x64
    end
  end

  def install
    bin.install "jlcat"
  end

  test do
    pipe_output("#{bin}/jlcat", '{"name":"test"}', 0)
  end
end
