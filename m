Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B888BE00EAB; Tue, 29 Sep 2015 00:18:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF2D1E00349
	for <poky@yoctoproject.org>; Tue, 29 Sep 2015 00:18:36 -0700 (PDT)
Received: by lahh2 with SMTP id h2so185952065lah.0
	for <poky@yoctoproject.org>; Tue, 29 Sep 2015 00:18:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-type:content-disposition
	:in-reply-to:organization:user-agent;
	bh=aiQKWfzvUqSd1ndYyD9HjnXBlYT/VWr+B3BEU2pVqvM=;
	b=bxEdODqaBqbg5RLmSHvkr/42skO0F03ka7HHl+X4tK6qxOJ1szhudZPah6svnadmCM
	KgIkc0+AC1jxUgqebdGqNC+0mMwoRYNLFVT99PjVvYUH2BIhGwge0AdvbIgbm5p7rzrZ
	nJfjsrxspZhdfIcNW3W8Ak4GZ9WB8HwHojhjGpi1r9rO7yH9S/UtDy5XHMhowRzhQTVh
	d2IBij7v97Bs3v0qdJzTHHbl91RmTfoWZRCJZKBR4JI7R84i6TVyBYoB1cGy9hr/+6D7
	pkg1bxjzkHisYBELUW1Dwd4qzX/rCeUsd2C69sqeJFhwreZJ5vKgcCXfIpCW1bkm/563
	FiKQ==
X-Gm-Message-State: ALoCoQlibN4GMXIEBeUTLFLkvYXl4WpP/1Ku10Bu8xasNa22ad0y/3yehMLwWdpqgM9jjDULDFG/
X-Received: by 10.25.153.147 with SMTP id b141mr4579444lfe.59.1443511114544;
	Tue, 29 Sep 2015 00:18:34 -0700 (PDT)
Received: from ad.chargestorm.se (h83-209-191-235.dynamic.se.alltele.net.
	[83.209.191.235])
	by smtp.gmail.com with ESMTPSA id k19sm2635606lfg.8.2015.09.29.00.18.33
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 29 Sep 2015 00:18:33 -0700 (PDT)
Date: Tue, 29 Sep 2015 09:18:32 +0200
From: Anders Darander <anders@chargestorm.se>
To: poky@yoctoproject.org
Message-ID: <20150929071832.GE9861@ad.chargestorm.se>
Mail-Followup-To: poky@yoctoproject.org
References: <56098ABB.4060104@webthatworks.it>
MIME-Version: 1.0
In-Reply-To: <56098ABB.4060104@webthatworks.it>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: disabling configure features in qt5
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
X-List-Received-Date: Tue, 29 Sep 2015 07:18:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

* Ivan Sergio Borgonovo <mail@webthatworks.it> [150928 20:51]:
> I'm trying to compile qt5 for an imx28 board without X, wayland, opengl,
> opengles, egl.

Ok. I'm building qt5 without all of that as well. I don't have any GUI
at all, so I'm only interested in the core part of qt5.

> Now I'm stuck on trying to really disable opengl since no matter if I have

> DISTRO_FEATURES_remove = "x11 wayland opengl pulseaudio opengles egl"

> when I'm baking meta-toolchain-qt5

> packagegroup-qt5-toolchain-target.bb

> requires qt3d-dev, qt3d-mkspecs, qt3d-qmlplugins that end up in generating
> this error.

> | Project ERROR: Unknown module(s) in QT: openglextensions
> | Makefile:76: recipe for target 'sub-render-make_first' failed
> | make[1]: *** [sub-render-make_first] Error 3

> Ideally I'd prefer to keep qt3d enabled and just pass to configure
> -no-opengl and a bunch of other options (-tslib, -no-pch, -no-xcb,
> -no-opengl -no-openssl -no-libudev -no-fontconfig) but I really don't know
> where to start.

If you're building meta-toolchain-qt5, I think you'll be forced to
remove e.g. qt3d-* from packagegroup-qt5-toolchain-target.bb. You can do
this from a bbappend using the _remove operator.

I'm not using meta-toolchain-qt5 to build the SDK for my application
developers, rather I'm using bitbake image-name -c populate_sdk.

> Even a pointer to a related section of the FM will be appreciated.

Apart from using the populate_sdk task to create my SDK, I'm also using
the following in my qtbase_%.bbappend:

===========
PACKAGECONFIG_SYSTEM = "zlib"
PACKAGECONFIG_DEFAULT = "dbus udev libs"

PACKAGECONFIG += "sql-sqlite nofreetype noqpa"

PACKAGECONFIG[gui] = "-gui,-no-gui"
PACKAGECONFIG[eglfs] = "-eglfs,-no-eglfs"
PACKAGECONFIG[gif] = ",-no-gif"
PACKAGECONFIG[nofreetype] = "-no-freetype"
PACKAGECONFIG[noqpa] = "-no-qpa-platform-guard"
==========

And in my qttools_%.bbappend:
DEPENDS_remove = "qtdeclarative"

This allows me to avoid building any of the GUI parts of Qt5.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

