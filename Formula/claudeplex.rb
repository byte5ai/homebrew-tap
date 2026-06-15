class Claudeplex < Formula
  desc "Terminal multiplexer and cockpit for Claude Code"
  homepage "https://github.com/byte5ai/claudeplex"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/byte5ai/claudeplex/releases/download/v0.1.0/claudeplex-darwin-arm64"
      sha256 "2a0dabbd1695b6bfdd81ddf204d9f8fdad6b2a88ec81d3f78edbe34459183aa4"
    end
    on_intel do
      url "https://github.com/byte5ai/claudeplex/releases/download/v0.1.0/claudeplex-darwin-x64"
      sha256 "b1339d390754a7960027d852f4c3b77168e7b400808fe5b70f3c61c5eea55a4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/byte5ai/claudeplex/releases/download/v0.1.0/claudeplex-linux-arm64"
      sha256 "ef2883cb71d849074e930c1343c16530d3a097232d2b356858ae160d6d3eea29"
    end
    on_intel do
      url "https://github.com/byte5ai/claudeplex/releases/download/v0.1.0/claudeplex-linux-x64"
      sha256 "7ef60ba8704baafdaea1ce55875a020595b85847e3000b458b999f42a2dceb72"
    end
  end

  def install
    bin.install Dir["claudeplex-*"].first => "claudeplex"
  end

  test do
    system bin/"claudeplex", "--json"
  end
end
