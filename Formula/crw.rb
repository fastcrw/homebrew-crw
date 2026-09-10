class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.34.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "b55944620d04b07c1f925be1ca789d581c6e963717ad52261d2980ae2f690989"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "b0e64909af8d846f7f250ffb0475adb86e8f06404ac6c8e99ef3da2efa21590b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "9509523277ad556da977062e6db2bcc1a3b055d2e3c4bb7cafa8b95a2d8924e7"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "5c4104ce7ff081c5fb44e0b4d012d0bfae1bfe5b5df165dff5632353813a1799"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
