class Ngrok < Formula
  desc "Introspected tunnels to localhost"
  homepage "https://ngrok.com"
  version "2.3.25"
  url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip"
  sha256 "cb5cb621c037307d7f639be7c89988fbbc794aa9bfeca52432530b708f0d106b"

  def install
    prefix.install Dir["*"]
    bin.install_symlink "#{prefix}/ngrok"
  end
end
