Return-Path: <embedded.yogesh@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id BC8784C80053
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 03:07:14 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pvb32 with SMTP id 32so1266975pvb.35
	for <poky@yoctoproject.org>; Tue, 08 Feb 2011 01:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=hYfOUfVIWNNq4LYKoLNYDNfVAlsZafqMhrgGw7pGfCI=;
	b=rKqK1aQWszZIhCGDw3LM9QEX4ofZinSz0fRBGQYTcCSbhYeD4YxeA2QXFAALQ78Kx8
	K5f0SqTyK+SPTlaexDCKCPnxR8obijEM6PfrruVv3IRHo/+EJi8eX3dd09Wdiu239Xlt
	ABeglzHO2fRE/twX8S7PYrZBodtTMsMQ4+yG8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	b=jaV8wFCjkjLUSQSRyx4w0t0sCwxLoAJfUwzc99MpsWH0bxrXzyw+vZrK+WDh1HRKUy
	nVHXmYceIa/1JRy6fHUzebzBqfz4Zk2WkYxj5kXqVHFNSoaZTpe7Z9yFV+xYxMkBBPCC
	5Df7xefjgIbGRjOzteBZ+YmLFy9x5yqCg236w=
Received: by 10.142.158.16 with SMTP id g16mr16727873wfe.353.1297156034287;
	Tue, 08 Feb 2011 01:07:14 -0800 (PST)
Received: from [192.168.11.118] ([115.111.25.162])
	by mx.google.com with ESMTPS id q13sm7270978wfc.5.2011.02.08.01.07.11
	(version=SSLv3 cipher=RC4-MD5); Tue, 08 Feb 2011 01:07:13 -0800 (PST)
Message-ID: <4D5107BB.3080601@gmail.com>
Date: Tue, 08 Feb 2011 14:37:07 +0530
From: "embedded.yogesh" <embedded.yogesh@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.15pre) Gecko/20110202 Shredder/3.1.9pre
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1297127616.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297127616.git.scott.a.garman@intel.com>
Subject: Error while building poky-image-minimal-live
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
X-List-Received-Date: Tue, 08 Feb 2011 09:07:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I got following error while using poky for building 
"poky-image-minimal-live", can any one guide me what to do ?
"gconvert.c:55:2: error: #error GNU libiconv not in use but included 
iconv.h is from libiconv"

Thanks

