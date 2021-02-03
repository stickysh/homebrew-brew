class Sticky < Formula
	desc "Use this to build automation te ease your life" 
	homepage "https://sticky.sh"
	url "https://assets.sticky.sh/cli/sticky-v0.9.0/sticky-v0.9.0.tar.xz"
	sha256 "bc5fe8ae2759725ad67f5cfef0d87bdd5b4a49a5ec1095c138798509c0c47188"
	
	def install
	    bin.install "bin/sticky"
  	end
	
	test do
        system bin/"sticky", "version"
	end
end
