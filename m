Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id ED6C94C8005F
	for <poky@yoctoproject.org>; Thu,  9 Jun 2011 05:57:14 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p59AvEj1011575
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 9 Jun 2011 03:57:14 -0700 (PDT)
Received: from [128.224.162.154] (128.224.162.154) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 9 Jun 2011 03:57:14 -0700
Message-ID: <4DF0A70C.7080501@windriver.com>
Date: Thu, 9 Jun 2011 18:57:16 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Hatle, Mark" <mark.hatle@windriver.com>
X-Originating-IP: [128.224.162.154]
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Question about apply eglibc configurability to create minimal image
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
X-List-Received-Date: Thu, 09 Jun 2011 10:57:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Mark,

I am focus on eglibc itself compilation with disabling all the 
configurable options, right now eglibc can be compiled with disable all 
the configurable options.

But when I build core-image-minimal in a clear new directory, some 
packages build failed and they need eglibc supports, such as

gcc-runtime    depends on     libc-libm
ncurse            depends on    libc-posix-wchar-io libc-posix-clang-wchar
openssl           depends on    libc-inet libc-nsswitch
gettext            depends on    libc-spawn libc-locale-code 
libc-getlogin libc-utmp
...

After enable those options, the image size only decrease from 9.6M  to 
9.4M(qemux86). And the dependencies on eglibc is hard to break, 
something like  libcrypt getlogin(function) can't be breaken.
Could you give me some directions what should I do with eglibc 
configurability?
Thanks a lot!

I made a mistake that try eglibc configurability in a directory which 
has build core-image-minimal, so the packages which depend on eglibc 
didn't rebuild, and I didn't find the dependency before. I am sorry!

Regards,
Kai

