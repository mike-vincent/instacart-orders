class InstacartScraper < Formula
  desc "Export your Instacart order history"
  homepage "https://mike-vincent.github.io/instacart-scraper/"
  url "https://raw.githubusercontent.com/mike-vincent/instacart-scraper/master/instacart-scraper"
  version "1.0.0"
  sha256 :no_check
  license "MIT"

  def install
    bin.install "instacart-scraper"
  end

  test do
    assert_match "session", shell_output("#{bin}/instacart-scraper --help")
  end
end
