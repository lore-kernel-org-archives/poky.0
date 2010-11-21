Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2786F4C80BD4
	for <poky@lists.pokylinux.org>; Sun, 21 Nov 2010 05:14:33 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 2867D16605A6; Sun, 21 Nov 2010 04:13:19 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 36A101660596;
	Sun, 21 Nov 2010 04:13:18 -0700 (MST)
Message-ID: <4CE8FECD.5050905@mlbassoc.com>
Date: Sun, 21 Nov 2010 04:13:17 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc13 Thunderbird/3.1.6
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: BBFILE_PRIORITY confusion
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
X-List-Received-Date: Sun, 21 Nov 2010 11:14:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm building a multi-layered system, something like this:
   meta-manufacturer/...
   meta-platform/...

The idea is that we'll put any packages and support that are
useful for all platforms we make in meta-manufacturer/ and only
target platform specifics in meta-platform/

I had set BBFILE_PRIORITY=6 in meta-manufacturer/ and 7 in meta-platform/

Here's the confusion.  I originally had something like this for our internal
kernel packages:
   meta-manufacturer/packages/linux/linux-manufacturer_2.6.32.bb
   meta-platform/packages/linux/linux-manufacturer_2.6.28.bb
This was due to the fact that some other platform we make is already
using 2.6.32, but we still have some back at 2.6.28

Today, I tried to bring one of those platforms to 2.6.32, so I added
this (exactly as I have done for other platforms already running 2.6.32):
   meta-platform/packages/linux/linux-manufacturer_2.6.32.bbappend
initially leaving the linux-manufacturer_2.6.28.bb in place.

Much to my surprise, bitbake/poky never even reads the linux-manufacturer_2.6.32.bbappend
file!  This seems to be related to BBFILE_PRIORITY - when I swapped the
priorities around, it started to work.  While this gets me moving, I think
it's wrong - I may need at some point for this platform to be able to override
some manufacturer recipe, etc.

It seems to me that BBFILE_PRIORITY is a bit too zealous; barring any other
constraint, I should think that the 2.6.32 recipe should always take precedence.

Am I missing something here, or is it a bug?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

