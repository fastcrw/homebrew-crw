class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/fastcrw/crw"
  version "0.43.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "69ccefcd93f1ff21e627f384d26d3675fbb6ac1202546b90d8a76d978705e828"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "b9989d27005bb709dbf7e69d83c137233a0a4a394a2cd637bba3694efed940b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "4fd033ca69379b37a92295a352f42efd559d32e6e6a7d3203d2f7020a6846d51"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "4152ad6acb4b6d64475a80e576c6ce8596e8b6dd2efd17ae27e3f0c438c0b096"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
