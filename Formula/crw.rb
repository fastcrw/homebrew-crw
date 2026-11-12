class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/fastcrw/crw"
  version "0.44.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "770553f9a4497c4b015e5c7617b8077c1d81439af7df3f9f1e9dc9473856a01d"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "6bf3f1eaffbce7e90dc919bedf798329d02623ff4c0a3f190c3506ece5a235e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "0a27b82f2a947715a9fec029c030eeb57ecbec36928ba6ca07ca22de294c8c2d"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "a17d56549f21c302c1fcf007f11b662a7d9f92bba4cea5d41c82ade4a87cea2a"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
