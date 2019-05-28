Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF896E00D38; Tue, 28 May 2019 02:41:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [66.111.4.28 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 526 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 May 2019 02:41:07 PDT
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85875E00C36
	for <poky@yoctoproject.org>; Tue, 28 May 2019 02:41:07 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 6048D22087;
	Tue, 28 May 2019 05:32:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Tue, 28 May 2019 05:32:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=subject:to:cc:references:from:message-id:date:mime-version
	:in-reply-to:content-type:content-transfer-encoding; s=fm1; bh=1
	C6N2ld+F9LnCdvorDvAhQQZLjAb34Qo2qwH7rrtTQk=; b=ZD96KKV1wA6h6Ng2S
	7l614uyS2kvmu2NqlUA3C8y7cM1jLj/F7MdqZCVKPadO1A1bdLYTGtJd1Px0lw8t
	4WeXP6zzz6ALuwXS99KGJT7qFHrlapWU+asKWCeevnR+OfhTqnIjS7738oX3iJU3
	V0GW+h+GR8vml1AQ8/Nl8sogjoEjdELEvvdb5ylr5pEzev+FZ83QspYCoI4rHwzm
	TVq3BrbTmjKRymPjnYH3rgSEAtJgzCdHPNOIWRKIqoN341R7F+IjD8BQP/YBtcGR
	TrqIVdGpe1suITzt4RH9++vrrnSAGJUzQBkAh+fdoPrO+5AqJaOJB2PcDDzNZ384
	OekEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; bh=1C6N2ld+F9LnCdvorDvAhQQZLjAb34Qo2qwH7rrtT
	Qk=; b=OSkanZvA8NtzrLhHNgDuZfdz1wH0ZC/lkGqPRmmzBY1ufkIcYIdxQcyvS
	dhon4W7HmZlWjTwbNnQL8Y9PQMpgT4oJDV8AL417MTdKLmtvWsk31/M7kCBK/4X7
	FRbCWKBSLaViHZikF3w9HfOSwPKRYouVIJg02kDTMOcQHS5UQtUx1pzJbdQy5FY9
	ql8TbAR5E6IkqNEXe/+6pqEBLARTd3uvoiXbVErLCcnPWvD1mrP7YIBBQ7f5XsCL
	ApI8DHLJD/HMhCX40m/2UK2GwmeKjOqWdeMVDO1mBHCv5fvc/+8l+qs/MZ/NKedI
	rOCJagnva0bYPBXzG7VOG8kOBcGtg==
X-ME-Sender: <xms:JADtXHNcNBQJ449FPpYysTX6eId__3WGTmndcNkituRLJibdh3exlg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddruddvhedgudejucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepuffvfhfhohfkffgfgggjtgfgsehtkeertddtfeejnecuhfhrohhmpefrrghu
	lhcuuegrrhhkvghruceophgruhhlsegsvghtrghfihhvvgdrtghordhukheqnecukfhppe
	ekuddrudekjedrfedvrddufeeknecurfgrrhgrmhepmhgrihhlfhhrohhmpehprghulhes
	sggvthgrfhhivhgvrdgtohdruhhknecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:JQDtXAc3ybgjUn54ap95_CBEZdZr8AEZ0-WjL2L0IZQo8HJbG7K85w>
	<xmx:JQDtXBz3rt9oONhQOOqcHtjot1PurLjo75nKgWk0vWjuIOLNNQSNOw>
	<xmx:JQDtXF3yzWcwnMOm4lqkbVOO-sOHC0j4qyyKqjBUteffJ3PYtJDxBA>
	<xmx:JQDtXJl10RnEa-_MFZ56Wpt0_wgaNGmyMni_n76pSgWR9AAGX7JE9g>
Received: from [192.168.1.120] (138.32.187.81.in-addr.arpa [81.187.32.138])
	by mail.messagingengine.com (Postfix) with ESMTPA id 5DA788005B;
	Tue, 28 May 2019 05:32:20 -0400 (EDT)
To: Davis Roman <davis.roman84@gmail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <CACfi_Z1qodZZ2WPAsMx5Tiz5OJmuQ0yEMA7gyVSaUrb7=kzDeg@mail.gmail.com>
From: Paul Barker <paul@betafive.co.uk>
Organization: Beta Five Ltd
Message-ID: <0a5534ef-7f4b-f164-0751-52b880e7073e@betafive.co.uk>
Date: Tue, 28 May 2019 10:32:20 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.0
MIME-Version: 1.0
In-Reply-To: <CACfi_Z1qodZZ2WPAsMx5Tiz5OJmuQ0yEMA7gyVSaUrb7=kzDeg@mail.gmail.com>
Cc: poky@yoctoproject.org, song li <ghosty.lee.1984@gmail.com>
Subject: Re: yocto is unstable to build final image when recipe has slash in SRCBRANCH
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
X-List-Received-Date: Tue, 28 May 2019 09:41:08 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 24/05/2019 20:38, Davis Roman wrote:
> Hello,
> 
> In my recipe, I've found that a forward slash in SRCBRANCH, results in 
> an error during the final image construction,
> 
> SRCBRANCH = "feature/compile_with_gcc7_4_rocko_toolchain"
> 
> 
> Error given:
> 
> Collected errors:
>   * opkg_prepare_url_for_install: Couldn't find anything to satisfy 
> 'tron-app'.
> 
> ERROR: tron-image-grip-1.0-r0 do_rootfs: Function failed: do_rootfs
> 
> 
> Does anyone have a way to make the slash in the SRCBRANCH variable work?
> 

SRCBRANCH is not a standard variable to my knowledge. You'll probably 
have to give some more specific info on the recipe that's using it, what 
bitbake command you ran and the full error message.

Thanks,

-- 
Paul Barker
Managing Director & Principal Engineer
Beta Five Ltd

