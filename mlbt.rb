class Mlbt < Formula
  desc "Interact with MLB's Statcast API and even watch a live game ⚾"
  homepage "https://github.com/mlb-rs/mlbt"
  version "v0.0.17"
  license "MIT"
  url "https://github.com/mlb-rs/mlbt/releases/download/#{version}/mlbt-macos.tar.gz"
  sha256 "e1142c6f3da530d7eecf95325ad526eabbbf9c4f342753a83604381b1a4bc84d"

  def install
    bin.install "mlbt"
    ohai "Play ball! Run with \"mlbt\""
  end
end
