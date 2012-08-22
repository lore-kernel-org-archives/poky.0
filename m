Return-Path: <flocirel@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEFFDE01404
	for <poky@yoctoproject.org>; Wed, 22 Aug 2012 14:35:52 -0700 (PDT)
Received: by wibhq12 with SMTP id hq12so95618wib.11
	for <poky@yoctoproject.org>; Wed, 22 Aug 2012 14:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=2hfgL760TWyU9tlDy+f/TzG3N67lqiKGtKXiFuUKJYI=;
	b=SnseOrYm8LQRR4yYOCSIv344WCCJLyXtrRcQqLDRhAo7B953vHvBG/ILlPK0fwZFVk
	YwySff+hPmdBab5JuCMRSukZPqX8ycNPALi4Y1JxpgACuIRgcbdIc8Ru1ri457zDQhol
	b324dItI702EGKc+bRlJEFQBPOFk015W9nF7wlT6vTEzha2dvKaHJvGB7VMIIB0An40k
	ICebTeBvsRxyY0h9dAfTBzc3XTvChREDi5GN9dEtZq34e21oyTieqH7W4QLKClOCAkrX
	p55iSiPFmLt/l58wwvwvj6vecf/dNg0OQr+LY30BWPX4KE9NBBv4msFK1gYXwP1mtUod
	nlqQ==
Received: by 10.180.97.33 with SMTP id dx1mr8982568wib.18.1345671349838;
	Wed, 22 Aug 2012 14:35:49 -0700 (PDT)
Received: from [192.168.1.118] ([79.115.97.134])
	by mx.google.com with ESMTPS id dc3sm41255529wib.7.2012.08.22.14.35.49
	(version=SSLv3 cipher=OTHER); Wed, 22 Aug 2012 14:35:49 -0700 (PDT)
Message-ID: <503550B4.6060708@gmail.com>
Date: Thu, 23 Aug 2012 00:35:48 +0300
From: Florin <flocirel@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: do_fetch error with gcc-cross-initial_4.7
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
X-List-Received-Date: Wed, 22 Aug 2012 21:35:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,
using today's poky master branch, sha 
603f6c631e9454d10517599e229943f2b26d08a5 , I get an error when fetching 
gcc.

I first get this warning:

WARNING: Failed to fetch URL 
git://github.com/mirrors/gcc.git;branch=gcc-4_7-branch;protocol=git, 
attempting MIRRORS if available


Then it stays stuck at fetching for a while and ends up with:

git clone --bare --mirror git://github.com/mirrors/gcc.git 
/home/me/poky/build/downloads/git2/github.com.mirrors.gcc.git failed 
with exit code 128, output:
STDOUT: Cloning into bare repository 
/home/me/poky/build/downloads/git2/github.com.mirrors.gcc.git...

STDERR: fatal: The remote end hung up unexpectedly
fatal: early EOF
fatal: index-pack failed

ERROR: Function failed: Fetcher failure for URL: 
'git://github.com/mirrors/gcc.git;branch=gcc-4_7-branch;protocol=git'. 
Unable to fetch URL from any source.


After the build stops with this error, retrying the bitbake command to 
produce the rootfs fetches gcc successfully and gcc (and the rest of the 
packages) is compiled just fine.
Is there anybody else seeing this behavior?

Thank you,
Florin

