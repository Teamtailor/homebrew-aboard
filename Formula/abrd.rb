class Abrd < Formula
  desc "Aboard agent CLI — give AI assistants access to your Aboard HR data"
  homepage "https://github.com/Teamtailor/aboard-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Teamtailor/aboard-cli/releases/download/v#{version}/abrd-v#{version}-darwin-arm64.tar.gz"
      sha256 "96393d3634f0791a50f7838e98fd9b8b2d68c835f7bf0f42e54e52045ab5f205"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Teamtailor/aboard-cli/releases/download/v#{version}/abrd-v#{version}-linux-amd64.tar.gz"
      sha256 "4f1357f882a479fb9f8584e53bfdf091f7205deb848cdeaac94213ea780732cb"
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
