Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 49C7F4C80FA8
	for <poky@lists.pokylinux.org>; Tue,  9 Nov 2010 06:58:21 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id B0A25166084E; Tue,  9 Nov 2010 05:58:20 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 53BCD16606B8;
	Tue,  9 Nov 2010 05:58:20 -0700 (MST)
Message-ID: <4CD9456C.7090907@mlbassoc.com>
Date: Tue, 09 Nov 2010 05:58:20 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: New staging error
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
X-List-Received-Date: Tue, 09 Nov 2010 12:58:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

With the new staging (master of 2010-11-08), I'm seeing lots of these messages
when I build from scratch:

NOTE: Running setscene task 81 of 364 (/local/poky-amltd/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb:do_populate_sysroot_setscene)
NOTE: package netbase-4.41-r1: task do_populate_sysroot_setscene: Started
NOTE: Staging package /home/local/poky-new2/sstate-cache/sstate-netbase-ppc603e-poky-linux-4.41-r1-ppc603e-1-83766f23e3f9013cb26b768478638f1d_populate-sysroot.tgz does not exist
ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.
ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.

Questions:
   * What does this mean?  Can I fix it somehow?
   * If it's ignored, it should be a WARNING, not an ERROR

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

