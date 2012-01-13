Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A40EAE0137D
	for <poky@yoctoproject.org>; Fri, 13 Jan 2012 10:11:01 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q0DIAvPp024673;
	Fri, 13 Jan 2012 18:10:57 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 24290-04; Fri, 13 Jan 2012 18:10:53 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q0DIAmsf024664
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 13 Jan 2012 18:10:49 GMT
Message-ID: <1326478252.18815.3.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 13 Jan 2012 18:10:52 +0000
In-Reply-To: <4F10619F.4080002@mlbassoc.com>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net> <4F0EE095.1090709@mlbassoc.com>
	<20120112133749.GD3452@jama.jama.net> <4F0EFD47.1070708@mlbassoc.com>
	<CAEsOVNcLNJ2iD2YANL6z2ris6kjbQ1kbky2onu8hZrNTim=P+Q@mail.gmail.com>
	<4F0F1321.8080706@mlbassoc.com>
	<CAEsOVNfC5t6p3enJdauZDSiPZxDA3MkHCwPMgqkOD8s9qyz3Zg@mail.gmail.com>
	<4F0F4B94.3020604@mlbassoc.com>
	<CABcZAN=HJjD8uq-00s0=_ho6DXRbEFHBEpF-jQQk0J=qGFFq8A@mail.gmail.com>
	<4F104C72.8010605@mlbassoc.com>
	<CAEsOVNeuCt3aqoTm_LG=8TLKZtXQwg+ptYPX8+rc1UaBkfOkDw@mail.gmail.com>
	<1326472079.15389.43.camel@ted> <4F10619F.4080002@mlbassoc.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Chris Larson <clarson@kergoth.com>, Poky Project <poky@yoctoproject.org>
Subject: Re: sstate info
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
X-List-Received-Date: Fri, 13 Jan 2012 18:11:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-01-13 at 09:53 -0700, Gary Thomas wrote:
> On 2012-01-13 09:27, Richard Purdie wrote:
> > On Fri, 2012-01-13 at 15:40 +0000, McClintock Matthew-B29882 wrote:
> >> On Fri, Jan 13, 2012 at 9:23 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
> >>>>
> >>>> You can't just override DATE in local.conf? I don't see the point in
> >>>> holding off, unless your builds will take till tomorrow to finish?
> >>>
> >>>
> >>> Actually, I didn't think of that.  I also didn't see this message
> >>> until Friday (the next day) due to some network issues, so it's moot.
> >>>
> >>> That notwithstanding, I tried it today (new DATE) and it behaved as
> >>> I would like.  The only problem was that dbus-1 is still being rebuilt.
> >>> I compared the siginfo files between the two builds and they are
> >>> identical, so I don't know why.
> >>
> >> Are the hashes the same too?
> >
> > I've found the root cause of this problem and have posted a fix on the
> > OE-Core mailing list.
> 
> Cool, I'll start testing this now :-)

I've also noticed a problem with gcc being rebuilt. It seems to be from
do_headerfix() and:

diff --git a/meta/recipes-devtools/gcc/gcc-configure-common.inc b/meta/recipes-devtools/gcc/gcc-configure-common.inc
index d014980..3a82720 100644
--- a/meta/recipes-devtools/gcc/gcc-configure-common.inc
+++ b/meta/recipes-devtools/gcc/gcc-configure-common.inc
@@ -77,6 +77,9 @@ do_headerfix () {
 
 addtask headerfix after do_unpack before do_patch
 
+CROSS_TARGET_SYS_DIR[vardepsexclude] = "PN"
+CROSS_TARGET_SYS_DIR[vardepvalue] = "1"
+
 do_configure_prepend () {
        # teach gcc to find correct target includedir when checking libc ssp support
        mkdir -p ${B}/gcc

"fixes" it. I merged the other fix but this one needs a little bit more thought. bitbake-diffsigs can also mislead:

$ ls *headerfix*
gcc-cross-4.6.2+svnr181430-r20.do_headerfix.sigdata.84c0ca9d0fc07438f453910901a222b6
gcc-cross-initial-4.6.2+svnr181430-r20.do_headerfix.sigdata.84c0ca9d0fc07438f453910901a222b6
$ bitbake-diffsigs *headerfix*
Dependency on task gcc-cross_4.6.bb.do_unpack was added
Dependency on task gcc-cross-initial_4.6.bb.do_unpack was removed

Note that the hashes are the same and these are in fact identical. The
dependency hashes *do* match and its bitbake-diffsigs that is wrong here
as the file changed names.

Cheers,

Richard



