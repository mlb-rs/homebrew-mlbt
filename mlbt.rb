class Mlbt < Formula
  desc "Interact with MLB's Statcast API and even watch a live game ⚾"
  homepage "https://github.com/mlb-rs/mlbt"
  version "v0.0.9"
  license "MIT"
  url "https://github.com/mlb-rs/mlbt/releases/download/#{version}/mlbt-macos.tar.gz"
  sha256 "5fcb724042d268ca240ae3329f4aa3d3660cc35c891f06f1574c11d6ff4e637e"

  def install
    bin.install "mlbt"
    ohai "Play ball! Run with \"mlbt\""
  end
end
