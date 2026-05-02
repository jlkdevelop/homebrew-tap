class Mx < Formula
  desc "Modern open-source scripting language for building web apps and APIs"
  homepage "https://mxscript.com"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jlkdevelop/mxscript/releases/download/v0.14.0/mx_0.14.0_darwin_arm64.tar.gz"
      sha256 "e62686c909e8c53962f9189bd34c1cb78f5b0823100bae8d47b652ddba009015"
    end
    on_intel do
      url "https://github.com/jlkdevelop/mxscript/releases/download/v0.14.0/mx_0.14.0_darwin_amd64.tar.gz"
      sha256 "bb306b3a7d471290f6002b03f5e60a3ef1cc81a3140f0db1af784dda0ec2fa1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jlkdevelop/mxscript/releases/download/v0.14.0/mx_0.14.0_linux_arm64.tar.gz"
      sha256 "8ad32617839604cd50633d5004708825433f77a33da6585de8564e667f535c3e"
    end
    on_intel do
      url "https://github.com/jlkdevelop/mxscript/releases/download/v0.14.0/mx_0.14.0_linux_amd64.tar.gz"
      sha256 "c99f277da7958a8c54099398d409f46f5683351de1f773cae4c3d78bd007a3af"
    end
  end

  def install
    bin.install "mx"
  end

  test do
    # GoReleaser builds strip the leading "v", so the binary prints
    # "MX Script 0.14.0" (no v) — match on the bare version number.
    output = shell_output("#{bin}/mx version").chomp
    assert_match "MX Script #{version}", output
  end
end
