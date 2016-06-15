Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A6F5E00C8B; Wed, 15 Jun 2016 03:10:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9604AE00C7D
	for <poky@yoctoproject.org>; Wed, 15 Jun 2016 03:10:52 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u5FAAkEU011059; Wed, 15 Jun 2016 11:10:46 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id hSryxWXO282R; Wed, 15 Jun 2016 11:10:46 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u5FAAiCh011049
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 15 Jun 2016 11:10:45 +0100
Message-ID: <1465985444.13979.221.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	poky@yoctoproject.org
Date: Wed, 15 Jun 2016 11:10:44 +0100
In-Reply-To: <1465465884-26334-1-git-send-email-alexander.kanavin@linux.intel.com>
References: <1465465884-26334-1-git-send-email-alexander.kanavin@linux.intel.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: Re: [PATCH] maintainers.inc: add missing recipes
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 15 Jun 2016 10:10:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2016-06-09 at 12:51 +0300, Alexander Kanavin wrote:
> Most of the additions are these:
> 1) Missing variants for a recipe (-native, -cross, etc.)
> 2) Recently added recipes; the maintainer is typically the person
> who submitted the addition
> 
> If you disagree with the assignments, speak up!

I'm a little concerned with this patch. We should only be adding native
or nativesdk recipes which are native or nativesdk only. We don't have
very many of those. In the other cases, we should be able to infer the
same maintainer from the target version. Could you have a quick look
over these entries and see if we should be inferring some of them
suggesting a problem in that inferring code, wherever it may be. I just
worry we'd end up adding all -native and nativesdk- variants to this
file which seems a bit pointless...

Cheers,

Richard


