Return-Path: <zzs213@126.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91475E00D04; Fri,  8 Mar 2019 00:53:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
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
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
X-Greylist: delayed 1853 seconds by postgrey-1.32 at yocto-www;
	Fri, 08 Mar 2019 00:53:32 PST
Received: from m15-114.126.com (m15-114.126.com [220.181.15.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF2C2E006D8
	for <poky@yoctoproject.org>; Fri,  8 Mar 2019 00:53:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Subject:From:Message-ID:Date:MIME-Version; bh=u6j1k
	H6998U+ctCfE4OHxrcsc842Hiu03hn5PrLnkDA=; b=gzyYqVaulDFTEpNB/t7Nv
	Wmfa+/n9tFi/EXUQvdmLt9VSlpP7cYe+m5Ugwc5Hah5mLFrwvs0theMaYM/2uDHo
	VEBpOxci/tFzRciV07FoIvLsLezf4m6X4jsdpj9a3atgvr3i0xTa+KpDkRpHPZXo
	p5ou4tGdDkja2McRIRpxYE=
Received: from [192.168.0.12] (unknown [171.214.199.206])
	by smtp7 (Coremail) with SMTP id DsmowABHTd9LJoJcsXNPAQ--.6349S2;
	Fri, 08 Mar 2019 16:22:36 +0800 (CST)
To: poky@yoctoproject.org
References: <143c3452.5462.1695bf865f8.Coremail.zzs213@126.com>
	<132d9c69.5f42.1695c251ad6.Coremail.zzs213@126.com>
From: =?UTF-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <e800b957-9e70-5aca-d7a0-51ad3183aefa@126.com>
Date: Fri, 8 Mar 2019 16:22:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <132d9c69.5f42.1695c251ad6.Coremail.zzs213@126.com>
X-CM-TRANSID: DsmowABHTd9LJoJcsXNPAQ--.6349S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrurWDGF47Ww1rCFyfAF4fXwb_yoWDCwc_ZF
	Wavrn5Crn0vrWkCa4q9r4ruw1qg3Wftr18t3WDur4Uur9xXw47KanYgFy5Aw45Ga1UA3yU
	XrWrZ398A3WxujkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU5OL05UUUUU==
X-Originating-IP: [171.214.199.206]
X-CM-SenderInfo: x22vjiat6rjloofrz/1tbiqA1xGVpD7PQ9ZAAAsV
Subject: Re: libtool-cross failed configure on yocto-2.6.1 with newlib
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
X-List-Received-Date: Fri, 08 Mar 2019 08:53:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit


>> My host system is:
>>     
>>     Linux gfcd101 4.15.0-46-generic #49~16.04.1-Ubuntu SMP Tue Feb 12 17:45:24 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
>>
>> And using yocto-2.6.1 with newlib:
>>
>>     TCLIBC := "newlib"
>>
>> I wrote a custom .bb to build "kconfig-frontends", it "inherit autotools"
>>
>> when run "bitbake kconfig-frontends", libtool-cross failed to configure:
>>
>>     ERROR: libtool-cross-2.4.6-r0 do_configure: configure failed
>>     ERROR: libtool-cross-2.4.6-r0 do_configure: Function failed: do_configure (log file is located at .../libtool-cross/2.4.6-r0/temp/log.do_configure.11188)
> 
> My recipe for "kconfig-frontends" inhert native, So it just try to 
> build native tool, why need libtool-cross?
> 
Now, I built it success using the flowwing command line:

    bitbake kconfig-frontends-native

The command previously used which worked error is:

    bitbake kconfig-frontends

So I wonder does a recipe can produce a cross-compiled target even the "native.bbclass" inherited??

-- 
Best Regards,
zzs


