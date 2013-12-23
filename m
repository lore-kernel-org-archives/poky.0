Return-Path: <ross.burton@intel.com>
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE0D1E007DC
	for <poky@yoctoproject.org>; Mon, 23 Dec 2013 10:01:58 -0800 (PST)
Received: by mail-qc0-f178.google.com with SMTP id i17so5109818qcy.37
	for <poky@yoctoproject.org>; Mon, 23 Dec 2013 10:01:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=eehMjiC6boR0r0blfVVtigNVI2A+e+1w8r35Huzix5g=;
	b=FRG9LqAx2vJ4mVWclXMLLxVzVDSxGzEMjtMRiK2XsxEiGD+NGnUtrdfYgzHnBs5j8L
	2g6ei6NiL3/U535/HgNhvJ0tHeZS5rgymlMmX7HUk43Dc1VViktqvGxhreSRKrmB2tCL
	432Wtr+TH9x0G6BS5wZro/MGX5WVJQYJeCfLE6T3l3wz0nVsFslLGvWLffX8+2FOHgZr
	MP/++KLlPABhU40eUh9R3Ewwfsg8anluK1/y5iM34sRCNbB7lDhPT+pQSmfMTkku6Awp
	9lGcOXCQCEmWAphTvKUhFEMPi7iEA+RUQh3ScbVaN/V0h6MVcwLm0WcajQ/qIq8ns25a
	ThhQ==
X-Gm-Message-State: ALoCoQnVdNEEEKtwnkaogGJE9yp6zadDbBKnBzc6+iydu9Mr7O/lrnedUlmBk5dmjKAqEPN/qN7p
X-Received: by 10.49.51.66 with SMTP id i2mr44646732qeo.26.1387821717834; Mon,
	23 Dec 2013 10:01:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.96.179.105 with HTTP; Mon, 23 Dec 2013 10:01:37 -0800 (PST)
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Dec 2013 18:01:37 +0000
Message-ID: <CAJTo0LZsBfxGm=OJPa++egDjL6L0ZABMebTtTr_Bmw_TdQrohg@mail.gmail.com>
To: OE-core <openembedded-core@lists.openembedded.org>, 
	Poky Project <poky@yoctoproject.org>, 
	OE-devel <openembedded-devel@lists.openembedded.org>
Subject: Piglit in Poky
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
X-List-Received-Date: Mon, 23 Dec 2013 18:02:00 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

We'd like to integrate Piglit (an OpenGL test suite) into Poky so that
we can run automated QA on the GL stack.  Piglit is currently residing
in meta-oe, but as Poky is a self-contained project we can't just add
meta-oe to it:  apart from the size of meta-oe, we can't ensure
stability if meta-oe makes incompatible changes that affect Poky.

Piglit isn't a stand-alone package, there are the dependencies of
waffle, python-mako and python-numpy to consider too.  There are two
possibilities I can see:

1) Move piglit and deps to oe-core.  Piglit is for QA purposes only
and pushes the boundaries of "core platform".  In a sense this is a
repeat of the discussion we had with Midori...  does oe-core contain
everything needed to sufficiently exercise the core components it
ships or not?

2) Add piglit and deps to meta-yocto.  Probably a new layer called
meta-yocto-qa (or similar) because the Yocto Compatible guidelines
forbid mixing distribution policy and recipes.  We'd need to sync
meta-yocto-qa with the pieces of meta-oe that we want somehow, but
that's our problem.

Thoughts and opinions welcome over Christmas, otherwise I'll toss a coin. :)

Ross

