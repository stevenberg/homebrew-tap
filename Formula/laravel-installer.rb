class LaravelInstaller < Formula
  desc "Laravel application installer"
  homepage "https://github.com/laravel/installer"
  url "https://github.com/laravel/installer.git",
      :using    => :git,
      :tag      => "v2.3.0",
      :revision => "02528de5848c2a27220258b8a5e7e820a6c57cc7"

  depends_on "composer"

  def install
    system "composer", "install"
    prefix.install Dir["*"]
    bin.install_symlink "#{prefix}/laravel"
  end
end
