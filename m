Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8599D4C802F2
	for <poky@lists.pokylinux.org>; Sun, 20 Mar 2011 20:58:47 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 0652A16601A1; Sun, 20 Mar 2011 19:58:44 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id B3B0D16600F4;
	Sun, 20 Mar 2011 19:58:42 -0600 (MDT)
Message-ID: <4D86B0D2.2070004@mlbassoc.com>
Date: Sun, 20 Mar 2011 19:58:42 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: RPM vs IPK
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
X-List-Received-Date: Mon, 21 Mar 2011 01:58:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I know that historically Poky has used 'ipk' as the primary packaging
mechanism.  It seems that now Poky/Yocto has move to 'rpm'.  My distribution
is still using ipk, but I'm happy to change, given a good argument.

* Is there such [a good reason] to use rpm over ipk?
* What are the pros and cons?  I'm mostly interested in very resource limited
   deeply embedded systems which often only run from FLASH.

Thanks for any comments

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

