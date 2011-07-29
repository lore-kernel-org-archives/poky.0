Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 356AD4C8007E
	for <poky@yoctoproject.org>; Fri, 29 Jul 2011 11:57:10 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6TGv97a029579
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 29 Jul 2011 09:57:09 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 29 Jul 2011 09:57:08 -0700
Message-ID: <4E32E664.2020109@windriver.com>
Date: Fri, 29 Jul 2011 11:57:08 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:5.0) Gecko/20110624 Thunderbird/5.0
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <C10D3FB0CD45994C8A51FEC1227CE22F2C40DBB269@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F2C40DBB269@shsmsx502.ccr.corp.intel.com>
Subject: Re: Need some advice of how to get the ld.so names in multilib situation
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
X-List-Received-Date: Fri, 29 Jul 2011 16:57:10 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 7/28/11 10:20 PM, Lu, Lianhao wrote:
> Hi guys,
> 
> Bug #1236 http://bugzilla.pokylinux.org/show_bug.cgi?id=1236
> 
> In order to get ldd work under the multilib situation, ldd and ldconfig.h need
> to know all the full path names for all the dynamic loaders(ld.so) in the
> current multilib configuration. 
> 
> The dynamic loader's full path names would be something like:
>   ${base_libdir}/<ld.so name>
> 
> We can get the ${base_libdir} for each variant in the multilib configuration by
> setting the correct TUNE name. The problem resides in the <ld.so name>. For
> i586 and x86_32, the ld.so name would be "ld-linux.so.2"; for x86_64 it would
> be "ld-linux-x86-64.so.2"; but for other ABI, I see names like "ld-linux.so.3",
> "ld.so.1", "ld64.so.1", etc.
> 
> So the question is how we can get the correct ld.so names in the current
> multilib configuration? Hard code them in the TUNE configurations?

We can likely create a custom ldd and ldconfig.h (assuming it's only used by
ldconfig) machine package.  In this we can iterate over the multilibs configured
for the system and construct the necessary table of library paths.  (This is of
course way more complicated then just saying "the paths are here for this
architecture..."  but it seems to me that people want/require the flexibility to
change the library paths for their particular devices and distributions.

To iterate over it, we'll need to use python and then the base and multilib
values.. we can evaluate the ${libdir} and ${base_libdir} as necessary.  For the
individual ld.so names, those will need to be encoded into the libc itself.. the
tunes don't have the knowledge for the machine ABI -> ld.so mapping.

Then the table can be constructed something like (pseudo code, not python):

def so_mapping:
	if "i386" return "ld-linux.so.2"
	if "x86_64" return "ld-linux-x86-64.so.2"
	...

set multilib value to ""
so_name = so_mapping($TARGET_ARCH)
echo ${base_libdir}/${so_name} > list

for each multilib
 set OVERRIDES with multilib
 so_name = so_mapping($TARGET_ARCH)
 echo ${base_libdir}/${so_name} >> list
done

--Mark

> Best Regards,
> -Lianhao
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


