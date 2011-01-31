Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8749B4C8006D
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 03:04:21 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0V961lh019172; Mon, 31 Jan 2011 09:06:01 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id suX+OBKsVHpY; Mon, 31 Jan 2011 09:06:01 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0V95sZJ019155
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 31 Jan 2011 09:05:56 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504E6294E376@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504E6294E376@shsmsx502.ccr.corp.intel.com>
Date: Mon, 31 Jan 2011 09:03:38 +0000
Message-ID: <1296464618.13501.12012.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: summary about recent do_populate_sdk failures
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 31 Jan 2011 09:04:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-31 at 15:18 +0800, Tian, Kevin wrote:
> Lianhao and I are looking into recent master instability, more specifically starting
> from reported do_populate_sdk failures. There have been 3 problems revealed:
> 
> 1) unexpected do_package/do_package_write* rebuild
> 2) change PACKAGE_CLASSES causes more do_package rebuilds
> 3) do_populate_sdk finally exits due to eglibc not matching expected version
> 
> We've root caused 1), and the patch has been sent out:
> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=tk/master1&id=68ad8ead1a83161afb8c2a65a28dfc205181d80e
> 
> We're not sure whether 3) is caused by too many unexpected do_package rebuilds,
> and is now testing whether 3) will disappear with the fix for 1). We'll also look into
> original failure to see whether real cause of 3) may be hidden with the fix.
> 
> Now the remaining open is about 2). We got the reason, but would like to welcome
> Comments on an elegant solution.
> 
> The phenomenon is that do_package checksum changes with switching the order
> In PACKAGE_CLASSES, e.g:
> 
> From
> PACKAGE_CLASSES = "package_rpm package_ipk"
> To
> PACKAGE_CLASSES = "package_ipk package_rpm"
> 
> This is undesired since the order only matters for final rootfs generation. The actual
> cause is related to how do_package is generated, which depends on when 
> package.bbclass is first brought in.
> 
> Take package_rpm.bbclass for example, which inherit package.bbclass. Bitbake
> generates below wrappers implicitly:
> 
> Do_package () {
> 	bb.build.exec_func('package_rpm_do_package', d)
> }
> 
> Package_rpm_do_package() {
> 	bb.build.exec_func('package_do_package', d)
> }
> 
> Above is implicitly created when bitbake parses class files based on inheritance tree,
> and once a class file is parsed it's then saved to the cache. When later package_ipk is
> parsed, bitbake will simply read from the cache for package.bbclass and then
> do_package remains tying to package_rpm_do_package.
> 
> If package_ipk is the 1st in PACKAGE_CLASSES, then do_package becomes:
> 
> Do_package () {
> 	bb.build.exec_func('package_ipk_do_package', d)
> }
> 
> This sure generates different checksum to break sstate installation, but in reality it's
> just name difference, no actual functional change. We considered to use vardeps and 
> varexcldeps which don't help though since it's the do_package itself changed.
> 
> One possible option is to sort the INHERIT list, which ensures we always parse
> Inherited class files in same order if no content change. We'll test whether this works,
> and also hear your comments.

For 2), I suggest we drop the EXPORT_FUNCTIONS for do_package since we
never actually use that functionality, there are other ways to customise
packaging. The patch would be:

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index 7e1f3f0..856858c 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -1065,7 +1065,7 @@ PACKAGEFUNCS ?= "perform_packagecopy \
                package_depchains \
                emit_pkgdata"
 
-python package_do_package () {
+python do_package () {
        packages = (bb.data.getVar('PACKAGES', d, True) or "").split()
        if len(packages) < 1:
                bb.debug(1, "No packages to build, skipping do_package")
@@ -1110,8 +1110,6 @@ do_package_write[noexec] = "1"
 do_build[recrdeptask] += "do_package_write"
 addtask package_write before do_build after do_package
 
-EXPORT_FUNCTIONS do_package do_package_write
-
 #
 # Helper functions for the package writing classes
 #



