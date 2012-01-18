Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CF67E004D2
	for <poky@yoctoproject.org>; Wed, 18 Jan 2012 03:39:26 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 79929F81278; Wed, 18 Jan 2012 04:39:24 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id F16B8F81277;
	Wed, 18 Jan 2012 04:39:22 -0700 (MST)
Message-ID: <4F16AF6A.2060704@mlbassoc.com>
Date: Wed, 18 Jan 2012 04:39:22 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: New sstate concern
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
X-List-Received-Date: Wed, 18 Jan 2012 11:39:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Updating today to rev 5724ee9c3a99519fea96446638910b727b89898d, I have new
concerns my sstate-cache is once again useless with most every package
being rebuilt, e.g.:

p60_test_pass1/tmp/stamps/i686-linux/u-boot-mkimage-native-2011.06-r0.do_fetch.sigdata.275c6cb8e401bc01179906d05ff611c7
p60_new/tmp/stamps/i686-linux/u-boot-mkimage-native-2011.06-r0.do_fetch.sigdata.275c6cb8e401bc01179906d05ff611c7
basewhitelist changed from set(['SSTATE_DIR', 'FILESPATH', 'TERM', 'BB_TASKHASH', 'STAGING_DIR_HOST', 'FILESEXTRAPATHS', 'PWD', 'COREBASE', 'BBPATH', 'SHELL', 'DL_DIR', 
'STAGING_DIR_TARGET', 'LOGNAME', 'THISDIR', 'FILE', 'FILE_DIRNAME', 'PATH', 'HOME', 'TMPDIR', 'USER']) to set(['PRSERV_PORT', 'DL_DIR', 'LOGNAME', 'USER', 'FILE', 'HOME', 'PATH', 
'TERM', 'SHELL', 'COREBASE', 'PRSERV_DUMPDIR', 'SSTATE_DIR', 'BB_TASKHASH', 'FILESEXTRAPATHS', 'THISDIR', 'BBPATH', 'STAGING_DIR_TARGET', 'FILE_DIRNAME', 'PRSERV_HOST', 'TMPDIR', 
'FILESPATH', 'STAGING_DIR_HOST', 'PRSERV_DUMPFILE', 'PRSERV_LOCKDOWN', 'PWD'])
changed items: set(['PRSERV_PORT', 'PRSERV_HOST', 'PRSERV_DUMPFILE', 'PRSERV_LOCKDOWN', 'PRSERV_DUMPDIR'])

Are these newly introduced variables really necessary in the
signatures?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

