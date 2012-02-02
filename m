Return-Path: <derek.buitenhuis@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10176E004D2
	for <poky@yoctoproject.org>; Wed,  1 Feb 2012 18:08:15 -0800 (PST)
Received: by iagz35 with SMTP id z35so3386648iag.35
	for <poky@yoctoproject.org>; Wed, 01 Feb 2012 18:08:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=n28hEMjgHGKwJKHk/6jHoa+iO5PyFQV2Z6KpmhNo3EM=;
	b=MlA0L5z3StyusYl0JvfOzTcL+bimx8nkuiVrf9qYt1uFk9Tkt6DhmMyLqwgQqiKSJE
	Ts+gNx2wmK+/XOdIp9hR5RgK38b0qZBh4nDnld9LO4kN1HhkiVfl7waP2tvhkDhbj3SS
	HefNdZWpgkCF8Y0iyLOmhvOcl0Mx3FGQB+LL4=
Received: by 10.50.140.101 with SMTP id rf5mr1114881igb.27.1328148494534;
	Wed, 01 Feb 2012 18:08:14 -0800 (PST)
Received: from [192.168.1.111] (S0106586d8f4832af.tb.shawcable.net.
	[174.5.7.80])
	by mx.google.com with ESMTPS id k3sm9227655igq.1.2012.02.01.18.08.12
	(version=SSLv3 cipher=OTHER); Wed, 01 Feb 2012 18:08:13 -0800 (PST)
Message-ID: <4F29F010.5030406@gmail.com>
Date: Wed, 01 Feb 2012 21:08:16 -0500
From: Derek Buitenhuis <derek.buitenhuis@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
	<1327257682-1324-1-git-send-email-derek.buitenhuis@gmail.com>
	<CAMKF1sq0K_uTNLbACaUO=-dQVj8JPkWbjbDxubTZFm6cxRRJPw@mail.gmail.com>
In-Reply-To: <CAMKF1sq0K_uTNLbACaUO=-dQVj8JPkWbjbDxubTZFm6cxRRJPw@mail.gmail.com>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Thu, 02 Feb 2012 02:08:15 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22/01/2012 1:57 PM, Khem Raj wrote:
> while this patch is ok. It occurs to me that we might have to find an
> easier way to specify common options once for all binutils recipes

So uh, I am not clear if this patch will be pushed or if you're
waiting for a refactor of binutils...

- Derek

