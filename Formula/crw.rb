class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/fastcrw/crw"
  version "0.44.3"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "3d076ecffc70508cd7bd3b4eba41b5ea56df2f388a7a66c81c0b6199ba637c84"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "9fc3d71df5cf37ffc4dc2a3273295d122aa6af04ac328c23d4388aec8c64d7a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "23b42cd850b1ed2db34059fe8adc9e74898289f193745fb11c39f499c88031d6"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "936dab5db9545d50f7c53d1b3895d18425c8d9c50ad4f5fe28f14406d4f405be"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
