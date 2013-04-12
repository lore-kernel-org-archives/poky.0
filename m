Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC70EE014DB
	for <poky@yoctoproject.org>; Fri, 12 Apr 2013 12:07:01 -0700 (PDT)
Received: by mail-wi0-f171.google.com with SMTP id hn17so1910567wib.16
	for <poky@yoctoproject.org>; Fri, 12 Apr 2013 12:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=nfvNqtyONPN+RZiQ8t0hg/3Z4jeE7NEWRUHy3Aw4DZs=;
	b=YUBevs/ddS8jIyN6c3pR7gOp+FDDk6HldO2DHcNfb3V3dIWb9XjbKKUG/bj9ReMtvV
	xu4Mm6vmECG1j8MxfhmATsp4fwGfHsgfCwBMVvwmOECINUxhLD9Xa6VZCEK5c+H42DGp
	uvDtK09zxfbu5GeWrXRYYaWHexySMSBwDXRTFjdVUWlZGYSXbqpUyfjvt3gF+gcm2dJF
	zyJn5mSKLrrbdFP/+ZQdUNVoQ4/z8nTdG7KnjOXU9rm/KdOOK69fnzgmDkd81+wbuUWg
	Ou2GjIeBPyYzgl3OK+XOyj1MVzlydyiJmb47ETywA/Db8acuj2lNMOo+DYUPJl/nBcrc
	kBXg==
MIME-Version: 1.0
X-Received: by 10.194.10.129 with SMTP id i1mr19778680wjb.21.1365793620424;
	Fri, 12 Apr 2013 12:07:00 -0700 (PDT)
Received: by 10.194.167.73 with HTTP; Fri, 12 Apr 2013 12:07:00 -0700 (PDT)
Date: Fri, 12 Apr 2013 15:07:00 -0400
Message-ID: <CAHUNapT4owKXJY_wBmRfwkn_56DTSO6hZsuGemES_YG6aFA2RQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: poky@yoctoproject.org, Denys Dmytriyenko <denis@denix.org>
Subject: poky and OpenEmbedded (post-release)
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
X-List-Received-Date: Fri, 12 Apr 2013 19:07:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

Many thanks to Denys for pointing me to
http://openembedded.org/wiki/OpenEmbedded-Core. You won't believe how
I've poured over that page and how many "lights have gone on" while
reading it (over and over).

If poky started as a fork of OE but is now a distribution, wouldn't it
make sense to remove the "meta" directory from poky and simply have
people add openembedded-core as a layer (as they would any other
layer)?

Or am I going down the wrong path with this thought?

Of course it might be confusing having, potentially, both an
openembedded-core and a meta-openembedded layer, but it seems like
having the "meta" directory in poky is redundant, given that it is
already its own layer in openembedded-core.

