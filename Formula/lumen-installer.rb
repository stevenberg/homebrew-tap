class LumenInstaller < Formula
  desc "Lumen application installer"
  homepage "https://github.com/laravel/lumen-installer"
  url "https://github.com/laravel/lumen-installer.git",
      :using    => :git,
      :tag      => "v1.1.0",
      :revision => "9fe7910e703589edd425f799545054d47df49cd6"

  depends_on "php"
  depends_on "composer"

  def install
    system "composer", "install"
    prefix.install Dir["*"]
    bin.install_symlink "#{prefix}/lumen"
  end
end
