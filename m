Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20F48E00CA6; Wed, 15 Jun 2016 05:18:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B099DE00C9E
	for <poky@yoctoproject.org>; Wed, 15 Jun 2016 05:18:34 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 15 Jun 2016 05:18:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,475,1459839600"; d="scan'208";a="987941466"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jun 2016 05:18:33 -0700
To: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@yoctoproject.org
References: <1465465884-26334-1-git-send-email-alexander.kanavin@linux.intel.com>
	<1465985444.13979.221.camel@linuxfoundation.org>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <ee740444-05f6-4308-bd3c-bf6a84242af0@linux.intel.com>
Date: Wed, 15 Jun 2016 15:18:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <1465985444.13979.221.camel@linuxfoundation.org>
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
X-List-Received-Date: Wed, 15 Jun 2016 12:18:37 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/15/2016 01:10 PM, Richard Purdie wrote:
> On Thu, 2016-06-09 at 12:51 +0300, Alexander Kanavin wrote:
>> Most of the additions are these:
>> 1) Missing variants for a recipe (-native, -cross, etc.)
>> 2) Recently added recipes; the maintainer is typically the person
>> who submitted the addition
>>
>> If you disagree with the assignments, speak up!
>
> I'm a little concerned with this patch. We should only be adding native
> or nativesdk recipes which are native or nativesdk only. We don't have
> very many of those. In the other cases, we should be able to infer the
> same maintainer from the target version. Could you have a quick look
> over these entries and see if we should be inferring some of them
> suggesting a problem in that inferring code, wherever it may be. I just
> worry we'd end up adding all -native and nativesdk- variants to this
> file which seems a bit pointless...

The additions are only for those -native recipes which are defined in 
separate .bb files in addition to basic .bb recipes. I think it makes 
sense that RRS doesn't try to map those to basic recipes, and treats 
them separately.

If/when those separate native recipes are merged with basic recipes, 
then separate maintainer lines can be dropped as well.

Alex

