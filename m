Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16F47E0070C
	for <poky@yoctoproject.org>; Tue, 27 Mar 2012 07:41:01 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 6B9A8F81258; Tue, 27 Mar 2012 08:41:00 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id DAD01F81256;
	Tue, 27 Mar 2012 08:40:59 -0600 (MDT)
Message-ID: <4F71D17B.2030200@mlbassoc.com>
Date: Tue, 27 Mar 2012 08:40:59 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Strange file names
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
X-List-Received-Date: Tue, 27 Mar 2012 14:41:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I just did a pull on poky master and now have a lot of files
with strange names like these:
   poky/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == "linux-yocto-rt_3.0": }} linux-yocto-rt_3.0.bbappend
   poky/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == "linux-yocto-rt_3.2": }} linux-yocto-rt_3.2.bbappend
   poky/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == "linux-yocto_3.0": }} linux-yocto_3.0.bbappend
   poky/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == "linux-yocto_3.2": }} linux-yocto_3.2.bbappend

Is this right?  What are they all about?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

