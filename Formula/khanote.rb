class Khanote < Formula
  include Language::Python::Virtualenv

  desc "Universal research workflow kit connecting vibe coding tools with Obsidian"
  homepage "https://github.com/almost-khan/khanote"
  url "https://pypi.io/packages/source/k/khanote/khanote-0.1.0.tar.gz"
  sha256 "852f0776c8c0820976b25ba7bf2ba6388228fbc85f64b3396658a2db56927ec4"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "khanote", shell_output("#{bin}/khanote --help")
  end
end
