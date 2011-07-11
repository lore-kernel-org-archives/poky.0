Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 074244C800B8
	for <poky@yoctoproject.org>; Mon, 11 Jul 2011 09:13:58 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id AA3381660204; Mon, 11 Jul 2011 08:13:57 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5400416601E1;
	Mon, 11 Jul 2011 08:13:57 -0600 (MDT)
Message-ID: <4E1B0525.4030107@mlbassoc.com>
Date: Mon, 11 Jul 2011 08:13:57 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: UBIFS images
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
X-List-Received-Date: Mon, 11 Jul 2011 14:13:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to use UBIFS on my target and I found that the images
are not quite right.  The soft-link points to the wrong file.

$ ls -l tmp/deploy/images/*ubi*
-rw-r--r-- 1 gthomas gthomas 7483392 Jul 11 07:56 tmp/deploy/images/my_distro-console-image-my_target-20110711135454.ubifs.img
lrwxrwxrwx 1 gthomas gthomas      62 Jul 11 07:56 tmp/deploy/images/my_distro-console-image-my_target.ubifs -> my_distro-console-image-my_target-20110711135454.rootfs.ubifs

I've looked through meta/classes/image_types.bbclass but it's not
clear to me [yet] where that soft-link gets built and why it gets
it wrong.

Any pointers?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

