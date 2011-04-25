Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id E7F184C80506
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 07:15:00 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 34FF8166022F; Mon, 25 Apr 2011 06:14:55 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7739C1660177;
	Mon, 25 Apr 2011 06:14:54 -0600 (MDT)
Message-ID: <4DB565BE.7010606@mlbassoc.com>
Date: Mon, 25 Apr 2011 06:14:54 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: "core" explosion?
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
X-List-Received-Date: Mon, 25 Apr 2011 12:15:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I've been building from a Poky tree, keeping up to date with
the master branch for quite some time.  Recently, I used this
tree to build to do some testing on my [emenlow-like] Atom.

Using the external meta-intel, I've built for atom-pc since it's
supported by core (but sadly doesn't work on my Atom PC!) and
emenlow (which does work).  I've noticed quite a change in the
size of images over the past month:

ls -l /work/tmp/*.hddimg
-rw-r--r-- 1 gthomas gthomas  521244672 Apr 22 15:00 /work/tmp/core-image-sato-live-atom-pc.hddimg
-rw-r--r-- 1 gthomas gthomas 2056809472 Apr 22 22:28 /work/tmp/core-image-sato-live-emenlow.hddimg
-rw-r--r-- 1 gthomas gthomas  508077056 Mar 21 12:37 /work/tmp/poky-image-sato-live-atom-pc.hddimg
-rw-r--r-- 1 gthomas gthomas 1032937472 Mar 22 05:40 /work/tmp/poky-image-sato-live-emenlow.hddimg

Notice that with the new "core" images, the size is bigger, but
why is the emenlow image _doubled_ whereas the atom-pc version only
grew by around 4%?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

