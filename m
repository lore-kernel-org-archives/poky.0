Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id B77FE4C800AC
	for <poky@lists.pokylinux.org>; Mon, 21 Mar 2011 10:25:11 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 4B71416600C6; Mon, 21 Mar 2011 09:25:08 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id CDF1B16600BB;
	Mon, 21 Mar 2011 09:25:07 -0600 (MDT)
Message-ID: <4D876DD3.5070106@mlbassoc.com>
Date: Mon, 21 Mar 2011 09:25:07 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Using RPM with Poky
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
X-List-Received-Date: Mon, 21 Mar 2011 15:25:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to do some testing with Poky on an atom-PC.  I thought
I'd try with a minimal system and then add pieces I need.  Sadly,
I've run aground doing this.  I've built a couple of images with
varying results:
   poky-image-minimal-live - boots on my box
   poky-image-sato-live - boots, but fails to find X display, then hangs (*)

There seem to be no RPM tools on the minimal image.  Did I miss something?
On my old, ipk based system, I'd build up a minimal image then use opkg
to install additional packages.  How do I do that with the RPM based
images?  I've checked the documentation and there's basically nothing
about this, unless I looked in the wrong place.

Any ideas or pointers gladly accepted.  Thanks

(*) I had success with this in the past when I booted with MACHINE=emenlow
but that hardware isn't in the primary list.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

