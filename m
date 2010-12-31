Return-Path: <alees@google.com>
Received: from smtp-out.google.com (smtp-out.google.com [74.125.121.67])
	by mx1.pokylinux.org (Postfix) with ESMTP id 051DF4C80BD4
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 04:51:26 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(512-bit key; insecure key) header.i=@google.com;
	x-dkim-adsp=none (insecure policy)
Received: from hpaq3.eem.corp.google.com (hpaq3.eem.corp.google.com
	[172.25.149.3]) by smtp-out.google.com with ESMTP id oBVApPCe016442
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 02:51:25 -0800
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1293792685; bh=8jtDqKvk2N+gKjf/DTU/ELjR+Cs=;
	h=MIME-Version:Sender:From:Date:Message-ID:Subject:To:Content-Type;
	b=TJc+fAmp6XJ0UXpmQTKUVI+C/jE6Dz/YrfyGMOGWSLjsY1ob/PN4KiiXAELcoN9ki
	NrZ5iFGY7XUwnxkkK0Utg==
Received: from qyk12 (qyk12.prod.google.com [10.241.83.140])
	by hpaq3.eem.corp.google.com with ESMTP id oBVApNwW012100
	(version=TLSv1/SSLv3 cipher=RC4-MD5 bits=128 verify=NOT)
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 02:51:24 -0800
Received: by qyk12 with SMTP id 12so11855802qyk.12
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 02:51:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=beta;
	h=domainkey-signature:received:mime-version:sender:received:from:date
	:x-google-sender-auth:message-id:subject:to:content-type;
	bh=+di5/IcXqL7H+++TxLj8i6FmHPik66Rj6ORL7YM/12Q=;
	b=XEoEQmUtTdmah1SK1qFtyGSDT3XL4i08ad0Ghkv6cW0dFTVfBGMSyCFd4CZh43oeX4
	HlUm6D+Te6O/SMn5EZAg==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=google.com; s=beta;
	h=mime-version:sender:from:date:x-google-sender-auth:message-id
	:subject:to:content-type;
	b=Tsx+sRaZFoNU8YRMDsBIe2I9mTIAoxTkgQEUfVN1ex97Eb/quxsyn8WjURyXgGf6uJ
	AtJ8uEJPbfpFpwdfllEg==
Received: by 10.224.11.74 with SMTP id s10mr13604731qas.265.1293792683122;
	Fri, 31 Dec 2010 02:51:23 -0800 (PST)
MIME-Version: 1.0
Sender: alees@google.com
Received: by 10.220.180.199 with HTTP; Fri, 31 Dec 2010 02:51:02 -0800 (PST)
From: Angus Lees <guslees@gmail.com>
Date: Fri, 31 Dec 2010 21:51:02 +1100
X-Google-Sender-Auth: SoNqsA33n6JZGmpxap0nFT9439E
Message-ID: <AANLkTimxU1u-NZUuAft=BqVXZuphRNi06OxH_cw55Hae@mail.gmail.com>
To: poky@yoctoproject.org
X-System-Of-Record: true
Subject: question re gcc-runtime vs libgcc
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
X-List-Received-Date: Fri, 31 Dec 2010 10:51:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

Sorry if the answer is obvious, but I'm trying to put together some
sdk packages and I can't see how gcc-runtime is supposed to build.

I'd like to have a static libgcc.a to isolate the sdk from whatever
libgcc.so the platform ships.  I've modified the gcc-cross{,sdk}
recipes appropriately and this part all seems to build as expected.
gcc-runtime however fails to build because libgcc doesn't get pulled
from its gcc-build-internal-* hiding place until do_install() - way
too late to be available during the build of the actual gcc-runtime
libraries.  I don't see how the situation would be any different with
a shared libgcc.so.

Can someone walk me through how this part of gcc-runtime is meant to work?


Also: I think in my case, I actually want to ship libgcc.a in
gcc-cross{,sdk} itself since it needs to correspond with the compiler
used (rather than the target sysroot as such) - but I admit I'm a bit
lost in a maze of twisty cross targets, all almost alike.  Does this
seem a reasonable thing to do?
(This made sense to me in openembedded-land, but I haven't quite got
my head around the gcc-runtime and gcc-crosssdk subtleties yet)

-- 
 - Gus

