Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A17C7E00749
	for <poky@yoctoproject.org>; Mon, 19 Dec 2011 07:59:27 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBJFxPkF019231
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 19 Dec 2011 07:59:25 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.232) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 19 Dec 2011 07:59:25 -0800
Message-ID: <4EEF5F5C.4070502@windriver.com>
Date: Mon, 19 Dec 2011 09:59:24 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <CANdftmOF6p5eZoYR_TGO4XPe3X-PPE0tP-PwR8o835AnHHCXEQ@mail.gmail.com>
In-Reply-To: <CANdftmOF6p5eZoYR_TGO4XPe3X-PPE0tP-PwR8o835AnHHCXEQ@mail.gmail.com>
Subject: Re: qemu armv7a
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
X-List-Received-Date: Mon, 19 Dec 2011 15:59:28 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/19/11 2:48 AM, Foinel wrote:
> Hello,
> the default qemuarm build seems to be building for ARM926EJ-S as it
> requires tune-arm926ejs.
> Has anybody tried to build for armv7a (cortex a9) ? Have tried it
> myself, by modifying the qemuarf.conf to require tune-cortexa9.inc
> instead of tune-arm926ejs but the qemu machine won't boot anymore, it
> just stays blank.
> Any ideas, thoughts, suggestions regarding this would be appreciated.

The emulated QEMU machine is an arm926ej-s emulated ARM Versatile platform.

AFAIK, cortex a9 isn't supported in that version of QEMU, nor the emulated 
virtual platforms required to support the a9 either.

--Mark


