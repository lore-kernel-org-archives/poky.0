Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 66C434C80132
	for <poky@lists.pokylinux.org>; Mon, 21 Mar 2011 14:54:52 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 3245216601BD; Mon, 21 Mar 2011 13:00:21 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id BC9A31660084;
	Mon, 21 Mar 2011 13:00:11 -0600 (MDT)
Message-ID: <4D87A03B.2000403@mlbassoc.com>
Date: Mon, 21 Mar 2011 13:00:11 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Making live images bigger
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
X-List-Received-Date: Mon, 21 Mar 2011 19:54:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm running a live (USB) image on my Atom-PC and would like to
install more programs.  Now that I've figured out the magic to
use zypper and rpm (thanks, Mark), I have a new problem.  The
image on the USB device is too small - basically no free space :-(

So, I tried to adjust this by setting:
   /tmp/poky-amltd/meta-yocto/conf/machine/atom-pc.conf:IMAGE_ROOTFS_SIZE_ext3 ?= "1000000"
which I think should give me a 1GB USB setup.  Sadly, the result was exactly the
same size as when I ran it with the default size.

Any ideas what I'm doing wrong?  I edited the config as above, then simply ran
   % bitbake poky-image-sato-live
I can see that it rebuilt the images, but they're just too small still.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

