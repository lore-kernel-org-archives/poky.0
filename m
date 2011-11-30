Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13935E0072A
	for <poky@pokylinux.org>; Wed, 30 Nov 2011 05:28:00 -0800 (PST)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1RVkCc-0005cy-9M
	for poky@pokylinux.org; Wed, 30 Nov 2011 14:27:58 +0100
Received: from ppp089210188069.dsl.hol.gr ([89.210.188.69])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 30 Nov 2011 14:27:58 +0100
Received: from gmane by ppp089210188069.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 30 Nov 2011 14:27:58 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 30 Nov 2011 15:27:41 +0200
Organization: Reliable Embedded Systems
Message-ID: <4ED62F4D.2090706@reliableembeddedsystems.com>
References: <4CECEF5D.2040702@mlbassoc.com>
	<4CECF7F0.3080303@mlbassoc.com>	<1290599248.2799.16.camel@scimitar>
	<4CED06A9.8060806@mlbassoc.com> <1290961157.27143.348.camel@rex>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp089210188069.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <1290961157.27143.348.camel@rex>
Cc: public-poky-EtnWKYl6rD/WsZ/bQMPhNw@lo.gmane.org,
	Gary Thomas <public-gary-kIKI1E8EpGZWk0Htik3J/w@lo.gmane.org>
Subject: Re: bitbake package-index broken?
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 30 Nov 2011 13:28:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 11/28/2010 06:19 PM, Richard Purdie wrote:
>> Done - bug #544
>
> I've a fix I'll push shortly. The reason was that we marked do_build as
> noexec and package-index did all its work in do_build. The updates
> changes this and marks more tasks in that recipe as noexec to make
> things more efficient.
>
> Cheers,
>
> Richard

I use edison-6.0 for arm and package-index does not work as well.

BB_VERSION        = "1.13.3"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.1"
TUNE_FEATURES     = "armv7a vfp neon cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        =
"edison-6.0_LOCAL:1924f52cc894d4dd6b9d9c1a2248b32fc0a24c8c"

...

| + '[' -e /work/rber/poky-edison-6.0/tmp/deploy/rpm/any/ ']'
| + for pkgdir in '$packagedirs'
| + '[' -e /work/rber/poky-edison-6.0/tmp/deploy/rpm/all/ ']'
| + echo 'Generating solve db for
/work/rber/poky-edison-6.0/tmp/deploy/rpm/all...'
| Generating solve db for /work/rber/poky-edison-6.0/tmp/deploy/rpm/all...
| + echo /work/rber/poky-edison-6.0/tmp/deploy/rpm/all/solvedb
| + '[' -d /work/rber/poky-edison-6.0/tmp/deploy/rpm/all/solvedb ']'
| + mkdir -p /work/rber/poky-edison-6.0/tmp/deploy/rpm/all/solvedb
| + echo '# Dynamically generated solve manifest'
| + find /work/rber/poky-edison-6.0/tmp/deploy/rpm/all -maxdepth 1 -type f
| + rpm -i --replacepkgs --replacefiles --oldpackage -D '_dbpath
/work/rber/poky-edison-6.0/tmp/deploy/rpm/all/solvedb' --justdb --noaid
--ERROR: Function 'do_package_index' failed (see
/work/rber/poky-edison-6.0/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/package-index-1.0-r0/temp/log.do_package_index.19108
for further information)
| nodeps --noorder --noscripts --notriggers --noparentdirs --nolinktos
--stats --ignoresize --nosignature --nodigest -D '__dbi_txn create
nofsync' /work/rber/poky-edison-6.0/tmp/deploy/rpm/all/solvedb/manifest
|    total:               1      0.000000 MB      0.100765 secs
|    fingerprint:        87      0.003250 MB      0.001950 secs
|    install:            29      0.000000 MB      0.047942 secs
|    dbadd:              29      0.000000 MB      0.046870 secs
|    dbget:             578      0.000000 MB      0.000258 secs
|    dbput:              29      0.250688 MB      0.038620 secs
|    readhdr:           291      0.502176 MB      0.000617 secs
|    hdrload:           145      0.746272 MB      0.001261 secs
|    hdrget:           4794      0.000000 MB      0.002301 secs
| + createrepo /work/rber/poky-edison-6.0/tmp/deploy/rpm
| Traceback (most recent call last):
|   File
"/work/rber/poky-edison-6.0/tmp/sysroots/i686-linux/usr/share/createrepo/genpkgmetadata.py",
line 26, in <module>
|     import rpm
| ImportError: No module named rpm
NOTE: package package-index-1.0-r0: task do_package_index: Failed
ERROR: Task 8 (/work/rber/poky/meta/recipes-core/meta/package-index.bb,
do_package_index) failed with exit code '1'
ERROR: '/work/rber/poky/meta/recipes-core/meta/package-index.bb' failed


I tried to apply your patch:

diff --git a/meta/recipes-core/meta/package-index.bb
b/meta/recipes-core/meta/package-index.bb
index bf3922f..dfb4c1b 100644
--- a/meta/recipes-core/meta/package-index.bb
+++ b/meta/recipes-core/meta/package-index.bb
@@ -19,11 +19,12 @@ do_package_write_deb[noexec] = "1"
 do_populate_sysroot[noexec] = "1"

 do_package_index[nostamp] = "1"
-do_package_index[depends] += "${PACKAGEINDEXDEPS}"
+do_package_index[depends] += "${DEPLOY_DIR_IPK}"
+

 do_package_index() {
        set -ex
-       ${PACKAGEINDEXES}
+       package_update_index_ipk
        set +ex
 }
 addtask do_package_index before do_build


But this does not work as well:

Loading cache...done.
Loaded 1036 entries from dependency cache.
Parsing recipes...done.
Parsing of 795 .bb files complete (794 cached, 1 parsed). 1035 targets,
36 skipped, 0 masked, 0 errors.
ERROR: Error for
/work/rber/poky/meta/recipes-core/meta/package-index.bb, dependency
/work/rber/poky-edison-6.0/tmp/deploy/ipk does not contain ':' character
. Task 'depends' should be specified in the form 'packagename:task'
ERROR: Command execution failed: Exited with 1


Is there a patch against Edison 6.0 to make package-index work?

Regards,

Robert..."If Java had true garbage collection, most programs would
delete themselves upon execution." - Robert Sewell

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



