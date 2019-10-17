Return-Path: <sean@geanix.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E42F4E00DE3; Thu, 17 Oct 2019 07:08:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from first.geanix.com (first.geanix.com [116.203.34.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB5DBE00DDC
	for <poky@yoctoproject.org>; Thu, 17 Oct 2019 07:08:01 -0700 (PDT)
Received: from [192.168.100.95] (unknown [95.138.208.137])
	by first.geanix.com (Postfix) with ESMTPSA id 7E028E741;
	Thu, 17 Oct 2019 14:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
	t=1571321235; bh=INWH7TJ1G+32dI996AdrkoN/HFc4zIjkeWDp6B8yWD4=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To;
	b=e7b6rSRleIPBVx9RDbusSYdknOG10f+15Z31D5W/9e4NP5ctNlAzfm3DPfQV3JSOJ
	oVkX8nT7rOdh012TxYsDIxyQxQHSwKpuP7tuMqU/8A20hLaKg33LC5ZaCL8OL0txy5
	Rf3Z16uoaC5/XhMadlaHdNzMuYRSRlciBNETvVU1UU96v9PFKdJ9aigfuGwZurdEhX
	oLwMs1kLJKIsB8xve7SJmVQ96RHF6/pk8ggcUISPuWWW6ROeaQe9CAAKn8h3dV73hQ
	yJ7q7Iq6s8sFEtlBCFWKd7rFK4rTyT6bifUL/0Rml42xZ9CoSl2mrsZ/EK8tNb9WIA
	vJgxscRXCJgcg==
To: Quentin Schulz <quentin.schulz@streamunlimited.com>,
	richard.purdie@linuxfoundation.org
References: <20190611144648.30886-1-quentin.schulz@streamunlimited.com>
	<9981ded9-6f85-64e5-d6fb-a774f255c5e8@geanix.com>
	<5c67c3fb7ba0c15a70eb4ab9266604f8a90be214.camel@linuxfoundation.org>
	<20191017085458.ugvi7vaaidhqnica@qschulz>
From: Sean Nyekjaer <sean@geanix.com>
Message-ID: <023f1747-3ee9-227f-b2cb-223fe40e6c47@geanix.com>
Date: Thu, 17 Oct 2019 16:07:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191017085458.ugvi7vaaidhqnica@qschulz>
Cc: andriy.danylovskyy@streamunlimited.com, poky@yoctoproject.org
Subject: Re: [thud] [PATCH 0/2] opkg and BAD_RECOMMENDATIONS in thud 2.6.2
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
X-List-Received-Date: Thu, 17 Oct 2019 14:08:03 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US-large
Content-Transfer-Encoding: 7bit



On 17/10/2019 10.54, Quentin Schulz wrote:

..

>> Would someone be able to confirm which patches we need to revert
>> please? It may also help narrow down the problem if we could figure out
>> which patches specifically need to be reverted to fix it.
>>
> 
> @Sean, please confirm so I don't mess up twice in a row :)
> 
> e8cd30ba6cec854d85c7ad47edc208107858a5d7 ("OpkgPM: use --add-ignore-recommends to process BAD_RECOMMENDATIONS")
> is the one which should be reverted. This commit cannot work without the
> one mentioned below because it relies on opkg supporting
> --add-ignore-recommends on the command line.

I can comfirm it works as expected when:

e8cd30ba6cec854d85c7ad47edc208107858a5d7 ("OpkgPM: use 
--add-ignore-recommends to process BAD_RECOMMENDATIONS")

is reverted :-)

But had to wipe my `tmp` to prove it. Seems like some changes are not 
picked up properly.

/Sean

