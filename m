Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B15244C80815
	for <poky@yoctoproject.org>; Tue,  9 Nov 2010 09:17:01 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA9FH12F016245
	for <poky@yoctoproject.org>; Tue, 9 Nov 2010 07:17:01 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 9 Nov 2010 07:17:00 -0800
Received: from Macintosh-5.local ([172.25.36.228]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 9 Nov 2010 07:17:00 -0800
Message-ID: <4CD965EB.9030008@windriver.com>
Date: Tue, 09 Nov 2010 09:16:59 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1289199612.1683.4.camel@eric-desktop> <4CD8AFD4.3060606@intel.com>
	<1289278354.15591.20.camel@eric-desktop>
In-Reply-To: <1289278354.15591.20.camel@eric-desktop>
X-OriginalArrivalTime: 09 Nov 2010 15:17:00.0932 (UTC)
	FILETIME=[2857F440:01CB8021]
Subject: Re: [PULL]Fix moving libtcl8.5.so into tcl-lib.
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
X-List-Received-Date: Tue, 09 Nov 2010 15:17:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/8/10 10:52 PM, Lu Jingdong wrote:
> Saul:
>
>      tcl provides only one library named "libtcl8.5.so" and it hasn't
> libraries named like "libtcl8.5.so.*". So when we use "so.*" in  FILES_
> ${PN}-lib = "${libdir}/libtcl8.5.so.*", we can't include "libtcl8.5.so"
> into "tcl-lib" package and we can't get the package "tcl-lib" because it
> is a empty package.
>
>      It doesn't like other libraries. For example, libxcb provides
> "libxcb-glx.so.0.0.0", "libxcb-glx.so.0" and "libxcb-glx.so". Among of
> them, "libxcb-glx.so.0" and "libxcb-glx.so" are symbol links of
> "libxcb-glx.so.0.0.0", so we can use the "so.*" and it includes the
> following two files("libxcb-glx.so.0.0.0" and "libxcb-glx.so.0"). The
> file "libxcb-glx.so" is in the "libxcb-dev" package. I am not sure
> whether "libxcb-glx.so" should in the "libxcb-dev".

This is likely a check we may want to add to our QA suite.  The rule for which 
symlinks must be in the run-time package vs a development package is:


Run-time:
The actual dynamic library file (duh)
Symlinks to the dynamic library file with the filename of an SONAME specified by 
the library file


Development:
Any "other" symlinks to the dynamic library NOT referenced by an SONAME
Any static library files
Any symlinks to static library files
Any (related) .la files
Any (related) .pc files
Any (related) headers


It should be fairly simple to validate the run-time, and lack of development 
components in the run-time package.


Does anyone know if this validation is already part of the sanity checking, or 
would this be an enhancement?

--Mark

> On Mon, 2010-11-08 at 18:20 -0800, Saul Wold wrote:
>> On 11/07/2010 11:00 PM, Lu Jingdong wrote:
>>> Note:<commit_id>   parameter assumed as 'HEAD'
>>>
>>>     meta/recipes-devtools/tcltk/tcl_8.5.8.bb                 |    4
>>>     1 files changed, 2 insertions(+), 2 deletions(-)
>>>
>>> Jingdong Lu (1):
>>>         Fix moving libtcl8.5.so into tcl-lib.
>>>
>>> Pull URL:
>>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro
>>>
>> Jingdong:
>>
>> Can you give some additional rational as to why this change is needed,
>> other recipes use the "so.*" format vs the "so*".
>>
>> Thanks
>> 	Sau!
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>


