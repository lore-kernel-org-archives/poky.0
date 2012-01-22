Return-Path: <derek.buitenhuis@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6FE2E01371
	for <poky@yoctoproject.org>; Sun, 22 Jan 2012 10:41:51 -0800 (PST)
Received: by vbbfn1 with SMTP id fn1so1947856vbb.35
	for <poky@yoctoproject.org>; Sun, 22 Jan 2012 10:41:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=NhobiKrE9SGHTa9/CRFJi8YyMJCBw5fVW5FS/tEexKg=;
	b=NgucBOm9pM+B+ePK+BHFKX7KLKAjXWfnTu3viNofXsfxudUrPkxg7v1upNVmVXNMLJ
	xA/7l9RQZgTrJ9MUN3cZCn1wH0WPkPYAwncXG9jwV2xDdGitG5nVeADZBvc+xXQZegdk
	S0Hmoo7P1RnNjaEZQbZ/DHw5JnU7DMs6/ZVjU=
Received: by 10.52.23.5 with SMTP id i5mr2579999vdf.50.1327257711204;
	Sun, 22 Jan 2012 10:41:51 -0800 (PST)
Received: from [192.168.1.111] (S0106586d8f4832af.tb.shawcable.net.
	[174.5.7.80])
	by mx.google.com with ESMTPS id fq7sm8636968vdc.16.2012.01.22.10.41.49
	(version=SSLv3 cipher=OTHER); Sun, 22 Jan 2012 10:41:50 -0800 (PST)
Message-ID: <4F1C586E.7030809@gmail.com>
Date: Sun, 22 Jan 2012 13:41:50 -0500
From: Derek Buitenhuis <derek.buitenhuis@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: raj.khem@gmail.com
References: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
	<1325640237-17019-2-git-send-email-derek.buitenhuis@gmail.com>
	<20120121225823.GA12691@sakrah.homelinux.org>
In-Reply-To: <20120121225823.GA12691@sakrah.homelinux.org>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Sun, 22 Jan 2012 18:41:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 21/01/2012 5:58 PM, Khem Raj wrote:
> enabling plugins regardless is a good thing and since we use binutils
> 2.22+ now a days in oe-core plugins are well supported. Please submit the patch
> where you add this option (--enable-plugins) to binutils common configure
> that will be add to EXTRA_OECONF in binutils.inc
>
> -Khem

Sweet! Sorry I've been MIA for a bit. I've sent in the new patch,
which patches all 3 includes. From a look, this seemed necessary,
but if it isn't, let me know.

Patch is sent in reply to the original patch set, titled:

     [PATCH 2/2 v2] binutils: Always enable plugins

Enjoy.

- Derek

