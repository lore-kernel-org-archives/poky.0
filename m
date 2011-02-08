Return-Path: <embedded.yogesh@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5923A4C80053
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 22:02:35 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk28 with SMTP id 28so1226834pzk.35
	for <poky@yoctoproject.org>; Mon, 07 Feb 2011 20:02:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=dAB7kXeiwbKd7SiIW1Zi2b/9Eez+22tLf1mfBRDF2RM=;
	b=wLD+D5UmJvojUYKhuS9hesYYBcl06fJzLZ8IkcFCwW7wDdjjZMWNdXh4r80ukEXMFq
	2xDMUU5k4r6ihfXHO4aEFRccVhR57TVu4vf9c3UeMYyvQANfvfk8sPa/ryBZN21PDXhV
	lJPS9grUVJlMBHrsyVFmw6D+5xruh7rM+9ncM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	b=nj8mjJKMBOLTcQMhd3mo216RoWixcQcWTYSb1r+hPgsCf3NPXweXaXGL/GtFMmOFUM
	Or20iOovnZHixOy8Q/nLCIT5xnV2GqV5Jvs5V1AT1C5tow1FWpGYCOO/A3970pbz1vS7
	bAnY3CDlNjv/HqMHiuulBkjXUedTSALa0LeN8=
Received: by 10.142.136.9 with SMTP id j9mr16530858wfd.396.1297137754797;
	Mon, 07 Feb 2011 20:02:34 -0800 (PST)
Received: from [192.168.11.118] ([115.111.25.162])
	by mx.google.com with ESMTPS id v19sm6933479wfh.0.2011.02.07.20.02.31
	(version=SSLv3 cipher=RC4-MD5); Mon, 07 Feb 2011 20:02:33 -0800 (PST)
Message-ID: <4D50C055.5080200@gmail.com>
Date: Tue, 08 Feb 2011 09:32:29 +0530
From: "embedded.yogesh" <embedded.yogesh@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.15pre) Gecko/20110202 Shredder/3.1.9pre
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <AANLkTinobVPqACVbGb5VjmuROL9-74r1E1B1Ux5xXvVo@mail.gmail.com>	<4D4FE267.5080907@mlbassoc.com>	<4D4FEAD4.50200@gmail.com>
	<4D50388A.4030707@linux.intel.com> <4D503B5A.3040805@mlbassoc.com>
In-Reply-To: <4D503B5A.3040805@mlbassoc.com>
Subject: Re: chromium browser
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 08 Feb 2011 04:02:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On Tuesday 08 February 2011 12:05 AM, Gary Thomas wrote:
> On 02/07/2011 11:23 AM, Darren Hart wrote:
>> On 02/07/2011 04:51 AM, embedded.yogesh wrote:
>>> On Monday 07 February 2011 05:45 PM, Gary Thomas wrote:
>>>> On 02/06/2011 09:52 PM, yogesh lal wrote:
>>>>> Hi,
>>>>>
>>>>> I am new to poky, so don't know it will make any sense or not, but
>>>>> can we build chromium browser using Poky ?
>>>>
>>>> What's your target architecture? Last I checked, only x86 and ARM
>>>> are supported.
>>>>
>>>> It can be done, but it's certainly not for the faint of heart :-)
>>>>
>>>
>>> I am working on X86 platform. Can you give some initial start up 
>>> where I
>>> have to look ?
>>
>> Find and download the Chromium source, then have a look at the Poky 
>> Reference Guide for how to create an appropriate recipe, using 
>> recipes for projects with similar source layouts
>> as examples.
>>
>> http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html
>
> Probably a lot easier to start with the OpenEmbedded recipe
> since it already works.  The biggest problem is that there
> are a ton of dependencies, so you'll need to bring in those
> recipes as well.
>

Thanks Gary Thomas  and Darren Hart ,

I am look in to poky-ref-manual and OpenEmbedded recipes :)

---
Yogesh

