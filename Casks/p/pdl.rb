cask "pdl" do
  version "0.3.0"
  sha256 "35dcb304ea7355e4daa8330eab0500a1b754ffb6c7ac747a19f8783422dd6f1f"

  url "https://github.com/IBM/prompt-declaration-language/releases/download/v#{version}/PDL_#{version}_universal.dmg"
  name "pdl"
  desc "Declarative language for creating reliable, composable LLM prompts"
  homepage "https://github.com/IBM/prompt-declaration-language"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "PDL.app"
  binary "#{appdir}/PDL.app/Contents/MacOS/PDL", target: "pdlv"

  zap trash: "~/Library/Application Support/PDL"
end
