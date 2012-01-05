Return-Path: <derek.buitenhuis@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECF1BE00303
	for <poky@yoctoproject.org>; Thu,  5 Jan 2012 12:33:18 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iapp10 with SMTP id p10so1894404iap.35
	for <poky@yoctoproject.org>; Thu, 05 Jan 2012 12:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=gyl1G220EaDUMoWhLrNAjeutA/rFBNi8QuLKoyq8cIQ=;
	b=fL71xie+mJ7TkBws3x6ANypOTmJULLxSVMSunBHc7mQBzPaaGKqNNRUaIj+70f7Ykg
	E2Jye8c2xCYJUa4IVbmdd6LQdDn3F3UhNfYwPhHubAwqgGTH23ANgdjANQHAsEaW7XW2
	ex7+goDfKmFY8DshLj+jO7ZRNdXB0ENENws9w=
Received: by 10.43.52.129 with SMTP id vm1mr3521894icb.15.1325795598372;
	Thu, 05 Jan 2012 12:33:18 -0800 (PST)
Received: from [192.168.1.111] (S0106586d8f4832af.tb.shawcable.net.
	[174.5.7.80])
	by mx.google.com with ESMTPS id x18sm205157551ibi.2.2012.01.05.12.33.17
	(version=SSLv3 cipher=OTHER); Thu, 05 Jan 2012 12:33:17 -0800 (PST)
Message-ID: <4F060913.5030402@gmail.com>
Date: Thu, 05 Jan 2012 15:33:23 -0500
From: Derek Buitenhuis <derek.buitenhuis@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
	<4F0604C9.1070208@linux.intel.com>
In-Reply-To: <4F0604C9.1070208@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] binutils-cross-canadian: Allow ld-is-gold
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
X-List-Received-Date: Thu, 05 Jan 2012 20:33:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/01/2012 3:15 PM, Saul Wold wrote:
>
> Merged into OE-Core
>
> In the future for OE-Core (meta/*) changes please send them to
> openembedded-core@lists.openembedded.org
>
> Thanks
>      Sau!

Thanks, and noted for future reference.

Cheers,

- Derek

