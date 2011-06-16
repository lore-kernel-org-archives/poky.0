Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 006924C80191
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 13:28:38 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5GISGn6022652
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 11:28:16 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 16 Jun 2011 11:28:16 -0700
Message-ID: <4DFA4B3F.905@windriver.com>
Date: Thu, 16 Jun 2011 13:28:15 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4DFA2CFF.6020003@emcraft.com>
In-Reply-To: <4DFA2CFF.6020003@emcraft.com>
Subject: Re: bbappend and require
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
X-List-Received-Date: Thu, 16 Jun 2011 18:28:39 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 6/16/11 11:19 AM, Ilya Yanok wrote:
> Hi guys,
> 
> Is bbappend supposed to work when the recipe is included (with require)
> from another recipe?
> 
> We want to add some package to SDK so I've created
> task-sdk-host.bbappend in our layer and it works fine. But when I'm
> building task-qte-toolchain-host (which requires task-sdk-host) bbappend
> file seems to be ignored. Is it to be expected?
> 
> It's no problem to create task-qte-toolchain.bbappend also, and this
> fixes the problem but what should be the right behavior of require wrt
> bbapend?

This sounds like a bug to me.  Which version of Poky/Yocto are you currently
using, and can you give us a simple reproducer.  (Better yet, file a bug in the
bugzilla.yoctoproject.org... if you can't do so, I'll be happy to file it if I
can get a reproducer.)

--Mark

> Thanks.
> 
> Regards, Ilya.
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


