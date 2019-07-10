Return-Path: <zzs213@126.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC4CAE00C6F; Wed, 10 Jul 2019 02:29:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	FROM_EXCESS_BASE64 autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zzs213[at]126.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
X-Greylist: delayed 1810 seconds by postgrey-1.32 at yocto-www;
	Wed, 10 Jul 2019 02:29:16 PDT
Received: from m15-111.126.com (m15-111.126.com [220.181.15.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E211E00BE9
	for <poky@yoctoproject.org>; Wed, 10 Jul 2019 02:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Subject:From:Message-ID:Date:MIME-Version; bh=LNd7z
	3dGoP9zv9F64r5O0YtR8QwrnyRTbkVpbmt2R1Y=; b=jwkDUucknIOAh1t9IVdBT
	d31HjmKllGtbNJXRVKoY8qAA2A+/3FdaQn9pauIDf1e3u9DxceBihEXUAYmOcpQ6
	nNxS17kD1uzRDaT2/diAIMpIo+LFAZ9m7WLY0v8jaMsXXwi+lkU+nJD7iWG4ZEBk
	svGXghijdML+quSGd7o+jE=
Received: from [192.168.0.12] (unknown [171.217.81.112])
	by smtp1 (Coremail) with SMTP id C8mowAA3NmrOqCVdnOnREw--.2413S2;
	Wed, 10 Jul 2019 16:58:55 +0800 (CST)
To: poky@yoctoproject.org
References: <781c13ee.5d79.16bdaef7022.Coremail.zzs213@126.com>
From: =?UTF-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <4c820a75-6618-337c-9468-80a839255f6e@126.com>
Date: Wed, 10 Jul 2019 16:58:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <781c13ee.5d79.16bdaef7022.Coremail.zzs213@126.com>
X-CM-TRANSID: C8mowAA3NmrOqCVdnOnREw--.2413S2
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUkvD7UUUUU
X-Originating-IP: [171.217.81.112]
X-CM-SenderInfo: x22vjiat6rjloofrz/1tbi2w-tGVpD9fkvBAAAse
Subject: Re: howto build libstdc++ while using newlib
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
X-List-Received-Date: Wed, 10 Jul 2019 09:29:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2019/7/10 下午4:10,  张忠山 Wrote:
> when the toolchain generated using newlib, there are no libstdc++ in it.
> So, Can't build other librarys build with cmake, because of error testing cxx tool in do_configure
> 
> How Can add libstdc++ ?
> 
Now I known it need libstdc++-arm-none-eabi-newlib

Is there a recipe .bb in poky? If there is How add it to the toolchain which built by bitbake

-- 
Best Regards,
zzs


