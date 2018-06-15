Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DB22E00A39; Fri, 15 Jun 2018 14:55:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63F1AE006F1
	for <poky@yoctoproject.org>; Fri, 15 Jun 2018 14:55:56 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w5FLtq1Y030993
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Fri, 15 Jun 2018 22:55:53 +0100
Message-ID: <9f074122b5166d526708fb1707e56da884ce39b6.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Jonathan Richardson <jonathan.richardson@broadcom.com>,
	poky@yoctoproject.org
Date: Fri, 15 Jun 2018 22:55:52 +0100
In-Reply-To: <edfcc2fef994870b3be5ea062fc8fabe@mail.gmail.com>
References: <edfcc2fef994870b3be5ea062fc8fabe@mail.gmail.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: how to submit patches
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
X-List-Received-Date: Fri, 15 Jun 2018 21:55:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2018-06-15 at 14:42 -0700, Jonathan Richardson wrote:
> What is the procedure for submitting changes to poky? Can we just
> send the patches to this mailing list? Is there any policy on adding
> new recipes to meta, new features, or fixes?

It depends which component of poky. README.poky has details:

http://git.yoctoproject.org/cgit.cgi/poky/tree/meta-poky/README.poky

You can also see this wiki page for more information:

https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

Its likely OE-Core you want to send patches to, or perhaps meta-
openembedded for new recipes as core has a fairly high bar for new
recipes.

Cheers,

Richard

