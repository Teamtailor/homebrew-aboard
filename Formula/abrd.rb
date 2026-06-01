class Abrd < Formula
  desc "Aboard agent CLI — give AI assistants access to your Aboard HR data"
  homepage "https://github.com/Teamtailor/aboard-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Teamtailor/homebrew-aboard/releases/download/v#{version}/abrd-v#{version}-darwin-arm64.tar.gz"
      sha256 "0a95eed9fb98e46c4e984a1dfb41fd7b8ba2a4d6137bbd1cd8840c38b15306a7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Teamtailor/homebrew-aboard/releases/download/v#{version}/abrd-v#{version}-linux-amd64.tar.gz"
      sha256 "fd4ed6ac9031ec51fe9a673a5a089be0c6c7280827cd2d4c9b4529c46f35410c"
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
