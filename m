Return-Path: <i.hamlatzis@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 440E6E00BE0; Wed,  5 Jul 2017 03:31:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (i.hamlatzis[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.41 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6DF6E00B83
	for <poky@yoctoproject.org>; Wed,  5 Jul 2017 03:31:34 -0700 (PDT)
Received: by mail-lf0-f41.google.com with SMTP id t72so22089099lff.1
	for <poky@yoctoproject.org>; Wed, 05 Jul 2017 03:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=IxXP4RVENSfXlgCIUsk1FHxGOrr6fHlEPotzYsH3a9s=;
	b=YCqOlonof+inDWD0y1e0Enyp+DneIi5m1H0vuULMB/LGZZbsqCw0W3HsULhLAKIXec
	maqtJKOEZivbMxmiLtgUcNIRv174InGiOixjRxmmIqimNJ1vUZkMnDFMZDttbq9IrLhg
	/kgxNrS3oTbD9o18hNwgkstHPZRWeU03UwN+n404/Vbac4wqqg2KmxsV159tuG0XKq9+
	NZBPW2Ik8PEoQgaDYssOHPWMl8MHEvkmzcsKZ3Es6yEyRcRFqgJ2hJEldqwQ+lqiYKSt
	ZhwkDX9aUnb54W+l6ntVkTwP5ngjHZcq2sMrYTsFU7n1RR9yB1Fb1HluJzec34WX/2cs
	ddmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=IxXP4RVENSfXlgCIUsk1FHxGOrr6fHlEPotzYsH3a9s=;
	b=fBqrV680JabKJQUW+/W3wupxclSwwPb2x47mab3lXezqHGBI0mP6z7hb4fqShhlyGm
	GXdwmkSxnB9xTFzTvo+/p+KxQFhtmvCU3QAocM2c1UBkcahYw2OeWDWrWh+C43NXBHIZ
	uQ4trc2vjbjleR7gNdWOB39a6F7CRdChdiM5LiiW5TvC+efGzmPrvdppcj1yWdVFtFFx
	NgP3Fzd5uCFZEtCjIhCbNY9Ygh4icdewcdpfQQ0C0qTbiX+FsSdFMbuea1nKgOXk6dG4
	+e+7pO8de5PTKWPzlXu2dG+iPsfX1KM6OtqBhm6BjY/Zkyib0JBKl81D91FeQcmMiJ/w
	C9kA==
X-Gm-Message-State: AKS2vOy1+rYpiNGREh3+J0Yit7UUztQVeu6La/stALCuYGkydnZAUe7l
	M7ji8/WoPAsEIiaGOGyTxYsVawcPOupR
X-Received: by 10.25.209.20 with SMTP id i20mr12879264lfg.41.1499250693557;
	Wed, 05 Jul 2017 03:31:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.46.8.66 with HTTP; Wed, 5 Jul 2017 03:30:53 -0700 (PDT)
From: Iosif Hamlatzis <i.hamlatzis@gmail.com>
Date: Wed, 5 Jul 2017 13:30:53 +0300
Message-ID: <CAD2f6zW9cC+gmvGh=3CMsvnQ+P6uYGv89wk_GJWc+NAnQMn9eQ@mail.gmail.com>
To: poky@yoctoproject.org
Subject: No smart package manager installed
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
X-List-Received-Date: Wed, 05 Jul 2017 10:31:41 -0000
Content-Type: multipart/alternative; boundary="001a114009c804d6f405538f81e3"

--001a114009c804d6f405538f81e3
Content-Type: text/plain; charset="UTF-8"

Finally I've managed to create a stable image for my raspberry but
unfortunately I don't see smart package manager installed

In my local.conf file I have:
PACKAGE_CLASSES ?= "package_rpm"

and have tried different combinations of

EXTRA_IMAGE_FEATURES += "package-management"
IMAGE_FEATURES += "package-management"

(either using only the first, only the second and even both). Always when I
login as root on the board and try to use smart I get the message that
smart is not recognised.

--001a114009c804d6f405538f81e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Finally I&#39;ve managed to create a stable image for my r=
aspberry but unfortunately I don&#39;t see smart package manager installed<=
div><br></div><div>In my local.conf file I have:</div><div>PACKAGE_CLASSES =
?=3D &quot;package_rpm&quot;<br></div><div><br></div><div>and have tried di=
fferent combinations of</div><div><br></div><div>EXTRA_IMAGE_FEATURES +=3D =
&quot;package-management&quot;<br></div><div>IMAGE_FEATURES +=3D &quot;pack=
age-management&quot;<br></div><div><br></div><div>(either using only the fi=
rst, only the second and even both). Always when I login as root on the boa=
rd and try to use smart I get the message that smart is not recognised.=C2=
=A0</div></div>

--001a114009c804d6f405538f81e3--
