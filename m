Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 95D174C8024E
	for <poky@pokylinux.org>; Mon,  9 May 2011 15:22:03 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QJWxu-00074H-2g
	for poky@pokylinux.org; Mon, 09 May 2011 22:22:02 +0200
Received: from 79.167.116.87 ([79.167.116.87])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Mon, 09 May 2011 22:22:02 +0200
Received: from gmane by 79.167.116.87 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Mon, 09 May 2011 22:22:02 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Mon, 09 May 2011 23:21:45 +0300
Organization: Reliable Embedded Systems
Message-ID: <iq9icp$d63$1@dough.gmane.org>
References: <iq04eq$4qb$1@dough.gmane.org>
	<4DC42B45.7080504@linux.intel.com>	<iq47ab$t58$1@dough.gmane.org>
	<iq98td$jo6$1@dough.gmane.org>
	<36510365-CB0D-47CE-B420-56E60650019D@dominion.thruhere.net>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: 79.167.116.87
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <36510365-CB0D-47CE-B420-56E60650019D@dominion.thruhere.net>
Subject: Re: Third party toolchain, kernel, bootloader
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 May 2011 20:22:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Koen,

On 05/09/2011 08:57 PM, Koen Kooi wrote:
>>  CC      arch/arm/kernel/sysfs_v7.o
>> /tmp/ccFfYvGD.s: Assembler messages:
>> /tmp/ccFfYvGD.s:264: Error: selected processor does not support ARM mode
>> `smc #0'
>> /tmp/ccFfYvGD.s:306: Error: selected processor does not support ARM mode
>> `smc #0'
>> make[1]: *** [arch/arm/kernel/sysfs_v7.o] Error 1
>> make: *** [arch/arm/kernel] Error 2
>> make: *** Waiting for unfinished jobs....
> 
> That's a 'feature' of binutils 2.21, either switch to 2.20 or do something like http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-texasinstruments/commit/?id=579d8efb3eb25b114de2640d98a511893d2f4841

I tried something like this in /arch/arm/kernel/Makefile:

plus_sec := $(call as-instr,.arch_extension sec,+sec)
AFLAGS_sysfs_v7.o :=-Wa,-march=armv7-a$(plus_sec)

... but it's not being picked up.

With V=1 I can not see what's passed to the assembler, only the compiler.

Regards,

Robert


..."What I look forward to is continued immaturity followed by death." -
Dave Barry

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



