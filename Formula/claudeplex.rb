class Claudeplex < Formula
  desc "Terminal multiplexer and cockpit for Claude Code"
  homepage "https://github.com/byte5ai/claudeplex"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/byte5ai/claudeplex/releases/download/v0.2.0/claudeplex-darwin-arm64"
      sha256 "7920661fc7daab896f51fe2b474afb11d51947878eb8ed0fba6769a92f1cb2af"
    end
    on_intel do
      url "https://github.com/byte5ai/claudeplex/releases/download/v0.2.0/claudeplex-darwin-x64"
      sha256 "6563319d90993f0561e131042b2ae5612f09a53e2dae2676ef0da1e3dbead715"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/byte5ai/claudeplex/releases/download/v0.2.0/claudeplex-linux-arm64"
      sha256 "979b41ad5bf4921ea558c495d5cfdd8e98450722163c111cdf824ecbd4de0a39"
    end
    on_intel do
      url "https://github.com/byte5ai/claudeplex/releases/download/v0.2.0/claudeplex-linux-x64"
      sha256 "7ce7281bafc9a9c8cf09c380180d0574519b567434a17bef10854156781eb9c8"
    end
  end

  def install
    bin.install Dir["claudeplex-*"].first => "claudeplex"
  end

  test do
    system bin/"claudeplex", "--json"
  end
end
