Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 26F6C4C80227
	for <poky@yoctoproject.org>; Tue,  5 Jul 2011 18:33:19 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p65NXEN0008025;
	Wed, 6 Jul 2011 00:33:14 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 07912-02; Wed,  6 Jul 2011 00:33:10 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p65NX8nb008019
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 6 Jul 2011 00:33:09 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <4E139CE5.4070102@linux.intel.com>
References: <cover.1309412032.git.xiaofeng.yan@windriver.com>
	<b5b0312005639c617b40ce2c0f6860eb08ba28a8.1309412032.git.xiaofeng.yan@windriver.com>
	<1309878836.20015.720.camel@rex>  <4E139CE5.4070102@linux.intel.com>
Date: Wed, 06 Jul 2011 00:32:36 +0100
Message-ID: <1309908756.20015.755.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] poky-lsb: Change provider of virtual/libx11 to libx11-trim
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
X-List-Received-Date: Tue, 05 Jul 2011 23:33:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-07-05 at 16:23 -0700, Saul Wold wrote:
> On 07/05/2011 08:13 AM, Richard Purdie wrote:
> > On Fri, 2011-07-01 at 17:36 +0800, Xiaofeng Yan wrote:
> >> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
> >>
> >> BUG 1196 reports  compilation error like the following information from package startup-notification  when the provider of virtual/libx11 was libx11
> >> | configure: error: Cannot find x11-xcb
> >> | ERROR: oe_runconf failed
> >> | ERROR: Function 'do_configure' failed (see
> >>
> >> Fix [BUGID #1196]
> >> Signed-off-by: Xiaofeng Yan<xiaofeng.yan@windriver.com>
> >> ---
> >>   meta-yocto/conf/distro/poky-lsb.conf |    2 +-
> >>   1 files changed, 1 insertions(+), 1 deletions(-)
> >>
> >> diff --git a/meta-yocto/conf/distro/poky-lsb.conf b/meta-yocto/conf/distro/poky-lsb.conf
> >> index 49d12da..5385012 100644
> >> --- a/meta-yocto/conf/distro/poky-lsb.conf
> >> +++ b/meta-yocto/conf/distro/poky-lsb.conf
> >> @@ -4,6 +4,6 @@ DISTRO = "poky-lsb"
> >>   DISTROOVERRIDES = "poky:linuxstdbase"
> >>
> >>   DISTRO_FEATURES_append = " pam largefile"
> >> -PREFERRED_PROVIDER_virtual/libx11 = "libx11"
> >> +PREFERRED_PROVIDER_virtual/libx11 = "libx11-trim"
> >>
> >
> > This looks like a backwards step. Why is libx11 not pulling in xcb as I
> > suspect it should be...
>
> The x11-xcb, seems to be part of libx11-trim, so possibly creating a new 
> recipe that that peels x11-xcb from libx11-trim is possibly another 
> approach. The xcb packages don't seem to provide x11-xcb directly.

Er, ok...

libx11, libx11-trim and libx11-diet are three different variants of the
same libx11 recipe that vary in the options they enable/disable.

Reading the comments for -trim it says "Support for XCB disabled in this
version" and then goes on to enable it. Basically anything in trim
should also be in libx11 so we should probably enable XCB there too.

IIRC, someone told me XCB was mandatory now so I'm a little surprised
the libx11 recipe works at all tbh.

I also gather -diet might be broken to the point of being unusable
now :/. This whole area needs a rethink in the light of DISTRO_FEATURES
really.

Short term, the correct patch is likely one to enable XCB for libx11...

Cheers,

Richard



