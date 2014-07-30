Return-Path: <pbfwdlist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACFEDE00837; Wed, 30 Jul 2014 05:58:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HK_RANDOM_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HK_RANDOM_FROM From username looks random
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pbfwdlist[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0A43E007B5
	for <poky@yoctoproject.org>; Wed, 30 Jul 2014 05:58:37 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id f8so6985618wiw.5
	for <poky@yoctoproject.org>; Wed, 30 Jul 2014 05:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:content-type:mime-version:content-transfer-encoding;
	bh=xHtFF7HYdnftyeps5i1Z/O64bOR0gdFKiDo5CBLdHr0=;
	b=vEAqgB5goJdB7XAGd9xrINaZ0xeG1tcHtZ507Wzl1QCxfKBYYBFSbRAPDDtDWrAYDN
	dj+eWyF81uGX3fEaI9FQldDFxzxf+Mxp3LtdGPfYaSMLlOXZu9N16cT5hkMIdUPj6qB2
	QByEq9suBgVAdw+uIoR2irY2n2i/r1sjQ9ByRxxt6O/O3XEdXpgp/7w9SsRvq98phksI
	mNb8QAjz4vBM/XhKBbrODZnd87gZDpsHh3Jt50syVrMZRb1i0/z5DVWdYQqQm3Gddx/c
	YXE87ExOLRb/F+mc4EZVYthR+9FTZCXuiPi8kJQ29Su0FkPz+bPQ8lCmi5byUZNE77wF
	RNew==
X-Received: by 10.194.158.164 with SMTP id wv4mr6045417wjb.124.1406725115223; 
	Wed, 30 Jul 2014 05:58:35 -0700 (PDT)
Received: from [127.0.0.1] (laf42-1-88-166-73-101.fbx.proxad.net.
	[88.166.73.101])
	by mx.google.com with ESMTPSA id gc8sm9469754wic.3.2014.07.30.05.58.33
	for <multiple recipients>
	(version=SSLv3 cipher=RC4-SHA bits=128/128);
	Wed, 30 Jul 2014 05:58:34 -0700 (PDT)
Message-ID: <1406725112.31179.13.camel@localhost.localdomain>
From: Patrice B <pbfwdlist@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 30 Jul 2014 14:58:32 +0200
In-Reply-To: <20140730081336.GJ16445@jama>
References: <1406699656.22364.4.camel@localhost.localdomain>
	<53D8A01F.9020305@linux.intel.com> <20140730081336.GJ16445@jama>
X-Mailer: Evolution 3.4.4 (3.4.4-2.fc17) 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] Add patch 0001-Typo-in-fuser-makes-M-on-all-the-time.patch
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 30 Jul 2014 12:58:41 -0000
Content-Type: text/plain; charset="ISO-8859-15"
Content-Transfer-Encoding: 8bit

Thanks for your advices. I tried to improve my patch and submitted it to
openembedded-core list:

http://lists.openembedded.org/pipermail/openembedded-core/2014-July/095107.html

  Regards.

   Patrice 

Le mercredi 30 juillet 2014 à 10:13 +0200, Martin Jansa a écrit :
> On Wed, Jul 30, 2014 at 12:34:55AM -0700, Saul Wold wrote:
> > 
> > This patch should be sent to openembedded-core@
> 
> and with better subject, something like
> 
> psmisc: fix fuser -M
> 
> > On 07/29/2014 10:54 PM, Patrice B wrote:
> > > This patch fixes a major bug in fuser that makes it behave as if -M
> > > option is always used ( http://bugs.debian.org/740275 ). Hoping the
> > > patches is correctly done...
> > >
> > > Signed-off-by: Patrice Bouchand <pbfwdlist at gmail.com>
> > >
> > > ---
> > >   ...001-Typo-in-fuser-makes-M-on-all-the-time.patch | 44 ++++++++++++++++++++++
> > >   meta/recipes-extended/psmisc/psmisc_22.21.bb       |  2 +
> > >   2 files changed, 46 insertions(+)
> > >   create mode 100644 meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-all-the-time.patch
> > >
> > > diff --git a/meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-all-the-time.patch b/meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-all-the-time.patch
> > > new file mode 100644
> > > index 0000000..3a4c9a9
> > > --- /dev/null
> > > +++ b/meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-all-the-time.patch
> > > @@ -0,0 +1,44 @@
> > > +From 3638cc55b4d08851faba46635d737b24d016665b Mon Sep 17 00:00:00 2001
> > > +From: Brad Jorsch <anomie@users.sourceforge.net>
> > > +Date: Fri, 28 Feb 2014 21:55:02 +1100
> > > +Subject: [PATCH] Typo in fuser makes -M on all the time
> > > +
> > > +Brad found that fuser had the -M option on all the time.
> > > +A simple but significant typo caused this, thanks the the patch.
> > > +
> > > +Bug-Debian: http://bugs.debian.org/740275
> > > +
> > > +Signed-off-by: Craig Small <csmall@enc.com.au>
> > 
> > This needs an Upstream-Status: Backport?
> > > +---
> > > + ChangeLog   | 4 ++++
> > > + src/fuser.c | 2 +-
> > > + 2 files changed, 5 insertions(+), 1 deletion(-)
> > > +
> > > +diff --git a/ChangeLog b/ChangeLog
> > > +index fd1cccf..e5f784c 100644
> > > +--- a/ChangeLog
> > > ++++ b/ChangeLog
> > > +@@ -1,3 +1,7 @@
> > > ++Changes in 22.22
> > > ++================
> > > ++	* Fixed typo in fuser which has -M on Debian #740275
> > > ++
> > > + Changes in 22.21
> > > + ================
> > > + 	* Missing comma in fuser(1) added Debian #702391
> > > +diff --git a/src/fuser.c b/src/fuser.c
> > > +index b485f65..389b302 100644
> > > +--- a/src/fuser.c
> > > ++++ b/src/fuser.c
> > > +@@ -1174,7 +1174,7 @@ int main(int argc, char *argv[])
> > > + 		usage(_("No process specification given"));
> > > +
> > > + 	/* Check if -M flag was used and if so check mounts */
> > > +-	if (opts * OPT_ISMOUNTPOINT) {
> > > ++	if (opts & OPT_ISMOUNTPOINT) {
> > > + 	    check_mountpoints(&mounts, &names_head, &names_tail);
> > > + 	}
> > > +
> > > +--
> > > +1.8.4.2
> > > +
> > > diff --git a/meta/recipes-extended/psmisc/psmisc_22.21.bb b/meta/recipes-extended/psmisc/psmisc_22.21.bb
> > > index 22f65c5..9f328bb 100644
> > > --- a/meta/recipes-extended/psmisc/psmisc_22.21.bb
> > > +++ b/meta/recipes-extended/psmisc/psmisc_22.21.bb
> > > @@ -4,3 +4,5 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
> > >
> > >   SRC_URI[md5sum] = "935c0fd6eb208288262b385fa656f1bf"
> > >   SRC_URI[sha256sum] = "97323cad619210845b696d7d722c383852b2acb5c49b5b0852c4f29c77a8145a"
> > > +
> > > +SRC_URI += "file://0001-Typo-in-fuser-makes-M-on-all-the-time.patch"
> > >
> > -- 
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> 



