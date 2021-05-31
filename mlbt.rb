class Mlbt < Formula
  desc "Interact with MLB's StatCast API and even watch a live game."
  homepage "https://github.com/mlb-rs/mlbt"
  version "v0.0.4"
  license "MIT"
  url "https://github.com/mlb-rs/mlbt/releases/download/#{version}/mlbt-macos.tar.gz"
  sha256 "800404686cf5c10e7100a77d721d837777927e39fa992e65a33620565d8043e4"

  def install
    bin.install "mlbt"
    ohai "Play ball!  Run with \"mlbt\""
  end

end
