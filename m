Return-Path: <randy.e.witt@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7CE0E009D8; Mon, 18 May 2015 10:53:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 241D3E0094C
	for <poky@yoctoproject.org>; Mon, 18 May 2015 10:53:01 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 18 May 2015 10:53:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,454,1427785200"; d="scan'208";a="573205189"
Received: from bitbang.jf.intel.com ([10.7.201.37])
	by orsmga003.jf.intel.com with ESMTP; 18 May 2015 10:53:00 -0700
Message-ID: <555A26FC.3030304@linux.intel.com>
Date: Mon, 18 May 2015 10:53:00 -0700
From: Randy Witt <randy.e.witt@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Nithyakala Sainath <nithisai@gmail.com>, poky@yoctoproject.org
References: <CACj2azs1yrQ0fVuJhrgkDTj_kk5G=z4pqmNLjiLeNZFpQv-Lxg@mail.gmail.com>
In-Reply-To: <CACj2azs1yrQ0fVuJhrgkDTj_kk5G=z4pqmNLjiLeNZFpQv-Lxg@mail.gmail.com>
Subject: Re: Multiple versions of libx11 are due to be built
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
X-List-Received-Date: Mon, 18 May 2015 17:53:04 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 05/17/2015 01:23 PM, Nithyakala Sainath wrote:
> Hello,
>
> I want to understand the process of choosing a recipe by bitbake
>
> There is a libx11_1.3.2.bb in a layer called A with higher priority of 6.
>
> There is another libx11_1.4.0.bb in a layer called B with priority of 5.
>
> So bitbake sshould automatically pick up libx11  from A right ? Why is it
> giving me error like:

" The precedence established through this variable stands regardless of a 
recipe's version (PV variable). For example, a layer that has a recipe with a 
higher PV value but for which the BBFILE_PRIORITY is set to have a lower 
precedence still has a lower precedence."

The documentation definitely makes it sound like this is the case. However, it 
sounds like the layer priority is most likely only taking effect when the 
recipes are the same version.

Richard, does this sound like the documentation needs to be clarified or is this 
a bug?

> " Multiple versions of libx11 are due to be built. Only one version of a
> given PN should be built in any given build. You likely need to set
> PREFERRED_VERSION_libx11 to select the correct version or don't depend on
> multiple versions."
>
> Why should i even prefer a version? This happens when I build an image. But
> when I directly call
>
> bitbake libx11
>
> the one from layer A is getting picked up.
>
> I am confused. Can you please tell me ?
>
> Thanks,
> Nithyakala.
>
>
>


