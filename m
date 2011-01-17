Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 950B84C81065
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 09:44:37 -0600 (CST)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1PerG0-0003E9-VM from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Mon, 17 Jan 2011 07:44:37 -0800
Received: from na2-mail.mgc.mentorg.com ([134.86.114.213]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Mon, 17 Jan 2011 07:44:35 -0800
Received: from [172.30.80.246] ([172.30.80.246]) by na2-mail.mgc.mentorg.com
	with Microsoft SMTPSVC(6.0.3790.3959); 
	Mon, 17 Jan 2011 08:44:35 -0700
Message-ID: <4D3463E2.9070102@mentor.com>
Date: Mon, 17 Jan 2011 08:44:34 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1295089968.git.dexuan.cui@intel.com>	<5e7d2160749c1364b238aa38d358bf5c0bfabb37.1295089968.git.dexuan.cui@intel.com>	<18993D32-C58B-4FC8-901E-E90046FF27B5@dominion.thruhere.net>
	<1865303E0DED764181A9D882DEF65FB685AFA1B328@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB685AFA1B328@shsmsx502.ccr.corp.intel.com>
X-OriginalArrivalTime: 17 Jan 2011 15:44:35.0764 (UTC)
	FILETIME=[71340740:01CBB65D]
Subject: Re: [PATCH 2/2] libc-package.bbclass: should not rm scsi/*.h
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
X-List-Received-Date: Mon, 17 Jan 2011 15:44:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/15/2011 04:50 AM, Cui, Dexuan wrote:
> Koen Kooi wrote:
>> Op 15 jan 2011, om 12:23 heeft Dexuan Cui het volgende geschreven:
>>
>>> {e}glibc should install the scsi/*.h files, which are needed by hal.
>>> Currently hal can build because eglibc-initial (which has its own
>>> do_install) installs the files. In future eglibc will have its own
>>> sysroot, so hal
>>> won't build.

Unrelated, is it on the roadmap already to upgrade things to use 
devicekit rather than hal?

>>> BTW: in OE side, eglibc's do_install also doesn't remove the files.
>>
>> As some background info: There's a conflict between
>> linux-libc-headers-dev and libc-dev when installing on the target. In
>> OE we do this instead:
>>
>> koen@dominion:/OE/org.openembedded.dev$ grep scsi
>> recipes/linux-libc-headers/ -rn
>> recipes/linux-libc-headers/linux-libc-headers_2.6.32.bb:23:     rm -f
>> ${D}${exec_prefix}/include/scsi/scsi.h
>> recipes/linux-libc-headers/linux-libc-headers_2.6.31.bb:23:     rm -f
>> ${D}${exec_prefix}/include/scsi/scsi.h
>> recipes/linux-libc-headers/linux-libc-headers_2.6.34.bb:42:     rm -f
>> ${D}${exec_prefix}/include/scsi/scsi.h
> My understanding is:
> Linux kernel should not export these files: in OE side see 91d3d92a acked by you. :-)
> So {e}glibc should supply the files -- previously poky did supply, but 7379ee77 removed the files -- I think this is incorrect.
>
> BTW: in poky, we can see linux-libc-headers_2.6.36.bb also correctly removes the file.

Correct.  The kernel (incorrectly) re-introduced exporting <scsi/scsi.h>.

-- 
Tom Rini
Mentor Graphics Corporation

