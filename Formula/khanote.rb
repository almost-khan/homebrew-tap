class Khanote < Formula
  include Language::Python::Virtualenv

  desc "Universal research workflow kit connecting vibe coding tools with Obsidian"
  homepage "https://github.com/almost-khan/khanote"
  url "https://pypi.io/packages/source/k/khanote/khanote-0.2.0.tar.gz"
  sha256 "d6e510e0d052cd4b527b52e1fab73e71071da83e2390a5ad8313ca662cb05039"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "khanote", shell_output("#{bin}/khanote --help")
  end
end
