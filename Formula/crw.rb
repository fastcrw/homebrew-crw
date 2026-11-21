class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/fastcrw/crw"
  version "0.47.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "fcc653eccc477cce96e7ecb6e567fd3f0b7bae671ac408fc7fd9197413fd625f"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "7c10bb3fadf08aa9afba9862204967a34316d895f2dff7abc0c8db0deb0f1b42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "acb01c81562b68d4c49163a6ed1f72f7d6a73f70612472aca5f1e5998b862199"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "6d235744243ddbd2e8d61aa19cd464d90d930640fcdc06f4185756c41d31c2d7"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
