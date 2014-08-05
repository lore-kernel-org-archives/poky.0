Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 641D3E00799; Mon,  4 Aug 2014 19:21:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
Received: from mail-pd0-f179.google.com (mail-pd0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E35E1E004F1
	for <poky@yoctoproject.org>; Mon,  4 Aug 2014 19:21:06 -0700 (PDT)
Received: by mail-pd0-f179.google.com with SMTP id ft15so400602pdb.38
	for <poky@yoctoproject.org>; Mon, 04 Aug 2014 19:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=Tvq1K0xJFFodCFJpLZrWyy354MIm6Y52qphtQsfb16c=;
	b=fMkPCsAmvibj3epWOwmLDdf+IqzxY/VAZi8DWRplvzkEDw2CsCVkaI7A0YZHvu6u0T
	TE/UYO7tyPaykpVgJcBqSNukJCGGSYnwAMFeaW5kiLsPUGvg7S1c4bRByRm312t4btfP
	2anUFaMkMsK3Cgb96xCYAQ436UI3HLt1i4EUTgY2/ziywiBbS6ICbpUrCeMGyOjhBEWB
	8CB8rd4KENU+DV+oUUZcCHCzN32gkQibtpiR+2PMMtCKUi9BRhnBa0fB4MAzJOtnKQc5
	iCVNt0gAVzQMPsRXXuFiRjVpLdO/Py8XLSpSKH+HN/uLdSIXfIiuDD9RYPtIndn+qiuE
	M3Wg==
X-Received: by 10.70.36.135 with SMTP id q7mr657232pdj.79.1407205265924;
	Mon, 04 Aug 2014 19:21:05 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id ki8sm375070pdb.89.2014.08.04.19.21.04
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Aug 2014 19:21:05 -0700 (PDT)
Date: Mon, 4 Aug 2014 19:24:41 -0700
From: Khem Raj <raj.khem@gmail.com>
To: "biannm@cn.fujitsu.com" <biannm@cn.fujitsu.com>
Message-ID: <20140805022441.GB3867@haswell>
References: <30DC4EDFD798C94083F3E083754532CCC9AAA9@G08CNEXMBPEKD02.g08.fujitsu.local>
	<1407147842.6981.52.camel@ted>
	<30DC4EDFD798C94083F3E083754532CCC9ADE9@G08CNEXMBPEKD02.g08.fujitsu.local>
MIME-Version: 1.0
In-Reply-To: <30DC4EDFD798C94083F3E083754532CCC9ADE9@G08CNEXMBPEKD02.g08.fujitsu.local>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [Question]Does poky rebuild source when only makefile was modified
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
X-List-Received-Date: Tue, 05 Aug 2014 02:21:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 14-08-05 01:35:32, biannm@cn.fujitsu.com wrote:
> Thanks for your answer.
> I had confirmed that tasks from the configure will be rebuild.
> But the timestamp of source files doesn't have any change, 
> although do_compile task will be rebuild, the source files will not be rebuild.
> 
> When we rebuild our project by make, we always do "make clean" firstly to make sure source files to be rebuild if only makefile have been changed.
> Does it means we must do "bitbake xxx -c cleansstate" firstly if we just modify bb file
> that changes libdir only.

No, bitbake should take care of invalidated the affected tasks and
redoing the tast and dependent task.

