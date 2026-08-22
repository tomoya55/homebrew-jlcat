class Jlcat < Formula
  desc "JSON/JSONL table viewer with auto-flattening and TUI support"
  homepage "https://github.com/tomoya55/jlcat"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomoya55/jlcat/releases/download/v#{version}/jlcat-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ba440f2dfa7c62bf87e9eaa7fbf23fb0a72ba05815cb94a4195a7a18d7d99644" # arm64
    else
      url "https://github.com/tomoya55/jlcat/releases/download/v#{version}/jlcat-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b9b91209c07a8ecf8692763530f2bf4dd0c8055714ba8ea52071722b2803dad0" # x64
    end
  end

  def install
    bin.install "jlcat"
  end

  test do
    pipe_output("#{bin}/jlcat", '{"name":"test"}', 0)
  end
end
