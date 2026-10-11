class Jlcat < Formula
  desc "JSON/JSONL table viewer with auto-flattening and TUI support"
  homepage "https://github.com/tomoya55/jlcat"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomoya55/jlcat/releases/download/v#{version}/jlcat-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f28d945c7336ff7ea4d85a6ea1127e123ad2bab24b0081009fafb13c2ca043f7" # arm64
    else
      url "https://github.com/tomoya55/jlcat/releases/download/v#{version}/jlcat-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "92ccf8686b65ab3fe66cf602d28d4b7c063f3e3977980313cc265ab29c62222c" # x64
    end
  end

  def install
    bin.install "jlcat"
  end

  test do
    pipe_output("#{bin}/jlcat", '{"name":"test"}', 0)
  end
end
