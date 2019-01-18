class LaravelInstaller < Formula
  desc "Laravel application installer"
  homepage "https://github.com/laravel/installer"
  url "https://github.com/laravel/installer.git",
      :using    => :git,
      :tag      => "v2.0.1",
      :revision => "eed4fd01d629cff7556a34139aff26e828073a17"

  depends_on "composer"

  def install
    system "composer", "install"
    prefix.install Dir["*"]
    bin.install_symlink "#{prefix}/laravel"
  end
end
