Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3365E00810; Wed, 11 Mar 2015 18:31:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AC7FE0034E
	for <poky@yoctoproject.org>; Wed, 11 Mar 2015 18:31:39 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t2C1VbJ6003833
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 Mar 2015 18:31:37 -0700 (PDT)
Received: from [128.224.162.174] (128.224.162.174) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 11 Mar 2015 18:31:37 -0700
Message-ID: <5500EC77.7050208@windriver.com>
Date: Thu, 12 Mar 2015 09:31:35 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1426069193.git.liezhi.yang@windriver.com>	
	<ad1cfd7760f0bca3775eacd18ccb1155db117d9b.1426069193.git.liezhi.yang@windriver.com>
	<1426069554.9114.42.camel@linuxfoundation.org>
In-Reply-To: <1426069554.9114.42.camel@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] poky-tiny.conf: clean PACKAGECONFIG for lib32-opkg-utils
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
X-List-Received-Date: Thu, 12 Mar 2015 01:31:44 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit



On 03/11/2015 06:25 PM, Richard Purdie wrote:
> On Wed, 2015-03-11 at 03:20 -0700, Robert Yang wrote:
>> Otherwise lib32-python would be built because lib32-opkg-utils depends
>> on it and cause build errors:
>>
>> ./libpython2.7.so: undefined reference to `localeconv'
>> ./libpython2.7.so: undefined reference to `towlower'
>> ./libpython2.7.so: undefined reference to `iswlower'
>> ./libpython2.7.so: undefined reference to `nl_langinfo'
>> ./libpython2.7.so: undefined reference to `iswupper'
>> ./libpython2.7.so: undefined reference to `iswalpha'
>> ./libpython2.7.so: undefined reference to `towupper'
>> ./libpython2.7.so: undefined reference to `iswspace'
>
> I have to ask, does using multilib with poky-tiny even make sense?

Maybe not:-), I'm fine to drop this patch, the lib32-comre-image-minimal
works well when poky-tiny with this patch.

// Robert

>
> Cheers,
>
> Richard
>
>
>

