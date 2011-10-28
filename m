Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74FC5E006F9
	for <poky@yoctoproject.org>; Fri, 28 Oct 2011 03:33:16 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 25D096AACCB; Fri, 28 Oct 2011 04:33:10 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id C273E6AACC7;
	Fri, 28 Oct 2011 04:33:00 -0600 (MDT)
Message-ID: <4EAA84DC.8010300@mlbassoc.com>
Date: Fri, 28 Oct 2011 04:33:00 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Prevent auto-mounting?
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
X-List-Received-Date: Fri, 28 Oct 2011 10:33:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

How do I keep a file system from being automatically mounted?
In particular, I want to automate this sequence:
   * [re]partition a disk using sfdisk
   * format the partitions
   * mount & use the partitions

The problem I have is that when sfdisk completes and the disk label
is reread by the kernel, some process(?) goes off and tries to mount
the partitions.  This not only gets in the way of reformatting those
partitions, but it may be 100% incorrect as the disk layout may have
changed.

Any ideas what process is doing this and how I stop it?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

