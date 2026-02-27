class Mlbt < Formula
  desc "Interact with MLB's Statcast API and even watch a live game"
  homepage "https://github.com/mlb-rs/mlbt"
  license "MIT"
  version "0.1.0-rc.1"

  on_macos do
    on_arm do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-aarch64-apple-darwin.tar.gz"
      sha256 "7ae708ea53e9e16faebdae972a1659f839fac6b6fa50f4f6d57016a6ef01f46b"
    end
    on_intel do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-x86_64-apple-darwin.tar.gz"
      sha256 "b76fd79d79199a75d4f39bf758adc9885642ba9de88554669489680512a113ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c594d1bd8ee1e22d805e91d9bf8e361a9da333996cdb13c0ad4ae3e63c5faa42"
    end
    on_intel do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d06d278fc8f184bc91563a06a2f4779f0f844ce58c2db7ad098049475e16fbde"
    end
  end

  def install
    bin.install "mlbt"
  end
end
