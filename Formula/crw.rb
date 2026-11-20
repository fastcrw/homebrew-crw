class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/fastcrw/crw"
  version "0.47.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "9b66d5c04c6caae4cb5b9641a1dc32b9c7ea58c2eb6ada095fd351e681bcdcfd"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "1fced58905a51e69cd3e336cc56ebea5b38d6dae6bd6622ab905fa11352bdf55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "1b6375a2a56a45926b69f480b6d1706c44dee648d6d45b974a694da8070982ae"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "48b79aeb93e3129c3c57bad6ac9485ad1790654500af78ca66cd4ecb3e593938"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
