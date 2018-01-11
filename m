Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2CB2E00DD2; Wed, 10 Jan 2018 21:33:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D4FFE00DAE
	for <poky@yoctoproject.org>; Wed, 10 Jan 2018 21:33:10 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w0B5Wrxk026050
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 10 Jan 2018 21:33:03 -0800 (PST)
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Wed, 10 Jan 2018 21:32:53 -0800
To: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
References: <0B2EBCD48D33654381E736352034C70C01B45F94@dor-sms-xch01.digi.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <74fdcc9f-d8dd-5758-a900-ccfffeea0399@windriver.com>
Date: Thu, 11 Jan 2018 13:33:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <0B2EBCD48D33654381E736352034C70C01B45F94@dor-sms-xch01.digi.com>
Subject: Re: Postinstallation script for target throw warnings
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
X-List-Received-Date: Thu, 11 Jan 2018 05:33:10 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 01/05/2018 07:21 PM, Diaz de Grenu, Jose wrote:
> Hi,
> 
> I am trying to create a recipe with a post installation script. I am using the following fragment of code (as documented in http://www.yoctoproject.org/docs/2.4/mega-manual/mega-manual.html#new-recipe-post-installation-scripts ):
> 
> pkg_postinst_PACKAGENAME() {
>       if [ x"$D" = "x" ]; then
>            # Actions to carry out on the device go here
>       else
>            exit 1
>       fi
> }
> 
> This was working fine in Yocto 2.2, but now in Yocto 2.4 I am getting these warnings:
> 
> WARNING: core-image-base-1.0-r0 do_rootfs: [log_check] core-image-base: found 3 warning messages in the logfile:
> [log_check] warning: %post(init-ifupdown-1.0-r7.0.cortexa7hf_neon) scriptlet failed, exit status 1
> 
> How can I clean these warnings in Yocto 2.4? Is that still the correct way to create post installation script that must run on the target? Should I just replace 'exit 1' by 'exit 0'?

Yes, just remove the "else" block and use something like:

if [ -z "$D" ]; then
	# Actions
fi

But it would be better if you can make it work during do_rootfs rather
than firstboot.

// Robert

> 
> Thanks
> 

