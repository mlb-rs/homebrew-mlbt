class Mlbt < Formula
  desc "Interact with MLB's StatCast API and even watch a live game ⚾"
  homepage "https://github.com/mlb-rs/mlbt"
  version "v0.0.5"
  license "MIT"
  url "https://github.com/mlb-rs/mlbt/releases/download/#{version}/mlbt-macos.tar.gz"
  sha256 "d8de7d7653aa0a0c67d329d3b297824edb300e5eac4a60156d9ec08d6812e874"

  def install
    bin.install "mlbt"
    ohai "Play ball! Run with \"mlbt\""
  end
end
