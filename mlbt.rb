class Mlbt < Formula
  desc "Interact with MLB's Statcast API and even watch a live baseball game in your terminal."
  homepage "https://github.com/mlb-rs/mlbt"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-aarch64-apple-darwin.tar.gz"
      sha256 "fc2ea9fd7b917bac16bd8828015ef628f1ebbbbcd6f438cd9368f8d8650e4676"
    end
    on_intel do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-x86_64-apple-darwin.tar.gz"
      sha256 "79642b7e4d5de448507a6db06318a2bf6de7c545a9e2bb2fb2e1f2d2d6f346d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d398f60d1afd46865728695323e9bdb83cbff9047baf33bb4d43648433b2e5ef"
    end
    on_intel do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "094263f8cf0670ec84192e285c8ad86c8a4527c967298048bfca2cd839c309eb"
    end
  end

  def install
    bin.install "mlbt"
  end

  def caveats
    <<~EOS
      Play ball! Run with "mlbt"
    EOS
  end

  test do
    assert_predicate bin/"mlbt", :executable?
  end
end
