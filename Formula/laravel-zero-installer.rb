class LaravelZeroInstaller < Formula
  desc "Laravel Zero application installer"
  homepage "https://github.com/laravel-zero/installer"
  url "https://github.com/laravel-zero/installer.git",
      :using    => :git,
      :tag      => "v2.0.5",
      :revision => "3ae53e64d6d7e1f3da68eb2abfe02935301c39a8"

  depends_on "composer"

  def install
    system "composer", "install"
    prefix.install Dir["*"]
    bin.install_symlink "#{prefix}/laravel-zero"
  end
end
