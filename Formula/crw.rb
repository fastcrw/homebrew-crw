class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/fastcrw/crw"
  version "0.45.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "e3a43a8097583170ddce8696c45d0677aa5a232ef7bc4e325dd48706f69b1711"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "34d5a2988646207b1174cfd5ea5cdc48693d4c9dd6ff8a4316bf2eece87a433e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "a4bd132ee91ffbd176c8b3592d6a16e22ea29fd7da39a7e6c2d8e8a9b981c4bf"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "54b3ef32aac151c7700dc3f403ab6f31ed96492324f5f63effb5830060c16412"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
