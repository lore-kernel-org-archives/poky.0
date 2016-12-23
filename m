Return-Path: <cswarth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3665E00BAD; Thu, 22 Dec 2016 19:54:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cswarth[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.175 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.175 listed in list.dnswl.org]
Received: from mail-yw0-f175.google.com (mail-yw0-f175.google.com
	[209.85.161.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 443F3E00A48
	for <poky@yoctoproject.org>; Thu, 22 Dec 2016 19:54:53 -0800 (PST)
Received: by mail-yw0-f175.google.com with SMTP id v81so22391771ywb.2
	for <poky@yoctoproject.org>; Thu, 22 Dec 2016 19:54:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=lGlZtgzVcsfwsICsAU+jBNuKqvByF9E4/Myg4DUv5zk=;
	b=Nmsy2JIiMju1LSYrdh72giFrOBeG4F92FK6sZYfiFl9WbgPw4e8dAwSfp0LUbKaTH1
	R1nngpkoZ5+GyrUBkL5TX3Tt4OfsNi0UNqxG2/O+9YEpYkt1wlwlbRD0dHgDsMdIhk1y
	/L84HnWuJvsaiZBnskVSaasBgWjM3sM9m883YQDqs3m266XAN6pAqQEPbfTJKkTLuNOE
	ta8dbNVfUNY5G+hW7KnZGUKWFJI3Q1jp947jza5NSu64kC2QK6NBsMv84v21C99eATjW
	5gx2BZXeYBm5W67uvMSffwWXeRIynEQszUXW24kln+Tg3gVN4qm6f2gKNiJQRVgJoFFP
	iiSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=lGlZtgzVcsfwsICsAU+jBNuKqvByF9E4/Myg4DUv5zk=;
	b=oVvd10zG2r4KplzHdM4S6u4075AAxTKb6VhSqxc6oCKNgx53bXmM2jWEOawYirMHQ2
	HPQGde3Iersd7H2+js++W9F/U7ZnA4Yp0LYmtK6hTzfgh5VC2OVnOWu+ta+TSm+hPW8x
	r8jSRrE9BIuVyFq+njyUedjA6xn8zqdIPgS/F/gyOWDZYUhV8QSEwl9Ley1LCvislq2Y
	aCWrOaPXnzC4W+XTJGnSGO5TyWiXlGHDK7BcLdIzt5NaF9ido4eVinjBgfyGk/6eXMTS
	Hc0o7JFC3KwFQpM19YKy2K9+4SlrA2LciFN2TDHXpHpanfOHC26G4NCAWgDecUox51vU
	jarQ==
X-Gm-Message-State: AIkVDXKU4Tv7kbPrrIwllt/3zaudwd8qHqa8l5ayG9tpTViW9eGm+OHiey/KkFW2uJy5Pqq78IbeTeC+RJqVpQ==
X-Received: by 10.129.157.211 with SMTP id u202mr9979406ywg.178.1482465292346; 
	Thu, 22 Dec 2016 19:54:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.129.164.146 with HTTP; Thu, 22 Dec 2016 19:54:12 -0800 (PST)
From: chris warth <cswarth@gmail.com>
Date: Thu, 22 Dec 2016 19:54:12 -0800
Message-ID: <CAJJmP9BmnASEECbK=6v-mCTTHxadYRqKcb68wPCWoOQ8KqXAuQ@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Getting verbose output from u-boot builds
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
X-List-Received-Date: Fri, 23 Dec 2016 03:54:57 -0000
Content-Type: multipart/alternative; boundary=94eb2c0bda2c24713605444b59d4

--94eb2c0bda2c24713605444b59d4
Content-Type: text/plain; charset=UTF-8

I apologize if this is not the appropriate forum - I'm still a little vague
on where the dividing lines are between yocto/poky/bitbake projects.

`bitbake -v` gives verbose output, but the u-boot portion of a yocto build
still hides the commands it is running.
To make the u-boot build verbose one must pass 'V=1' on the u-boot make
command line.

Is there any way to get a top-level bitbake command to produce verbose
output for the u-boot portion of the build?

Thanks in advance,

- Chris

--94eb2c0bda2c24713605444b59d4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I apologize if this is not the appropriate forum - I&#39;m=
 still a little vague on where the dividing lines are between yocto/poky/bi=
tbake projects.<div><br></div><div>`bitbake -v` gives verbose output, but t=
he u-boot portion of a yocto build still hides the commands it is running. =
=C2=A0</div><div>To make the u-boot build verbose one must pass &#39;V=3D1&=
#39; on the u-boot make command line.</div><div><br></div><div>Is there any=
 way to get a top-level bitbake command to produce verbose output for the u=
-boot portion of the build?</div><div><br></div><div>Thanks in advance,</di=
v><div><br></div><div>- Chris</div></div>

--94eb2c0bda2c24713605444b59d4--
