Return-Path: <derek.buitenhuis@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7657DE013D1
	for <poky@yoctoproject.org>; Sun, 29 Apr 2012 10:55:55 -0700 (PDT)
Received: by iagw33 with SMTP id w33so4420695iag.35
	for <poky@yoctoproject.org>; Sun, 29 Apr 2012 10:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=l+QpCGT+NxyEHmrndT7V7r39+9cnP+vkxGsx0Ir8kFA=;
	b=vFPkE0S3sqkWyY39OEX2DxhNNOgsJPkTIU+9n+1kEbIIklfIIHxTWQMKxuzm+nP2S2
	89TRYwoLsdU1mMJo64gvkTlZtTeH+a2JDDVg/qOB3fRN0RFfH1P++AyvW+zmA88wquJy
	fH8KzfsO5jRyaGJJSCbs60b5z2uH/llbTAw5gNWewByCKxPfSkmpP3laZQYDB0R2P1TG
	YK7I5Gmup14XvrVQZXeUxr0+wJjG+zW7CvhVZqa3o6k1kiS2BIaA7egw7MeDg9Fpqqgy
	Hx2HMVZPwzLwGUVJ9zezho8xrapxMY2N4w7ZXpuELRE25yPGu+kbCXz/lHraWgwGLgDM
	75pQ==
Received: by 10.50.91.225 with SMTP id ch1mr8250510igb.39.1335722154923;
	Sun, 29 Apr 2012 10:55:54 -0700 (PDT)
Received: from [192.168.1.111] (S0106586d8f4832af.tb.shawcable.net.
	[24.109.142.27])
	by mx.google.com with ESMTPS id l9sm25463559iga.6.2012.04.29.10.55.53
	(version=SSLv3 cipher=OTHER); Sun, 29 Apr 2012 10:55:53 -0700 (PDT)
Message-ID: <4F9D80B1.8060504@gmail.com>
Date: Sun, 29 Apr 2012 13:56:01 -0400
From: Derek Buitenhuis <derek.buitenhuis@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:12.0) Gecko/20120420 Thunderbird/12.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
	<1327257682-1324-1-git-send-email-derek.buitenhuis@gmail.com>
	<CAMKF1sq0K_uTNLbACaUO=-dQVj8JPkWbjbDxubTZFm6cxRRJPw@mail.gmail.com>
	<4F29F010.5030406@gmail.com>
	<CAMKF1soPhW=-A9z5i7z3Msi4jjE9jB5m3yXKVrn1tRgn_=fwxw@mail.gmail.com>
In-Reply-To: <CAMKF1soPhW=-A9z5i7z3Msi4jjE9jB5m3yXKVrn1tRgn_=fwxw@mail.gmail.com>
X-Enigmail-Version: 1.4.1
Subject: Re: [PATCH 2/2 v2] binutils: Always enable plugins
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
X-List-Received-Date: Sun, 29 Apr 2012 17:55:55 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 02/02/2012 12:04 AM, Khem Raj wrote:
> On Wed, Feb 1, 2012 at 6:08 PM, Derek Buitenhuis
> <derek.buitenhuis@gmail.com> wrote:
>> On 22/01/2012 1:57 PM, Khem Raj wrote:
>>>
>>> while this patch is ok. It occurs to me that we might have to find an
>>> easier way to specify common options once for all binutils recipes
>>
>>
>> So uh, I am not clear if this patch will be pushed or if you're
>> waiting for a refactor of binutils...
> 
> this is ok to go in. cleanup can happen at later times

Ping! Resurrecting an old thread!

Is this going to be pushed?

- Derek

