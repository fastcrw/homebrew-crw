class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/fastcrw/crw"
  version "0.37.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "62345b12519e46d5bf4ef4f82ab92004f7a0e3ebc22a5308608b35de21292eb2"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "7baff76c29b41a4a7ac460d5bcda661ca34535c90dec29a7813c7b568999f6e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "15665156c573025e75355c1bdaf99570b2fb3ad9b4d873c8ce6b39a21668afe6"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "9562a66b32c6905bd3af6c6ce102e6a5a0a918b5ccbd2e2ec1ac4b8a9557ed18"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
