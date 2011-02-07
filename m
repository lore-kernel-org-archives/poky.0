Return-Path: <embedded.yogesh@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8986B4C80097
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 06:51:38 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwj9 with SMTP id 9so1080643pwj.35
	for <poky@yoctoproject.org>; Mon, 07 Feb 2011 04:51:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=hS2jnvTAUHQkQ/VHiESJ5sJlftj44jKUaLCQcy86nkg=;
	b=nZj33Kb37+x0f4u9Moj+6LR7OMEupYRkfjOA5TzFXuD5gMxY0JWR1FsCS+FBkzytQM
	wKXXZ3zrjOVhaiILnUcTd5SraJ4YqQUA6x/o2RVxfFraXK/y29zdB+mTsRRNTtnQCs5d
	Cuw93XgY33eJIEw5ee6oAG9wZIwLhed5ulbTU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	b=RdJx/JL9tBvwy+CsE9kkVKCfppHrfF7DMDmvbCP4HoSsJlSj70uagxuWZ5SuOFqTBw
	ObMTgjQjvv2EQpTm87OKJzwZDqlKGHFsaMG1mb5Rl6zqI4bvTneyYp+oA9GUWBNOfb09
	xx0R2gYVTAJ+3hpnnxfL+APeeV0ima73ewYgo=
Received: by 10.142.156.18 with SMTP id d18mr15431995wfe.69.1297083098091;
	Mon, 07 Feb 2011 04:51:38 -0800 (PST)
Received: from [192.168.11.118] ([115.111.25.162])
	by mx.google.com with ESMTPS id w14sm5910115wfd.6.2011.02.07.04.51.35
	(version=SSLv3 cipher=RC4-MD5); Mon, 07 Feb 2011 04:51:36 -0800 (PST)
Message-ID: <4D4FEAD4.50200@gmail.com>
Date: Mon, 07 Feb 2011 18:21:32 +0530
From: "embedded.yogesh" <embedded.yogesh@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.15pre) Gecko/20110202 Shredder/3.1.9pre
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <AANLkTinobVPqACVbGb5VjmuROL9-74r1E1B1Ux5xXvVo@mail.gmail.com>
	<4D4FE267.5080907@mlbassoc.com>
In-Reply-To: <4D4FE267.5080907@mlbassoc.com>
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
X-List-Received-Date: Mon, 07 Feb 2011 12:51:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On Monday 07 February 2011 05:45 PM, Gary Thomas wrote:
> On 02/06/2011 09:52 PM, yogesh lal wrote:
>> Hi,
>>
>> I am new to poky, so don't know it will make any sense or not, but 
>> can we build chromium browser using Poky ?
>
> What's your target architecture?  Last I checked, only x86 and ARM
> are supported.
>
> It can be done, but it's certainly not for the faint of heart :-)
>

I am working on X86 platform. Can you give some initial start up where I 
have to look ?

Thanks :)

