Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F3FEE004D2
	for <poky@yoctoproject.org>; Wed, 18 Jan 2012 04:54:33 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q0ICsSI4018416;
	Wed, 18 Jan 2012 12:54:28 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17449-07; Wed, 18 Jan 2012 12:54:22 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q0ICsHsV018410
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 18 Jan 2012 12:54:19 GMT
Message-ID: <1326891257.2511.2.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 18 Jan 2012 12:54:17 +0000
In-Reply-To: <4F16AF6A.2060704@mlbassoc.com>
References: <4F16AF6A.2060704@mlbassoc.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: New sstate concern
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
X-List-Received-Date: Wed, 18 Jan 2012 12:54:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-01-18 at 04:39 -0700, Gary Thomas wrote:
> Updating today to rev 5724ee9c3a99519fea96446638910b727b89898d, I have new
> concerns my sstate-cache is once again useless with most every package
> being rebuilt, e.g.:
> 
> p60_test_pass1/tmp/stamps/i686-linux/u-boot-mkimage-native-2011.06-r0.do_fetch.sigdata.275c6cb8e401bc01179906d05ff611c7
> p60_new/tmp/stamps/i686-linux/u-boot-mkimage-native-2011.06-r0.do_fetch.sigdata.275c6cb8e401bc01179906d05ff611c7
> basewhitelist changed from set(['SSTATE_DIR', 'FILESPATH', 'TERM', 'BB_TASKHASH', 'STAGING_DIR_HOST', 'FILESEXTRAPATHS', 'PWD', 'COREBASE', 'BBPATH', 'SHELL', 'DL_DIR', 
> 'STAGING_DIR_TARGET', 'LOGNAME', 'THISDIR', 'FILE', 'FILE_DIRNAME', 'PATH', 'HOME', 'TMPDIR', 'USER']) to set(['PRSERV_PORT', 'DL_DIR', 'LOGNAME', 'USER', 'FILE', 'HOME', 'PATH', 
> 'TERM', 'SHELL', 'COREBASE', 'PRSERV_DUMPDIR', 'SSTATE_DIR', 'BB_TASKHASH', 'FILESEXTRAPATHS', 'THISDIR', 'BBPATH', 'STAGING_DIR_TARGET', 'FILE_DIRNAME', 'PRSERV_HOST', 'TMPDIR', 
> 'FILESPATH', 'STAGING_DIR_HOST', 'PRSERV_DUMPFILE', 'PRSERV_LOCKDOWN', 'PWD'])
> changed items: set(['PRSERV_PORT', 'PRSERV_HOST', 'PRSERV_DUMPFILE', 'PRSERV_LOCKDOWN', 'PRSERV_DUMPDIR'])
> 
> Are these newly introduced variables really necessary in the
> signatures?

Its telling you there was a difference and the configuration changed but
those variables are not included in the stamp and that message is for
information purposes only. 

If you look closely at the above, the same checksum is shown
(275c6cb8e401bc01179906d05ff611c7 for both)!

Cheers,

Richard






