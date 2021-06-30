class Mlbt < Formula
  desc "Interact with MLB's Statcast API and even watch a live game ⚾"
  homepage "https://github.com/mlb-rs/mlbt"
  version "v0.0.8"
  license "MIT"
  url "https://github.com/mlb-rs/mlbt/releases/download/#{version}/mlbt-macos.tar.gz"
  sha256 "3203f3cf174b417cc22f2dc01787dfa232052b7e0c3bb1b2435b5575b9aa6ee3"

  def install
    bin.install "mlbt"
    ohai "Play ball! Run with \"mlbt\""
  end
end
