Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3E68E0079A; Tue, 29 Jul 2014 23:05:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B838EE006F1
	for <poky@yoctoproject.org>; Tue, 29 Jul 2014 23:05:45 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id at1so907449iec.30
	for <poky@yoctoproject.org>; Tue, 29 Jul 2014 23:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Du+rgafDkUnAVoJoBjgxEwGgVRhbgnO6Qu7gpcOJ1gw=;
	b=tzRfVzre+/aoLn+f0tnXgsh8zQqiVpMqEfh+qM63yHHkA6Q1U1SEroWglqX6nGX4hl
	d3XbZjpddo7TQ+hflz6V++SultZzlmA2Jpu8sxyl6/jArJpH62FonzK+YzXUeVPb6loc
	rh4o+TmcHLFRpzzi5xYG5uFM4OL630kO63vRZMpDFw0oFbGWAcFSj8aZqPAm+u5nnpg4
	pXb3NNIkHHxyJ7KdI9Zln9i+o9SDPKhVCKTaZkFACXqm0oF1KmQpwLNkhRXMC2mLtLdT
	MDSnsLRmG71xJiOXL2n5PdFZUIZ/qTcamXhiY5ygOl1ztTaZOD2Qers/XEbcn+a0aLad
	myDA==
X-Received: by 10.50.134.136 with SMTP id pk8mr50821478igb.20.1406700345144;
	Tue, 29 Jul 2014 23:05:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Tue, 29 Jul 2014 23:05:15 -0700 (PDT)
In-Reply-To: <1406699656.22364.4.camel@localhost.localdomain>
References: <1406699656.22364.4.camel@localhost.localdomain>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 29 Jul 2014 23:05:15 -0700
Message-ID: <CAMKF1sqxDEZR48gWTdbw2u+bsim9JXdYTOMC8QF=Lrs1oQRoxw@mail.gmail.com>
To: Patrice B <pbfwdlist@gmail.com>
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
X-List-Received-Date: Wed, 30 Jul 2014 06:05:49 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 29, 2014 at 10:54 PM, Patrice B <pbfwdlist@gmail.com> wrote:
> This patch fixes a major bug in fuser that makes it behave as if -M
> option is always used ( http://bugs.debian.org/740275 ). Hoping the
> patches is correctly done...
>
> Signed-off-by: Patrice Bouchand <pbfwdlist at gmail.com>

why spaces in email address ?

>
> ---
>  ...001-Typo-in-fuser-makes-M-on-all-the-time.patch | 44 ++++++++++++++++++++++
>  meta/recipes-extended/psmisc/psmisc_22.21.bb       |  2 +
>  2 files changed, 46 insertions(+)
>  create mode 100644 meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-all-the-time.patch
>
> diff --git a/meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-all-the-time.patch b/meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-all-the-time.patch
> new file mode 100644
> index 0000000..3a4c9a9
> --- /dev/null
> +++ b/meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-all-the-time.patch
> @@ -0,0 +1,44 @@
> +From 3638cc55b4d08851faba46635d737b24d016665b Mon Sep 17 00:00:00 2001
> +From: Brad Jorsch <anomie@users.sourceforge.net>
> +Date: Fri, 28 Feb 2014 21:55:02 +1100
> +Subject: [PATCH] Typo in fuser makes -M on all the time
> +
> +Brad found that fuser had the -M option on all the time.
> +A simple but significant typo caused this, thanks the the patch.
> +
> +Bug-Debian: http://bugs.debian.org/740275
> +
> +Signed-off-by: Craig Small <csmall@enc.com.au>
> +---
> + ChangeLog   | 4 ++++
> + src/fuser.c | 2 +-
> + 2 files changed, 5 insertions(+), 1 deletion(-)
> +
> +diff --git a/ChangeLog b/ChangeLog
> +index fd1cccf..e5f784c 100644
> +--- a/ChangeLog
> ++++ b/ChangeLog
> +@@ -1,3 +1,7 @@
> ++Changes in 22.22
> ++================
> ++      * Fixed typo in fuser which has -M on Debian #740275
> ++
> + Changes in 22.21
> + ================
> +       * Missing comma in fuser(1) added Debian #702391
> +diff --git a/src/fuser.c b/src/fuser.c
> +index b485f65..389b302 100644
> +--- a/src/fuser.c
> ++++ b/src/fuser.c
> +@@ -1174,7 +1174,7 @@ int main(int argc, char *argv[])
> +               usage(_("No process specification given"));
> +
> +       /* Check if -M flag was used and if so check mounts */
> +-      if (opts * OPT_ISMOUNTPOINT) {
> ++      if (opts & OPT_ISMOUNTPOINT) {
> +           check_mountpoints(&mounts, &names_head, &names_tail);
> +       }
> +
> +--
> +1.8.4.2
> +
> diff --git a/meta/recipes-extended/psmisc/psmisc_22.21.bb b/meta/recipes-extended/psmisc/psmisc_22.21.bb
> index 22f65c5..9f328bb 100644
> --- a/meta/recipes-extended/psmisc/psmisc_22.21.bb
> +++ b/meta/recipes-extended/psmisc/psmisc_22.21.bb
> @@ -4,3 +4,5 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
>
>  SRC_URI[md5sum] = "935c0fd6eb208288262b385fa656f1bf"
>  SRC_URI[sha256sum] = "97323cad619210845b696d7d722c383852b2acb5c49b5b0852c4f29c77a8145a"
> +
> +SRC_URI += "file://0001-Typo-in-fuser-makes-M-on-all-the-time.patch"


Move SRC_URI += above SRC_URI[md5sum]

