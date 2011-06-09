Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A5D04C80188
	for <poky@yoctoproject.org>; Thu,  9 Jun 2011 11:50:48 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 744AE1660298; Thu,  9 Jun 2011 10:50:48 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id D51471660209;
	Thu,  9 Jun 2011 10:50:47 -0600 (MDT)
Message-ID: <4DF0F9E7.6020806@mlbassoc.com>
Date: Thu, 09 Jun 2011 10:50:47 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: GCC-4.6.0 not ready for prime time?
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
X-List-Received-Date: Thu, 09 Jun 2011 16:50:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm not convinced switching to GCC-4.6.0 is a good choice at this time.
Not only did I have problems getting a working kernel, there are a
lot of applications that don't build with this new compiler.  Some
of those that do, don't work :-(

I have a local recipe to build Mozilla FireFox which has been working
fine, but with GCC-4.6.0, it no longer runs correctly.  Given the magnitude
of FireFox, it may take me a while to figure out why.

Even some core programs no longer build, e.g. web-webkit (I was looking
for an alternate web browser).  This was probably not obvious as it is
no longer being built by your test images (it used to be included in
core-image-sato but was dropped by 9d7aa1090c407ac0da6154c481f1c787fd7efbfc)

I guess I'll be sticking with GCC-4.5.x for now

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

