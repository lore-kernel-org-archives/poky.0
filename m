Return-Path: <derek.buitenhuis@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9188E0030B
	for <poky@yoctoproject.org>; Sun, 22 Jan 2012 11:01:29 -0800 (PST)
Received: by vbbfn1 with SMTP id fn1so1955977vbb.35
	for <poky@yoctoproject.org>; Sun, 22 Jan 2012 11:01:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=4VL6j9AWl0LrSnk/OL98pNkhyG28eF6u4UKSkZYmmGM=;
	b=wwYbKJHpx7+uRQb2ubNeu8gBv0EvDNk/7nYogNBE4YQfuEJr4OU/5/jQQP+dDJVqwA
	BY7KPuq041byLAhSlmH0E1mtc38e478AD2zflKECK3UAeWvGrkSPJlAMRvO1TxTSHmjR
	ox85JCTdUmQ6xUdiRuFcnbihhIUn58bDAdY3A=
Received: by 10.52.93.14 with SMTP id cq14mr1502422vdb.72.1327258889016;
	Sun, 22 Jan 2012 11:01:29 -0800 (PST)
Received: from [192.168.1.111] (S0106586d8f4832af.tb.shawcable.net.
	[174.5.7.80])
	by mx.google.com with ESMTPS id t7sm788402vdj.7.2012.01.22.11.01.28
	(version=SSLv3 cipher=OTHER); Sun, 22 Jan 2012 11:01:28 -0800 (PST)
Message-ID: <4F1C5D08.6020408@gmail.com>
Date: Sun, 22 Jan 2012 14:01:28 -0500
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
X-List-Received-Date: Sun, 22 Jan 2012 19:01:30 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22/01/2012 1:57 PM, Khem Raj wrote:
> while this patch is ok. It occurs to me that we might have to find an
> easier way to specify common options once for all binutils recipes

A singular EXTRA_OECONF = ... in binutils.inc, and use EXTRA_OECONF +=
elsewhere after including it, perhaps? :/

- Derek

