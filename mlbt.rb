class Mlbt < Formula
  desc "Interact with MLB's Statcast API and even watch a live baseball game in your terminal."
  homepage "https://github.com/mlb-rs/mlbt"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-aarch64-apple-darwin.tar.gz"
      sha256 "fc0c5653c7cf1b0354444d2efea1deab53f06cb51fe493c4a8c6a3d228c6ab92"
    end
    on_intel do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-x86_64-apple-darwin.tar.gz"
      sha256 "ed9121e584b7db26c095b72f7e44f07a5caa4e2b2b36f10d119fdbbaf70941c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "61c4f74365f367e86225819948e5c20d9d74dc295a95069d0ed5f79821b604fc"
    end
    on_intel do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06c8c43ec9acbab4470e8857cc199a09174bb7a784943946dffd0307cf8ca771"
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
