class HltexOverleaf < Formula
    desc "Extras for a Chrome extension integrating HLTeX with Overleaf"
    homepage "https://github.com/agajews/homebrew-hltex-overleaf"
    url "https://github.com/agajews/homebrew-hltex-overleaf/raw/master/extras-0.0.1.tar.gz"
    sha256 "422ccf5e0ef6aad32a86a2a5616f11992193104a8a7a13c31daba30d995844f2"
    version "0.0.1"

    bottle :unneeded

    def install
        system "sudo mkdir -p /Library/Google/Chrome/NativeMessagingHosts"
        system "sudo cp -f com.hltex.overleaf.json /Library/Google/Chrome/NativeMessagingHosts/com.hltex.overleaf.json"
        system "sudo mkdir -p /usr/local/bin"
        system "sudo cp -f overleaf_translator /usr/local/bin/"
    end
end
