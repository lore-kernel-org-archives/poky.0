Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id B49274C8103F
	for <poky@lists.pokylinux.org>; Fri,  5 Nov 2010 06:48:21 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 31414166067A; Fri,  5 Nov 2010 05:48:21 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id CFC901660612;
	Fri,  5 Nov 2010 05:48:20 -0600 (MDT)
Message-ID: <4CD3EF04.8030208@mlbassoc.com>
Date: Fri, 05 Nov 2010 05:48:20 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: A question about overrides
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Fri, 05 Nov 2010 11:48:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have my own distribution layer, built on the poky distribution.
In other words, my layer defines a few basic setups, then inherits
poky to do the rest.

For the most part, I've been successful with this.  The problem at
hand is that for my distribution, I need to support a couple of
different architectures and at the moment, one of them needs to
stay in the stone age tools-wise.  In my distro.conf, I have
lines like these to select those tools for just that architecture:
   GCCVERSION_armv7a ?= "4.3.3"
This works for everything (I've tried), except this:
   POKYLIBC_armv7a ?= "glibc"

* Is there some magic I'm missing with regard to the 'POKYLIBC' symbol?
* Perhaps there's some other way?

For now, I'm overriding this in local.conf, but that requires
hand tuning that I'd like to avoid.

Thanks for any pointers

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

