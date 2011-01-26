Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E44B4C811AA
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 02:21:55 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Jan 2011 00:21:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,379,1291622400"; d="scan'208";a="700770873"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 26 Jan 2011 00:21:54 -0800
Date: Wed, 26 Jan 2011 16:25:30 +0800
From: Yu Ke <ke.yu@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Message-ID: <20110126082530.GA31432@kyu3-hedt>
References: <cover.1295371995.git.ke.yu@intel.com>
	<8dfcbdd661ed90787b9680ea1bcdae45c4372a67.1295371995.git.ke.yu@intel.com>
	<1295978833.14388.50360.camel@rex>
	<AANLkTi=g9Z6c3PSLa=7JUtRS1xbh8KDMOgoBZao2Z24Z@mail.gmail.com>
	<20110126044110.GB15143@kyu3-hedt>
	<AANLkTi=8epiNj3D6yJM5uLJ-GCd0NAxdnxsgzFTpUtXi@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <AANLkTi=8epiNj3D6yJM5uLJ-GCd0NAxdnxsgzFTpUtXi@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 10/11] bb.fetch2: add git unpack
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
X-List-Received-Date: Wed, 26 Jan 2011 08:21:56 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Jan 25, 23:43, Bruce Ashfield wrote:
> On Tue, Jan 25, 2011 at 11:41 PM, Yu Ke <ke.yu@intel.com> wrote:
> > "git clone" is my first try when cooking the patch, unfortunately I meet one issue here. the git clone target dir is ${WORKDIR}, while git requires the target dir to be empty, which is not true for ${WORKDIR}, so git clone will fail. so I fall back to cp approach.
> >
> > But I agree that git clone is better. So I'd like use this apprach: git clone to {WORKDIR}/git/, and modify the kernel-yocto.bbclass:do_kernel_checkout() to use the new layout.
> > I will revise the patch accordingly for review.
> > Regards
> > Ke
> 
> This may be problematic. The kernel checkout needs to be done in a very
> specific way. After the clone, you must have all branches local (no origin/)
> and in the 'linux' directory. There are other tools that depend on
> this particular
> layout.
> 
> The most efficient way to do this has proven to be to do a bare clone
> and then forcibly convert it to a non-bare clone. That gets you the
> instantiation
> and local branches in a single clone + minor fix ups to the directory.
> 
> Just some things to consider, I'll wait to see the patches before commenting
> further.
> 
> Bruce

Bruce, thanks for the comments. You are right. I realize that kernel checkout need to output a specific layout, so I only change the input layout of kernel checkout. more specificly, change the input dir from ${WORKDIR}/.git to ${WORKDIR}/git/.git. and the output layout is unchanged.

please see if the revised patch works for you:

git unpack patch - http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=kyu3/git-unpack&id=e654e3d75550282c4d112f1050465cde850c93e9

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 08daa20..eadbf33 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -194,6 +194,31 @@ class Git(Fetch):
         os.chdir(ud.clonedir)
         bb.utils.prunedir(codir)
 
+    def unpack(self, ud, destdir, d):
+        """ unpack the downloaded src to destdir"""
+
+        subdir = ud.parm.get("subpath", "")
+        if subdir != "":
+            readpathspec = ":%s" % (subdir)
+        else:
+            readpathspec = ""
+
+        destdir = os.path.join(destdir, "git/")
+        if os.path.exists(destdir):
+            bb.utils.prunedir(destdir)
+
+        if 'fullclone' in ud.parm:
+            runfetchcmd("git clone -l -n %s %s" % (ud.clonedir, destdir), d)
+            if os.path.exists("%s/.git/refs/remotes/origin" % ud.clonedir):
+                runfetchcmd("cp -af %s/.git/refs/remotes/origin/* %s/.git/refs/remotes/origin/" %(ud.clonedir, destdir), d)
+            if os.path.exists("%s/.git/packed-refs" % ud.clonedir):
+                runfetchcmd("cp -af %s/.git/packed-refs %s/.git/" %(ud.clonedir, destdir), d)
+        else:
+            os.chdir(ud.clonedir)
+            runfetchcmd("%s read-tree %s%s" % (ud.basecmd, ud.tag, readpathspec), d)
+            runfetchcmd("%s checkout-index -q -f --prefix=%s -a" % (ud.basecmd, destdir), d)
+        return True
+
     def supports_srcrev(self):
         return True

kernel checkout patch - http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=kyu3/git-unpack&id=b1916da1f1a8b7e3c4b50d540918aa72be704d9a

diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
index 8479b39..ca1fb15 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -89,11 +89,11 @@ do_patch() {
 }

 do_kernel_checkout() {
-       if [ -d ${WORKDIR}/.git/refs/remotes/origin ]; then
+       if [ -d ${WORKDIR}/git/.git/refs/remotes/origin ]; then
                echo "Fixing up git directory for ${LINUX_KERNEL_TYPE}/${KMACHINE}"
                rm -rf ${S}
                mkdir ${S}
-               mv ${WORKDIR}/.git ${S}
+               mv ${WORKDIR}/git/.git ${S}

                if [ -e ${S}/.git/packed-refs ]; then
                        cd ${S}


> 
> >
> >>
> >> >
> >> > The idea would be one central checkout with the references in and then
> >> > the subcomponents would all just reference the one local clone saving
> >> > diskspace and time.
> >>
> >> Absolutely. And if someone does something to the central checkout,
> >> minor errors ensue, but that can be recovered as well.
> >>
> >> Cheers,
> >>
> >> Bruce
> >>
> >> >
> >> > Cheers,
> >> >
> >> > Richard
> >> >
> >> >
> >> >
> >> > _______________________________________________
> >> > poky mailing list
> >> > poky@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/poky
> >> >
> >>
> >>
> >>
> >> --
> >> "Thou shalt not follow the NULL pointer, for chaos and madness await
> >> thee at its end"
> >> _______________________________________________
> >> poky mailing list
> >> poky@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/poky
> >
> 
> 
> 
> -- 
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

