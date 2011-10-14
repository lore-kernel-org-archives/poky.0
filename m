Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CEABE006B4
	for <poky@yoctoproject.org>; Fri, 14 Oct 2011 07:44:31 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 838656AACC1; Fri, 14 Oct 2011 08:44:29 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id DD7D16AACBF;
	Fri, 14 Oct 2011 08:44:27 -0600 (MDT)
Message-ID: <4E984ACB.1080901@mlbassoc.com>
Date: Fri, 14 Oct 2011 08:44:27 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Poky SDK as an external toolchain
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
X-List-Received-Date: Fri, 14 Oct 2011 14:44:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Premise: I'm happy with the toolchain that builds with Poky/Yocto
Problem: I'm not happy rebuilding said toolchain all the time, nor
having my customers have to rebuild it.

Solution? I'd like to build the meta-toolchain and then be able to
use that as an external toolchain for subsequent builds.  That way,
I can create the tools and reuse them internally as well as pass
them to my customers.

How can I make this happen?  The last time I tried anything like
this, I spent many days in the attempt only to find out that it
was never going to work...

Note: sstate is *not* the answer.  Not only is it HUGE (well over
1GB for a typical setup), but it doesn't work reliably - see
bug #1536

Ideas/hints?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

