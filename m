Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E7A9E013BA
	for <poky@yoctoproject.org>; Tue, 17 Apr 2012 09:19:58 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3HGJuUW015787;
	Tue, 17 Apr 2012 17:19:56 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15326-05; Tue, 17 Apr 2012 17:19:52 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3HGJlNj015780
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 17 Apr 2012 17:19:48 +0100
Message-ID: <1334679589.616.106.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 17 Apr 2012 17:19:49 +0100
In-Reply-To: <4F8D934D.9070704@mlbassoc.com>
References: <4F8493BB.5070400@mlbassoc.com> <1334100422.10826.99.camel@ted>
	<4F84CCE3.1060504@mlbassoc.com> <4F84E00D.7030302@mlbassoc.com>
	<4F8D5F61.1010002@mlbassoc.com> <1334674913.616.98.camel@ted>
	<4F8D8A73.3030408@mlbassoc.com> <1334677494.616.101.camel@ted>
	<4F8D934D.9070704@mlbassoc.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: SRC checksum checking broken
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
X-List-Received-Date: Tue, 17 Apr 2012 16:19:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-04-17 at 09:59 -0600, Gary Thomas wrote:
> On 2012-04-17 09:44, Richard Purdie wrote:
> > On Tue, 2012-04-17 at 09:21 -0600, Gary Thomas wrote:
> >> On 2012-04-17 09:01, Richard Purdie wrote:
> >>> On Tue, 2012-04-17 at 06:17 -0600, Gary Thomas wrote:
> >>>> On 2012-04-10 19:36, Gary Thomas wrote:
> >>>> This is still broken, both in master (04d6aa1) and 1.2_M4.rc4 (4d9f4d6)
> >>>> Filed as https://bugzilla.yoctoproject.org/show_bug.cgi?id=2311
> >>>
> >>> Does this help?:
> >>>
> >>> bitbake/fetch2: Ensure directly mirrored files have their checksum validated
> >>>
> >>> Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
> >>> ---
> >>> diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
> >>> index 414cc2b..e36d3ec 100644
> >>> --- a/bitbake/lib/bb/fetch2/__init__.py
> >>> +++ b/bitbake/lib/bb/fetch2/__init__.py
> >>> @@ -477,7 +477,10 @@ def try_mirrors(d, origud, mirrors, check = False):
> >>>                if not os.path.exists(ud.donestamp) or ud.method.need_update(newuri, ud, ld):
> >>>                    ud.method.download(newuri, ud, ld)
> >>>                    if os.path.exists(ud.localpath):
> >>> -                    open(ud.donestamp, 'w').close()
> >>> +                    if ud.localpath == origud.localpath:
> >>> +                        update_stamp(newuri, origud, ld)
> >>> +                    else:
> >>> +                        open(ud.donestamp, 'w').close()
> >>>                        if hasattr(ud.method,"build_mirror_data"):
> >>>                            ud.method.build_mirror_data(newuri, ud, ld)
> >>
> >> It does fix the case when using DL_DIR, but own-mirrors is still broken.
> >> Note: both used to work correctly.
> >
> > Can you give more details of the configuration please? Is this using
> > file:// urls?
> 
> Here's what I use.  I've not tried any other transport method:
>    SOURCE_MIRROR_URL ?= "file:///work/misc/Poky/sources/"
>    INHERIT += "own-mirrors"

Part of me wants to argue that its not expected to check checksums for
file:// urls, as indicated for example by the code:

def verify_checksum(u, ud, d):
    [...]
    if not ud.type in ["http", "https", "ftp", "ftps"]:
        return

but I can see a case for wanting to check the checksums I guess.

Perhaps this will work better?

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 414cc2b..329b5bc 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -477,7 +477,6 @@ def try_mirrors(d, origud, mirrors, check = False):
             if not os.path.exists(ud.donestamp) or ud.method.need_update(newuri, ud, ld):
                 ud.method.download(newuri, ud, ld)
                 if os.path.exists(ud.localpath):
-                    open(ud.donestamp, 'w').close()
                     if hasattr(ud.method,"build_mirror_data"):
                         ud.method.build_mirror_data(newuri, ud, ld)
 
@@ -492,12 +491,14 @@ def try_mirrors(d, origud, mirrors, check = False):
             dldir = ld.getVar("DL_DIR", True)
             if os.path.basename(ud.localpath) != os.path.basename(origud.localpath):
                 dest = os.path.join(dldir, os.path.basename(ud.localpath))
+                open(ud.donestamp, 'w').close()
                 if not os.path.exists(dest):
                     os.symlink(ud.localpath, dest)
                 return None
             # Otherwise the result is a local file:// and we symlink to it
             if not os.path.exists(origud.localpath):
                  os.symlink(ud.localpath, origud.localpath)
+            update_stamp(newuri, origud, ld)
             return ud.localpath
 
         except bb.fetch2.NetworkAccess:


Cheers,

Richard




