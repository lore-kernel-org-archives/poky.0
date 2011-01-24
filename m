Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD38A4C8109B
	for <poky@lists.pokylinux.org>; Mon, 24 Jan 2011 06:05:18 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 21A7D16603AA; Mon, 24 Jan 2011 05:05:17 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id B7D9A16603A8;
	Mon, 24 Jan 2011 05:05:16 -0700 (MST)
Message-ID: <4D3D6AFC.8060300@mlbassoc.com>
Date: Mon, 24 Jan 2011 05:05:16 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Poky on "standard" PC
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 24 Jan 2011 12:05:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I wanted to try Poky on a spare laptop, so I went looking
for an appropriate configuration to build.

 From 'README.hardware' (last updated 2010-12-16), I read:
   Poky Boot CD (bootcdx86)
   ========================

   The Poky boot CD iso images are designed as a demonstration of the Poky
   environment and to show the versatile image formats Poky can generate. It will
   run on Pentium2 or greater PC style computers. The iso image can be
   burnt to CD and then booted from.

When I tried it (it's also listed in the default local.conf),
I got this error:
   Please set TARGET_ARCH directly, or choose a MACHINE or DISTRO that does so.
   Please set a valid MACHINE in your local.conf

There seems to be no machine named 'bootcd*' anywhere :-(

What should I be using?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

