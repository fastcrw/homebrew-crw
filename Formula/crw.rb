class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/fastcrw/crw"
  version "0.39.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "1db251678dc8edd55de84ea3d8b6b9ba1a2be683a50b2534fcb9822bfc6144eb"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "17cb7b10fc7d3c612233aafedb866f14566000db32a72ab44f58e772c28bc8ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "02c24e898c49b1d1649448e8b018e3641bb17960fbc963d3d2298a5b1a3f95ca"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "0263c8b683652ce1cf1cf5ab7788133ae40a11cd9ab171e804c3021f0b6b9d83"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
