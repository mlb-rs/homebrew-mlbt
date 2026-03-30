class Mlbt < Formula
  desc "Interact with MLB's Statcast API and even watch a live baseball game in your terminal."
  homepage "https://github.com/mlb-rs/mlbt"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-aarch64-apple-darwin.tar.gz"
      sha256 "759be47f2b066086258cf531405c13c9de65a5442fb5819df9c0d8eb139f391b"
    end
    on_intel do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-x86_64-apple-darwin.tar.gz"
      sha256 "14e27b908470bd02c7f7d55a1619f7ef871487009da8cf97deb0b519fbb9c823"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ef4429c529f6b531627df7ca314ed62a18b814b651673c3ce624acfc7f49b89"
    end
    on_intel do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf8e6b55d53aae7dfafdd6aaf1b98d7fd064f04e0737c08158b2af0121f593a0"
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
    assert_match version.to_s, shell_output("#{bin}/mlbt --version")
  end
end
