Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 876ECE004F2; Thu, 21 Aug 2014 15:11:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f179.google.com (mail-pd0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDBF7E0044A
	for <poky@yoctoproject.org>; Thu, 21 Aug 2014 15:10:57 -0700 (PDT)
Received: by mail-pd0-f179.google.com with SMTP id v10so14756316pde.24
	for <poky@yoctoproject.org>; Thu, 21 Aug 2014 15:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=A96iDc1hPFPAULVJp1Tygm5+/ddHXwnG8hVWPtVWE5U=;
	b=jcjQPMST+eEd/xZxAFloXGO0y4Qrx2+H9xZroXBOAq3+LuxL7lCWAsFT/hHD/Z3Ni1
	GdSn+jc9n1W+f1WxNLtWNtMixS5WwkETMyNKZhoeRYKA4LsHeNdVT/nmozY7zs8o43Ig
	+6Q02XNvCbiyDaGJawfHtmXvid2tR5l+QMiw5kT1mNVGfmbTEZo9y5gW+LZkWFa8U3SZ
	nL6rA8uKB7I3uJLvEgJBW4g2rfF7cZ1jtutuQ5tLZLBIJJt88XyGkkBTxsTVqPMDczvG
	ogNsc8+8FBStwNkfMxawkWaQsLWesDzwFB2akA7goETGhJLu7m3O0lSFrjWs5E8EBt7T
	v97w==
X-Received: by 10.68.201.167 with SMTP id kb7mr1676837pbc.38.1408659057408;
	Thu, 21 Aug 2014 15:10:57 -0700 (PDT)
Received: from ?IPv6:2601:c:9380:601:9535:8428:c995:6c7e?
	([2601:c:9380:601:9535:8428:c995:6c7e])
	by mx.google.com with ESMTPSA id
	j10sm35198487pdo.67.2014.08.21.15.10.55 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 Aug 2014 15:10:56 -0700 (PDT)
Message-ID: <53F66E68.8050707@gmail.com>
Date: Thu, 21 Aug 2014 15:10:48 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>, poky@yoctoproject.org
References: <1408657619-2523-1-git-send-email-akuster808@gmail.com>
	<53F66A63.6070206@mlbassoc.com>
In-Reply-To: <53F66A63.6070206@mlbassoc.com>
Subject: Re: [PATCH] nettle: add nettle to tracking
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
X-List-Received-Date: Thu, 21 Aug 2014 22:11:02 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 08/21/2014 02:53 PM, Gary Thomas wrote:
> On 2014-08-21 15:46, Armin Kuster wrote:
>> add not regarding nettle upgrade
>>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>   meta-yocto/conf/distro/include/upstream_tracking.inc | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc
>> b/meta-yocto/conf/distro/include/upstream_tracking.inc
>> index a018803..ab94ac4 100644
>> --- a/meta-yocto/conf/distro/include/upstream_tracking.inc
>> +++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
>> @@ -162,6 +162,8 @@ CHECK_DATE_pn-module-init-tools = "Aug 31, 2012"
>>   RECIPE_UPSTREAM_DATE_pn-modutils-initscripts = "n/a"
>>   RECIPE_NO_UPDATE_REASON_pn-mpeg2dec = "Why are we currently at 0.4.1?"
>>   RECIPE_NO_UPDATE_REASON_pn-mx-1.0 = "PRS 1.99 is dev version"
>> +CHECK_DATE_pn-nettle = "Aug 21, 2014"
>> +RECIPE_NO_UPDATE_REASON-nettle = "3.0.0 breaks gnutls, api changes"
>
> Shouldn't this be RECIPE_NO_UPDATE_REASON_pn-nettle?

sigh, yeah..

will fix.

should also add,
RECIPE_NO_UPDATE_REASON_pn-akuster = "prone to brain farts "

>
>>   RECIPE_UPSTREAM_VERSION_pn-ofono = "1.6"
>>   RECIPE_UPSTREAM_DATE_pn-ofono="Apr 20, 2012"
>>   CHECK_DATE_pn-ofono = "Aug 31, 2012"
>>
>

