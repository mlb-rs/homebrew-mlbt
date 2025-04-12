class Mlbt < Formula
  desc "Interact with MLB's Statcast API and even watch a live game ⚾"
  homepage "https://github.com/mlb-rs/mlbt"
  version "v0.0.13"
  license "MIT"
  url "https://github.com/mlb-rs/mlbt/releases/download/#{version}/mlbt-macos.tar.gz"
  sha256 "6ec64ac4bb98aeafecfa8facd1c57c530cc3bdea50ce723c56d3520e32aa7a33"

  def install
    bin.install "mlbt"
    ohai "Play ball! Run with \"mlbt\""
  end
end
