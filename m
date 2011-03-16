Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 825994C805BB
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 17:38:41 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2GMcarV007134
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 16 Mar 2011 15:38:36 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.231) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 16 Mar 2011 15:38:36 -0700
Message-ID: <4D813BEA.4050905@windriver.com>
Date: Wed, 16 Mar 2011 17:38:34 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D81355C.5060700@mlbassoc.com> <4D813850.1000700@windriver.com>
	<4D813966.30309@mlbassoc.com>
In-Reply-To: <4D813966.30309@mlbassoc.com>
X-Originating-IP: [172.25.36.231]
Cc: poky@yoctoproject.org
Subject: Re: Shared library packaging
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
X-List-Received-Date: Wed, 16 Mar 2011 22:38:41 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 3/16/11 5:27 PM, Gary Thomas wrote:
> On 03/16/2011 04:23 PM, Mark Hatle wrote:
>> On 3/16/11 5:10 PM, Gary Thomas wrote:
>>> I'm working on a recipe which has a number of shared libraries (actually
>>> this is just an import from OE (mozilla/nss) which has the same problem as listed below)
>>> The package creates a number of libraries (from the work tree):
>>>       image/usr/lib/libsmime3.so ->  libsmime3.so.1oe
>>>       image/usr/lib/libsmime3.so.1oe
>>>       image/usr/lib/libsoftokn3.so
>>>       image/usr/lib/libfreebl3.so
>>>       image/usr/lib/libnssutil3.so ->  libnssutil3.so.1oe
>>>       image/usr/lib/libnssutil3.so.1oe
>>>       image/usr/lib/libnss3.so ->  libnss3.so.1oe
>>>       image/usr/lib/libnss3.so.1oe
>>>       image/usr/lib/libssl3.so ->  libssl3.so.1oe
>>>       image/usr/lib/libssl3.so.1oe
>>>
>>> The .so.1oe files are packaged in nss_XXX.ipk and the .so files are
>>> put into nss-dev_XXX.ipk.  The problem is that there is code out there
>>> that only wants to look for the .so files (no -dev packages installed)
>>> and fail to find libsoftokn3.so and libfreebl3.so
>>
>> This sounds like an error in the SONAME embedded in the files.  For example if
>> the soname of libnss2.so.1oe, is libnss3.so, both it and the link will be
>> captured in the base package -- leaving the -dev empty.
>>
>> (If the SONAME is correct and it's not working this way that is likely a bug in
>> the routines breaking up base and dev packages!)
> 
> How can I check this (not my comfort zone)?

I usually run "readelf -a <library>"  and then grep for SONAME.

It's likely better to run the target version of readelf if the target is not IA32.

>>
>>> Is there a way to [easily?] force these two libraries to be packaged
>>> into nss-XXX.ipk?
>>
>> Assuming fixing the sonames is not an option, the alternative is to specify the
>> packages and FILES_... list of files for each chunk instead of letting the
>> system determine things automatically.  It's a bit messier, but you have
>> ultimate control of what is and is not included...
>>
>>> My current workaround is to use a post-install script to create the .so
>>> files from the .so.1oe files for these two libraries.  It gets my code
>>> (chromium-11 browser!) to work, but it's not very satisfying.
>>
>> If possible, fix the soname item... otherwise there can be loader problems if
>> the device doesn't end up with an ld.so.cache...  (which is why the link is
>> working I suspect...)
> 
> I think the problem is in some very messy Mozilla code that uses dl_load() directly
> and only looks for the .so file name.
> 
> I'll probably go with the FILES solution.
> 

Ya, dl_loaded files don't follow the normal conventions, the files approach is
likely your only solution then.

--Mark

