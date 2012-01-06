Return-Path: <derek.buitenhuis@gmail.com>
Received: from mail-tul01m020-f176.google.com (mail-tul01m020-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89C24E00307
	for <poky@yoctoproject.org>; Fri,  6 Jan 2012 13:48:29 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by obcwn14 with SMTP id wn14so3386858obc.35
	for <poky@yoctoproject.org>; Fri, 06 Jan 2012 13:48:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=Jdho7TOkqEAgUmwVKY/p2nPHXEBinxAhR7ObUCFTI4o=;
	b=PiDpmvQh1gkz7HjqcAJjT14qRDIhNvk69P0qmxxDAcoVDVVgcCMhqBSr+qulVzU02+
	lhs4YqrXN+Y8KcxbEk7/viijV3CXk7Hwp11P3M9l2YQ7w5pO+JWmvqwUMbQrDA+eIiME
	PoTsRJqLcCsnhz/DYwlk4jZ8bBeFFpR4qRhIw=
Received: by 10.50.77.129 with SMTP id s1mr8826132igw.25.1325886508581;
	Fri, 06 Jan 2012 13:48:28 -0800 (PST)
Received: from [192.168.1.111] (S0106586d8f4832af.tb.shawcable.net.
	[174.5.7.80])
	by mx.google.com with ESMTPS id q30sm1947410ibc.1.2012.01.06.13.48.26
	(version=SSLv3 cipher=OTHER); Fri, 06 Jan 2012 13:48:27 -0800 (PST)
Message-ID: <4F076C34.8090302@gmail.com>
Date: Fri, 06 Jan 2012 16:48:36 -0500
From: Derek Buitenhuis <derek.buitenhuis@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
	<1325640237-17019-2-git-send-email-derek.buitenhuis@gmail.com>
In-Reply-To: <1325640237-17019-2-git-send-email-derek.buitenhuis@gmail.com>
Subject: Re: [PATCH 2/2] binutils: Allow plugins
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
X-List-Received-Date: Fri, 06 Jan 2012 21:48:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Should I send this patch to oe-core (ML and/or github pull req) instead?

- Derek

