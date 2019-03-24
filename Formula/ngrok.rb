class Ngrok < Formula
  desc "Introspected tunnels to localhost"
  homepage "https://ngrok.com"
  version "2.3.23"
  url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip"
  sha256 "24e6cdcced7edb102ab7a1c7ad5e0b179adbf1f26de13560eb5150bf324003dd"

  def install
    prefix.install Dir["*"]
    bin.install_symlink "#{prefix}/ngrok"
  end
end
