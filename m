Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 11BD64C80FA7
	for <poky@lists.pokylinux.org>; Wed, 17 Nov 2010 10:55:07 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id A4A16166078A; Wed, 17 Nov 2010 09:55:06 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6A9F31660784;
	Wed, 17 Nov 2010 09:55:05 -0700 (MST)
Message-ID: <4CE408E8.2030102@mlbassoc.com>
Date: Wed, 17 Nov 2010 09:55:04 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc13 Thunderbird/3.1.6
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Noexec tasks?
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
X-List-Received-Date: Wed, 17 Nov 2010 16:55:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Messages like these are [fairly] new:
   NOTE: Noexec task 3045 of 3117 (ID: 505, /local/poky-amltd/meta/recipes-devtools/gcc/gcc-cross_4.5.0.bb, do_package_write)
I don't see that they add much (any?) value and just increase the
noise.  For example, if I rerun 'bitbake some-image' which has N
steps, I get N-2 of these followed by a couple of steps that actually
do the work.  Pretty annoying when N is large (for most images, N is
measured in thousands of steps)

Can these messages be suppressed?  Is there any good reason to show them?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

