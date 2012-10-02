Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B498E00524
	for <poky@yoctoproject.org>; Tue,  2 Oct 2012 08:34:17 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 0D02FF81246; Tue,  2 Oct 2012 09:34:16 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 861C0F81245;
	Tue,  2 Oct 2012 09:34:15 -0600 (MDT)
Message-ID: <506B0983.3060500@mlbassoc.com>
Date: Tue, 02 Oct 2012 09:34:27 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120912 Thunderbird/15.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: New warning
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
X-List-Received-Date: Tue, 02 Oct 2012 15:34:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm getting these new warnings, even with a build from scratch.  This is from
poky master rev 7c39c87d52c20e47cf90275a16e4517a296c8388

WARNING: The recipe is trying to install files into a shared area when those files already exist. Those files are:
    /home/local/p81_build/tmp/sysroots/cobra3530p81/usr/include/python2.7/pyconfig.h
    /home/local/p81_build/tmp/sysroots/cobra3530p81/usr/lib/libpython2.7.so
    /home/local/p81_build/tmp/sysroots/cobra3530p81/usr/lib/libpython2.7.so.1.0
    /home/local/p81_build/tmp/sysroots/cobra3530p81/usr/lib/python2.7/config/Makefile

Do they hurt anything?  Why am I getting them now, what's changed, etc?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

