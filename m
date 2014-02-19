Return-Path: <championoaks@gmail.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90F3DE0043F
	for <poky@yoctoproject.org>; Wed, 19 Feb 2014 11:38:00 -0800 (PST)
Received: by mail-vc0-f170.google.com with SMTP id hu8so908984vcb.1
	for <poky@yoctoproject.org>; Wed, 19 Feb 2014 11:37:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=3zWsMh+FyDCB4e89QzKdqa5o8rOFEZajOwXGBvwuqjE=;
	b=bgQp0hjIhp0cFgugIsl+Rt3QrrjvYzFrHvDsgbQvnDelGssWF9ys/jvQJ8oAlSuVFu
	XVMNeE4G+GTPPTlKAPk0sqsxcJqMTv6WIe2JVUy/HYW/TVUU4kxWpwjcqb+7SXgg2HuL
	vp9LeaPFsTTszwoy8bqQr73b6k1yaV5beuoNtaKjxx+R2ZMAQmgD2Hl0Om7LkXRav39y
	P46J/1WlbXoUchaHMx/E1Dpbn/Lp5ZLvSz+Xukc6uKYSPhMDepvA3p4zbivaWW1NVSO7
	iPGy0iyQBpcdZ7EpPZ6avsVRSvr0uR7s1TL67mje02LTHT/zYWtRiWhtxxcfOWs8eu4z
	u5Zw==
MIME-Version: 1.0
X-Received: by 10.221.55.133 with SMTP id vy5mr26544744vcb.17.1392838679067;
	Wed, 19 Feb 2014 11:37:59 -0800 (PST)
Received: by 10.220.74.5 with HTTP; Wed, 19 Feb 2014 11:37:59 -0800 (PST)
Date: Wed, 19 Feb 2014 11:37:59 -0800
Message-ID: <CAOqG5mxzcniXx3UaZedqZ2Qvkpw7yOJcSTVBjvnp-RZqZGOZMg@mail.gmail.com>
From: Roseville House <championoaks@gmail.com>
To: poky@yoctoproject.org
Subject: unable to pull packages in recipe
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
X-List-Received-Date: Wed, 19 Feb 2014 19:38:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

I have written a recipe to fetch/build/deploy an application which
requires following packages
DEPENDS = "autoconf automake libtool libpcre3-dev libjson0-dev flex bison dkms"

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'libpcre3-dev' (but
/home/stangri/poky/foo/recipes-core/foo/foo.bb DEPENDS on or otherwise
requires it). Close matches:
  libpcre
ERROR: Required build target 'fwts' has no buildable providers.
Missing or unbuildable dependency chain was: ['foo', 'libpcre3-dev']

