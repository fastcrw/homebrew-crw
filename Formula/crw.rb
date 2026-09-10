class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.35.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "71c3a52700a95508321630493a7880549a7df9565b55cd26c8feb7ac3b0ac05f"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "3f8b2bb96bebd3eb578a7b087fe1bc39b6c9e5db2051fe068fa588b1784212a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "0de8e4bab3914dd8786c1e4d8de7a350387650a1783251135c809ad7a07f5e2b"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "51f47300a31cac214c00fe9093a52bfcc02cd994a974875e6cdf232f12ee03e1"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
