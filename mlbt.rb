class Mlbt < Formula
  desc "Interact with MLB's Statcast API and even watch a live baseball game in your terminal."
  homepage "https://github.com/mlb-rs/mlbt"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-aarch64-apple-darwin.tar.gz"
      sha256 "99790d487330a238182580e843e21199d150be56a016e253a94a113f870b5a8d"
    end
    on_intel do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-x86_64-apple-darwin.tar.gz"
      sha256 "4088c721f3071f117a2040a72f0a82bd5820f7e3044866804354e965714b0175"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9b80c9563a236bb6c6809104b7620ae365372a6ad5529ff966064c561714223"
    end
    on_intel do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "798b1f6e3610f3f72f5158b90a938f0865070d4e5a6d7aa19d3b805528f15e96"
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
