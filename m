Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id A60024C8007E
	for <poky@lists.pokylinux.org>; Sat, 12 Feb 2011 08:52:56 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id F072E166032D; Sat, 12 Feb 2011 07:52:54 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0F3C5166031F;
	Sat, 12 Feb 2011 07:52:54 -0700 (MST)
Message-ID: <4D569EC5.6040609@mlbassoc.com>
Date: Sat, 12 Feb 2011 07:52:53 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Booting BeagleBoard
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
X-List-Received-Date: Sat, 12 Feb 2011 14:52:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have a BeagleBoard C3 (not the new xM).  Trying to run the
latest Poky ran into some problems:

* The boot commands in README.hardware are no longer accurate
   for the 2.6.37 (linux-yocto) kernel.  At least you need to
   use ttyO2 for the serial console.
* There is no video?  /dev/fb0 is not being created.

I know that the previous (Angstrom based) 2.6.32 kernel had
lots of additions which support video (DSS subsystem) and
also camera (ISP).  Has this support been ported forward
into the Yocto kernel?

Perhaps I missed some setting?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

