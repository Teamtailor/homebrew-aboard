class Abrd < Formula
  desc "Aboard agent CLI — give AI assistants access to your Aboard HR data"
  homepage "https://github.com/Teamtailor/aboard-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Teamtailor/homebrew-aboard/releases/download/v#{version}/abrd-v#{version}-darwin-arm64.tar.gz"
      sha256 "a9bdd2a022a997361a182204c944bbb65e2b8144be2121ba76735e7a129cb169"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Teamtailor/homebrew-aboard/releases/download/v#{version}/abrd-v#{version}-linux-amd64.tar.gz"
      sha256 "a94e25f9600cde874127a5973aeb374ebcbe52662d9e595cd525702cd8f765ab"
    end
  end

  def install
    binary = Dir["abrd-*"].first
    bin.install binary => "abrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/abrd --version")
  end
end
