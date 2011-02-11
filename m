Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9654A4C8007E
	for <poky@lists.pokylinux.org>; Fri, 11 Feb 2011 10:53:55 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 4D32A1660387; Fri, 11 Feb 2011 09:53:53 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0ABCB16601BE;
	Fri, 11 Feb 2011 09:53:52 -0700 (MST)
Message-ID: <4D5569A0.7080308@mlbassoc.com>
Date: Fri, 11 Feb 2011 09:53:52 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: busybox & update-alternatives
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
X-List-Received-Date: Fri, 11 Feb 2011 16:53:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

A build for my platform with today's master
   49a18f1748d2417958b8e19cdd58c0c79f4fc728
shows a new behaviour - many messages like this:
   update-alternatives: Linking //usr/bin/wc to ../../bin/busybox

Questions:
   * Is this truly new or was it just quiet before?
   * Can't this be done at image build time?  On my little
     embedded OMAP-L138, it takes nearly 2 minutes to run
     through this.  My root is a ramdisk, so this is a cost
     I see on _every_ boot.
   * If it can't be done at build time, can I disable it?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

