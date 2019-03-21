class Ngrok < Formula
  desc "Introspected tunnels to localhost"
  homepage "https://ngrok.com"
  version "2.3.18"
  url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip"
  sha256 "9862ad502f1ca2eab34fc7dbef0b201dd823697f07f519ab5ef0f6be23943f5b"

  def install
    prefix.install Dir["*"]
    bin.install_symlink "#{prefix}/ngrok"
  end
end
