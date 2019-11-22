class LaravelZeroInstaller < Formula
  desc "Laravel Zero application installer"
  homepage "https://github.com/laravel-zero/installer"
  url "https://github.com/laravel-zero/installer.git",
      :using    => :git,
      :tag      => "v2.3.0",
      :revision => "21ba78c6ea17c02db44a3bc9cbaf23c0ce30f7af"

  depends_on "composer"

  def install
    system "composer", "install"
    prefix.install Dir["*"]
    bin.install_symlink "#{prefix}/laravel-zero"
  end
end
