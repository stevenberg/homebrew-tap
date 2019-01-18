class LumenInstaller < Formula
  desc "Lumen application installer"
  homepage "https://github.com/laravel/lumen-installer"
  url "https://github.com/laravel/lumen-installer.git",
      :using    => :git,
      :tag      => "v1.0.3",
      :revision => "ab032993e381c831b5e78fd5336a900e5e4e3fa1"

  depends_on "composer"

  def install
    system "composer", "install"
    prefix.install Dir["*"]
    bin.install_symlink "#{prefix}/lumen"
  end
end
