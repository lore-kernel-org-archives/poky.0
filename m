Return-Path: <mail@webthatworks.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89A25E00B04; Mon, 28 Sep 2015 11:51:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 313 seconds by postgrey-1.32 at yocto-www;
	Mon, 28 Sep 2015 11:51:15 PDT
Received: from smtp205.alice.it (smtp205.alice.it [82.57.200.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10CCEE00A28
	for <poky@yoctoproject.org>; Mon, 28 Sep 2015 11:51:15 -0700 (PDT)
Received: from caronte.home.webthatworks.it (79.41.133.207) by
	smtp205.alice.it (8.6.060.28)
	id 55F9735703344A62 for poky@yoctoproject.org;
	Mon, 28 Sep 2015 20:45:59 +0200
Received: from gloom.home.webthatworks.it (gloom.home.webthatworks.it
	[192.168.1.14])
	by caronte.home.webthatworks.it (Postfix) with ESMTP id 03A096FE20C9
	for <poky@yoctoproject.org>; Mon, 28 Sep 2015 20:45:59 +0200 (CEST)
Received: from [IPv6:::1] (localhost [IPv6:::1])
	by gloom.home.webthatworks.it (Postfix) with ESMTP id C85015E0151
	for <poky@yoctoproject.org>; Mon, 28 Sep 2015 20:45:15 +0200 (CEST)
From: Ivan Sergio Borgonovo <mail@webthatworks.it>
To: poky@yoctoproject.org
Organization: http://www.WebThatWorks.it
Message-ID: <56098ABB.4060104@webthatworks.it>
Date: Mon, 28 Sep 2015 20:45:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.2.0
MIME-Version: 1.0
Subject: disabling configure features in qt5
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
X-List-Received-Date: Mon, 28 Sep 2015 18:51:19 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to compile qt5 for an imx28 board without X, wayland, opengl, 
opengles, egl.

Now I'm stuck on trying to really disable opengl since no matter if I have

DISTRO_FEATURES_remove = "x11 wayland opengl pulseaudio opengles egl"

when I'm baking meta-toolchain-qt5

packagegroup-qt5-toolchain-target.bb

requires qt3d-dev, qt3d-mkspecs, qt3d-qmlplugins that end up in 
generating this error.

| Project ERROR: Unknown module(s) in QT: openglextensions
| Makefile:76: recipe for target 'sub-render-make_first' failed
| make[1]: *** [sub-render-make_first] Error 3

Ideally I'd prefer to keep qt3d enabled and just pass to configure 
-no-opengl and a bunch of other options (-tslib, -no-pch, -no-xcb, 
-no-opengl -no-openssl -no-libudev -no-fontconfig) but I really don't 
know where to start.

Even a pointer to a related section of the FM will be appreciated.

thanks

-- 
Ivan Sergio Borgonovo
http://www.webthatworks.it


