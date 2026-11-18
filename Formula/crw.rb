class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/fastcrw/crw"
  version "0.46.2"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "f5b526aeb06060cc87b3f52eae5d2a624dcf67febc3309c073877e99eada2478"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "023c86349dfa21937c8270210abca25e2eaf702180e63776d1943341fd1e2bb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "73e324f176731ec4a0662b6c035c244ed2d84afc5e7d9aa5beba7ac8a9a69afd"
    end
    on_intel do
      url "https://github.com/fastcrw/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "b243eef3f397294e584bfc913e458b834e326b996009017e9d164c1c47b6bfbc"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
