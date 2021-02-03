class Sticky < Formula
	desc "Use this to build automation te ease your life" 
	homepage "https://sticky.sh"
	url "https://assets.sticky.sh/cli/sticky-v0.9.0/sticky-v0.9.0.tar.gz"
	sha256 "58bc3a4c40e3473fb335e098d7d8bf1965ad332b69f2bad3617c62e3ef942656"

	depends_on "go" => :build
	
	def install
	    system "go", "build", *std_go_args, "-ldflags", "-s -w"
  	end
	
	test do
        system bin/"sticky", "version"
	end
end
