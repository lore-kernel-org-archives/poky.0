Return-Path: <embedded.yogesh@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1024F4C8086E
	for <poky@yoctoproject.org>; Sun, 20 Feb 2011 23:33:09 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwi14 with SMTP id 14so426850pwi.35
	for <poky@yoctoproject.org>; Sun, 20 Feb 2011 21:33:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=4Majya/LAlSfQcnwyWoI4olP3wYuFuq4Rig5OWbMhVs=;
	b=SKBfsChJcMXwUk/6BWhcNA/ZD53yzIfezm/cD7rafQV9USgf9AcRroI6A0qJjuiIPr
	o3WF1gML/HAmxBgU9WpB2bWMtcEEBDwNbyV/nlgQXzg2Uu6u9Now+yObEs5NAG7v1ujR
	ibQvTYbWl98zRIva6NVFWmDMPZjq0HyH9uvVM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	b=ZtRn5uKY7Hb0AC+5HvKq4fx5AwCe9luSncyKgJLGf/UsNSYzRPjFaYzRV7I6R+tHvF
	1KoaUSwAQWIHPJhb7mYhIrf18goGsDjE1VsN0l1Vjo0gscqvPU9R5dsmh0ERe/hyK1AG
	gf/fZW2rOU8bWLwHcQ30QK/dcQ4FZadq59sZo=
Received: by 10.142.185.17 with SMTP id i17mr882951wff.353.1298266387370;
	Sun, 20 Feb 2011 21:33:07 -0800 (PST)
Received: from [192.168.11.118] ([115.111.25.162])
	by mx.google.com with ESMTPS id w27sm5635105wfd.16.2011.02.20.21.33.03
	(version=SSLv3 cipher=OTHER); Sun, 20 Feb 2011 21:33:05 -0800 (PST)
Message-ID: <4D61F90D.606@gmail.com>
Date: Mon, 21 Feb 2011 11:03:01 +0530
From: "embedded.yogesh" <embedded.yogesh@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.15pre) Gecko/20110207 Shredder/3.1.9pre
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <AANLkTinobVPqACVbGb5VjmuROL9-74r1E1B1Ux5xXvVo@mail.gmail.com>	<4D4FE267.5080907@mlbassoc.com>	<4D4FEAD4.50200@gmail.com>
	<4D50388A.4030707@linux.intel.com>
	<4D503B5A.3040805@mlbassoc.com> <4D50C055.5080200@gmail.com>
In-Reply-To: <4D50C055.5080200@gmail.com>
Subject: Re: chromium browser
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
X-List-Received-Date: Mon, 21 Feb 2011 05:33:09 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I tried to pull Chrome from OpenEmbedded and also pulled in its deps .
But at the time of building chrome getting following errors can any one 
have any idea ?

| + oe_runmake -r BUILDTYPE=Release

| + '[' xmake = x ']'

| + oenote make -e MAKEFLAGS= -r BUILDTYPE=Release

| elease'

| NOTE: make -e MAKEFLAGS= -r BUILDTYPE=Release

| + make -e MAKEFLAGS= -r BUILDTYPE=Release

|   CXX(target) out/Release/obj.target/app_base/ui/base/animation/animation.o

| cc1plus: warnings being treated as errors

| cc1plus: error: include location "/usr/include/libpng12" is unsafe for cross-compilation

| cc1plus: error: include location "/usr/include/gtk-2.0" is unsafe for cross-compilation

| cc1plus: error: include location "/usr/include/atk-1.0" is unsafe for cross-compilation

| cc1plus: error: include location

| + echo NOTE: 'make -e MAKEFLAGS= -r BUILDTYPE=Release'

| NOTE: make -e MAKEFLAGS= -r BUILDTYPE=Release

| + make -e MAKEFLAGS= -r BUILDTYPE=Release

|   CXX(target) out/Release/obj.target/app_base/ui/base/animation/animation.o

| cc1plus: warnings being treated as errors

| cc1plus: error: include location "/usr/include/libpng12" is unsafe for cross-compilation

| cc1plus: error: include location "/usr/include/gtk-2.0" is unsafe for cross-compilation

| cc1plus: error: include location "/usr/include/atk-1.0" is unsafe for cross-compilation

| "/usr/include/cairo" is unsafe for cross-compilation

| cc1plus: error: include location "/usr/include/pango-1.0" is unsafe for cross-compilation

| cc1plus: error: include location "/usr/include/gio-unix-2.0/" is unsafe for cross-compilation

| cc1plus: error: include location "/usr/include/glib-2.0" is unsafe for cross-compilation

| cc1plus: error: include location "/usr/include/pixman-1" is unsafe for cross-compilation

| cc1plus: error: include location "/usr/include/freetype2" is unsafe for cross-compilation

| cc1plus

| cc1plus: error: include location "/usr/include/cairo" is unsafe for cross-compilation

| cc1plus: error: include location "/usr/include/pango-1.0" is unsafe for cross-compilation

| cc1plus: error: include location "/usr/include/gio-unix-2.0/" is unsafe for cross-compilation

| cc1plus: error: include location "/usr/include/glib-2.0" is unsafe for cross-compilation

| cc1plus: error: include location "/usr/include/pixman-1" is unsafe for cross-compilation

| cc1plus: error: include location "/usr/include/freetype2" is unsafe for cross-compilation

| : error: include location "/usr/include/directfb" is unsafe for cross-compilation

| make: *** [out/Release/obj.target/app_base/ui/base/animation/animation.o] Error 1

| + die 'oe_runmake failed'

| + oefatal 'oe_runmake failed'

| + echo FATAL: 'oe_runmake failed'

| FATAL: oe_runmake failed

| + exit 1

|

| cc1plus: error: include location "/usr/include/directfb" is unsafe for cross-compilation

| make: *** [out/Release/obj.target/app_base/ui/base/animation/animation.o] Error 1

| + die 'oe_runmake failed'

| + oefatal 'oe_runmake failed'

| + echo FATAL: 'oe_runmake failed'

| FATAL: oe_runmake failed

| + exit 1


Thanks
Yogesh


On Tuesday 08 February 2011 09:32 AM, embedded.yogesh wrote:
> On Tuesday 08 February 2011 12:05 AM, Gary Thomas wrote:
>> On 02/07/2011 11:23 AM, Darren Hart wrote:
>>> On 02/07/2011 04:51 AM, embedded.yogesh wrote:
>>>> On Monday 07 February 2011 05:45 PM, Gary Thomas wrote:
>>>>> On 02/06/2011 09:52 PM, yogesh lal wrote:
>>>>>> Hi,
>>>>>>
>>>>>> I am new to poky, so don't know it will make any sense or not, but
>>>>>> can we build chromium browser using Poky ?
>>>>>
>>>>> What's your target architecture? Last I checked, only x86 and ARM
>>>>> are supported.
>>>>>
>>>>> It can be done, but it's certainly not for the faint of heart :-)
>>>>>
>>>>
>>>> I am working on X86 platform. Can you give some initial start up 
>>>> where I
>>>> have to look ?
>>>
>>> Find and download the Chromium source, then have a look at the Poky 
>>> Reference Guide for how to create an appropriate recipe, using 
>>> recipes for projects with similar source layouts
>>> as examples.
>>>
>>> http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html
>>
>> Probably a lot easier to start with the OpenEmbedded recipe
>> since it already works.  The biggest problem is that there
>> are a ton of dependencies, so you'll need to bring in those
>> recipes as well.
>>
>
> Thanks Gary Thomas  and Darren Hart ,
>
> I am look in to poky-ref-manual and OpenEmbedded recipes :)
>
> ---
> Yogesh


