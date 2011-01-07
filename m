Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 892E44C80B70
	for <poky@lists.pokylinux.org>; Fri,  7 Jan 2011 07:54:44 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 64141166019B; Fri,  7 Jan 2011 06:54:44 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id E4D581660166;
	Fri,  7 Jan 2011 06:54:43 -0700 (MST)
Message-ID: <4D271B23.8060107@mlbassoc.com>
Date: Fri, 07 Jan 2011 06:54:43 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: License info now mandatory?
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
X-List-Received-Date: Fri, 07 Jan 2011 13:54:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have a number of recipes (from various places, mostly OE)
that don't have explicit license information in them.  For now,
I'm happy just knowing this fact - these things can be cleaned
up eventually.  Until recently, there were warnings about this
but now, such recipes are considered fatal errors.  For example:

| ERROR: icu-native: Recipe file does not have license file information (LIC_FILES_CHKSUM)

I understand such strict policies for Poky & Yocto in general,
but not all may want to be so pedantic over this topic.

Is there some way to temper this, e.g. go back to warnings?

n.b. I'm fully in favour of proper licensing, I'd just like
to be able to control how strongly I apply this policy.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

