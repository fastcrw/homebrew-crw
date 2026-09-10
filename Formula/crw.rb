class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.34.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "458bd0c86726be4a0471755355d620fcd099938736c366de5ac12b9e26c44bbd"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "3c040a0f200c3ec74a500e4666b14716b25d27396f8e3a807d52cd954a75a09d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "480868f8a27c368afcd31ee78f79de14e79f27939517f7892722d75514b0f2dd"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "37ba6033be8065a3aae305a38fba735d94a09f364dd77d7801276a51a654415d"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
