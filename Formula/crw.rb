class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.35.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "0f7be68bb42f94984f7b4d825495af7a6f603d73a947a8e8924298c4bf96a272"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "3f53bd39328696ce8e59741b3b461bc6f1829f4f73b9a9de7afcea3e81ad5205"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "3aa64e6dbc710b6e4a26c6b778d74d926cfadb01d691d9a127b16c78a040351d"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "7b18059cb9e5586ed3fdfcc86097942d10860f687e840a0df5f818182954a2a9"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
