Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 126AF4C81067
	for <poky@lists.pokylinux.org>; Tue, 21 Dec 2010 08:58:32 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 872DC16602C6; Tue, 21 Dec 2010 07:58:31 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id C5C7D16602C6;
	Tue, 21 Dec 2010 07:58:29 -0700 (MST)
Message-ID: <4D10C095.5040907@mlbassoc.com>
Date: Tue, 21 Dec 2010 07:58:29 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: New fetch error
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
X-List-Received-Date: Tue, 21 Dec 2010 14:58:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

While testing the recent sstate changes (commit 4cd40dbaa8aef7b6b9ff9ce892a576b802f4b1ec),
I ran across this error:

NOTE: package linux-am-2.6.32-r0: task do_fetch: Started
NOTE: fetch http://www.mlbassoc.com/repos/public/linux-am-2.6.32.tar.bz2
ERROR: Task failed: Unknown fetch Error: local variable 'md5data' referenced before assignment
NOTE: package linux-am-2.6.32-r0: task do_fetch: Failed
ERROR: Task 5 (/work/local/poky-amltd/meta-amltd/packages/linux/linux-am_2.6.32.bb, do_fetch) failed with 256
ERROR: '/work/local/poky-amltd/meta-amltd/packages/linux/linux-am_2.6.32.bb' failed

This is for a local kernel which previously built (today,
using the same Poky tree).  The problem occurred after I
ran 'bitbake virtual/kernel -c cleanall'

Any ideas what caused this error?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

