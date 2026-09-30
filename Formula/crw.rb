class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/fastcrw/crw"
  version "0.37.2"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "df3dc4dff6460e47224d2dba2d19ad2a2def1262c2b73ec08dd6bb4e0839edb8"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "47b08bacc29c377120bc198d712ee350d1a285ac71668ee785c1834de5f3aff4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "24781e6fe911c87b64b0d9c698dba991b9757ac986efb375b28be734e8434448"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "17392030aa39de532dca959c780ac5aaf17ec5f0958bb4d0285a5b58dd83ff2a"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
