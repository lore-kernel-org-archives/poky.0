Return-Path: <pbfwdlist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A76F7E006F1; Tue, 29 Jul 2014 23:16:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HK_RANDOM_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HK_RANDOM_FROM From username looks random
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pbfwdlist[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AE50E003FA
	for <poky@yoctoproject.org>; Tue, 29 Jul 2014 23:16:36 -0700 (PDT)
Received: by mail-wg0-f42.google.com with SMTP id l18so653184wgh.25
	for <poky@yoctoproject.org>; Tue, 29 Jul 2014 23:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:content-type:mime-version:content-transfer-encoding;
	bh=XigFyNQv7nhzniWT+w5JEnp07xNYSA+pQpCxx7G4eGA=;
	b=n1XNpOcAGzIAi7KutOdXMovlRkuxAkbp5yYa3ValwVDHQN+s7eFuba97ub2ZgLKH0z
	Kjx/PPzwPlDkdzbffeA52DHMfBdLGDAvCMFISnnS8/FHvkYYjwFqNvqn/S0YTf6LiuOV
	SY8DhfxnympFJqoEpA688/A0pCNGKt91/tlE1+Edi+xfOKZ56jC1NJ/JlctkTAOSub+j
	HF+ewXjRuUy1lEXxoKcfZjhysSryGLujNTAfmRbWoEzO1mmuitfBQVNEMlAO73mNwaI7
	sVlE093dUVLhhQo98pMzNNvyKg1AYVLX934duxbtbzpcODlFpb5nFBrJ7FNOFoF/fi7Z
	vNEg==
X-Received: by 10.180.87.231 with SMTP id bb7mr2732349wib.63.1406700995053;
	Tue, 29 Jul 2014 23:16:35 -0700 (PDT)
Received: from [127.0.0.1] (laf42-1-88-166-73-101.fbx.proxad.net.
	[88.166.73.101]) by mx.google.com with ESMTPSA id
	je17sm51652662wic.22.2014.07.29.23.16.33 for <multiple recipients>
	(version=SSLv3 cipher=RC4-SHA bits=128/128);
	Tue, 29 Jul 2014 23:16:34 -0700 (PDT)
Message-ID: <1406700986.26845.1.camel@localhost.localdomain>
From: Patrice B <pbfwdlist@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Jul 2014 08:16:26 +0200
In-Reply-To: <CAMKF1sqxDEZR48gWTdbw2u+bsim9JXdYTOMC8QF=Lrs1oQRoxw@mail.gmail.com>
References: <1406699656.22364.4.camel@localhost.localdomain>
	<CAMKF1sqxDEZR48gWTdbw2u+bsim9JXdYTOMC8QF=Lrs1oQRoxw@mail.gmail.com>
X-Mailer: Evolution 3.4.4 (3.4.4-2.fc17) 
Mime-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 30 Jul 2014 06:16:41 -0000
Content-Type: text/plain; charset="ISO-8859-15"
Content-Transfer-Encoding: 8bit

I'm not an expert in patch submission. Regarding the previous patch
proposal in this list, I thought it was what should be done ?

(sorry for sending twice, I forgot to copy the list)


Le mardi 29 juillet 2014 à 23:05 -0700, Khem Raj a écrit :
> On Tue, Jul 29, 2014 at 10:54 PM, Patrice B <pbfwdlist@gmail.com> wrote:
> > This patch fixes a major bug in fuser that makes it behave as if -M
> > option is always used ( http://bugs.debian.org/740275 ). Hoping the
> > patches is correctly done...
> >
> > Signed-off-by: Patrice Bouchand <pbfwdlist at gmail.com>
> 
> why spaces in email address ?
> 
> >
> > ---
> >  ...001-Typo-in-fuser-makes-M-on-all-the-time.patch | 44 ++++++++++++++++++++++
> >  meta/recipes-extended/psmisc/psmisc_22.21.bb       |  2 +
> >  2 files changed, 46 insertions(+)
> >  create mode 100644 meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-all-the-time.patch
> >
> > diff --git a/meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-all-the-time.patch b/meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-all-the-time.patch
> > new file mode 100644
> > index 0000000..3a4c9a9
> > --- /dev/null
> > +++ b/meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-all-the-time.patch
> > @@ -0,0 +1,44 @@
> > +From 3638cc55b4d08851faba46635d737b24d016665b Mon Sep 17 00:00:00 2001
> > +From: Brad Jorsch <anomie@users.sourceforge.net>
> > +Date: Fri, 28 Feb 2014 21:55:02 +1100
> > +Subject: [PATCH] Typo in fuser makes -M on all the time
> > +
> > +Brad found that fuser had the -M option on all the time.
> > +A simple but significant typo caused this, thanks the the patch.
> > +
> > +Bug-Debian: http://bugs.debian.org/740275
> > +
> > +Signed-off-by: Craig Small <csmall@enc.com.au>
> > +---
> > + ChangeLog   | 4 ++++
> > + src/fuser.c | 2 +-
> > + 2 files changed, 5 insertions(+), 1 deletion(-)
> > +
> > +diff --git a/ChangeLog b/ChangeLog
> > +index fd1cccf..e5f784c 100644
> > +--- a/ChangeLog
> > ++++ b/ChangeLog
> > +@@ -1,3 +1,7 @@
> > ++Changes in 22.22
> > ++================
> > ++      * Fixed typo in fuser which has -M on Debian #740275
> > ++
> > + Changes in 22.21
> > + ================
> > +       * Missing comma in fuser(1) added Debian #702391
> > +diff --git a/src/fuser.c b/src/fuser.c
> > +index b485f65..389b302 100644
> > +--- a/src/fuser.c
> > ++++ b/src/fuser.c
> > +@@ -1174,7 +1174,7 @@ int main(int argc, char *argv[])
> > +               usage(_("No process specification given"));
> > +
> > +       /* Check if -M flag was used and if so check mounts */
> > +-      if (opts * OPT_ISMOUNTPOINT) {
> > ++      if (opts & OPT_ISMOUNTPOINT) {
> > +           check_mountpoints(&mounts, &names_head, &names_tail);
> > +       }
> > +
> > +--
> > +1.8.4.2
> > +
> > diff --git a/meta/recipes-extended/psmisc/psmisc_22.21.bb b/meta/recipes-extended/psmisc/psmisc_22.21.bb
> > index 22f65c5..9f328bb 100644
> > --- a/meta/recipes-extended/psmisc/psmisc_22.21.bb
> > +++ b/meta/recipes-extended/psmisc/psmisc_22.21.bb
> > @@ -4,3 +4,5 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
> >
> >  SRC_URI[md5sum] = "935c0fd6eb208288262b385fa656f1bf"
> >  SRC_URI[sha256sum] = "97323cad619210845b696d7d722c383852b2acb5c49b5b0852c4f29c77a8145a"
> > +
> > +SRC_URI += "file://0001-Typo-in-fuser-makes-M-on-all-the-time.patch"
> 
> 
> Move SRC_URI += above SRC_URI[md5sum]



