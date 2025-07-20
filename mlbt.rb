class Mlbt < Formula
  desc "Interact with MLB's Statcast API and even watch a live game ⚾"
  homepage "https://github.com/mlb-rs/mlbt"
  version "v0.0.18"
  license "MIT"
  url "https://github.com/mlb-rs/mlbt/releases/download/#{version}/mlbt-macos.tar.gz"
  sha256 "cbe6041bfc0e7c2f55031764127b781c3ce5f8badc1d7da1f0c293eb589ddf86"

  def install
    bin.install "mlbt"
    ohai "Play ball! Run with \"mlbt\""
  end
end
