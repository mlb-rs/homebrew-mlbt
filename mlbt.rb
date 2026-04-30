class Mlbt < Formula
  desc "Interact with MLB's Statcast API and even watch a live baseball game in your terminal."
  homepage "https://github.com/mlb-rs/mlbt"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-aarch64-apple-darwin.tar.gz"
      sha256 "f497d3ff6da6a4dca4ce042696bfc2f0163194b6860db982bf42891cedf90026"
    end
    on_intel do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-x86_64-apple-darwin.tar.gz"
      sha256 "84eb94396ad6933d7985fb78e1fe6656e50570deae05958ac486a20b6a68378f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "077a0ee4f1bce96cd8a9e44685010728e9e061ff6ffb1e3efac2ab762d5c9f7c"
    end
    on_intel do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dafe3fbcabb7a77b0b917d596963647f7be10ec9fea83bde7b5602fbea745007"
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
