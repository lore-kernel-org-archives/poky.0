Return-Path: <raj.khem@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58964E0129F
	for <poky@yoctoproject.org>; Thu, 13 Oct 2011 16:49:01 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyh3 with SMTP id 3so822871gyh.35
	for <poky@yoctoproject.org>; Thu, 13 Oct 2011 16:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=z7dwn2nL64l/NE5QM3NbP1klLxX+v+mdaoE2Ro00fdI=;
	b=o1X74OZCE7rYC9CplU1D0FkqR1Kww/uHjq7WW8b2gdr5iKGtBBKO0/HoNXjJNz6oFx
	OhHKZZjYIxsSkn54+mEPSnBJ5B6Ezi4M1Sym7tOrm5bvY0cZpX7qWcWsLPXDdUhhRzEm
	4teU3TLp3oktMqcZTt0FzicV1qNQCJhofTtLw=
Received: by 10.68.32.162 with SMTP id k2mr12179070pbi.132.1318549739060; Thu,
	13 Oct 2011 16:48:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.48.230 with HTTP; Thu, 13 Oct 2011 16:48:29 -0700 (PDT)
In-Reply-To: <CABRtByNzfG_JRW8shYhH6bPqXv_GjwoG2FaBZxVT=ftrco_5xA@mail.gmail.com>
References: <CABRtByO8SsdAQm+0dH9N946MN8nMXnfGQAbMjAYV1hu4U9rBnQ@mail.gmail.com>
	<6423790F-59AC-4742-9951-6AE5E1570736@dominion.thruhere.net>
	<CABRtByMv-ZyuuO_+BA96w-ZM51ARynDjRom-N6Fmng7eQWEpJA@mail.gmail.com>
	<2B72F198-5F75-4D2C-82AE-B385274B4D35@dominion.thruhere.net>
	<CABRtByMau9WGzTwHuwk8MJr52MK2E+HqRMunpDB22S-6tf=Ztw@mail.gmail.com>
	<CABRtByNzfG_JRW8shYhH6bPqXv_GjwoG2FaBZxVT=ftrco_5xA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 13 Oct 2011 16:48:29 -0700
Message-ID: <CAMKF1sqe-Y2=cqg4wz=DZXys_XizyiWqd26W3AvEWkD=j=SUUQ@mail.gmail.com>
To: sonu vishwakarma <vishwasonu2000@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: : package libsdl-mixer-1.2.11-r5: task do_compile: Failed
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
X-List-Received-Date: Thu, 13 Oct 2011 23:49:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 12, 2011 at 10:46 PM, sonu vishwakarma
<vishwasonu2000@gmail.com> wrote:
>
>
> On Thu, Oct 13, 2011 at 11:13 AM, sonu vishwakarma
> <vishwasonu2000@gmail.com> wrote:
>>
>> Hi,
>> I tried the build using the recipe from meta-oe but still the error
>> remains the same .

It might need to regenerate libtool macros to support sysroot

>> ./libtool: line 6399: cd: =3D/usr/lib: No such file or directory
>> I think the problem is with the path '=3D/usr/lib'
>> I found a patch to libtool
>> 'libtool-2.4-r2/libtool-2.4/libltdl/config/ltmain.m4sh'
>> that describes a function " if PATH begins with the sysroot replace it
>> with =3D ",
>> this=C2=A0may be creating the problem , the function is as below:
>> =C2=A0#func_replace_sysroot PATH
>> =C2=A0#If PATH begins with the sysroot, replace it with =3D and
>> =C2=A0#store the result into func_replace_sysroot_result.
>> func_replace_sysroot ()
>> {
>> =C2=A0 case "$lt_sysroot:$1" in
>> =C2=A0 ?*:"$lt_sysroot"*)
>> =C2=A0 =C2=A0 func_stripname "$lt_sysroot" '' "$1"
>> =C2=A0 =C2=A0 func_replace_sysroot_result=3D"=3D$func_stripname_result"
>> =C2=A0 =C2=A0 ;;
>> =C2=A0 *)
>> =C2=A0 =C2=A0 # Including no sysroot.
>> =C2=A0 =C2=A0 func_replace_sysroot_result=3D$1
>> =C2=A0 =C2=A0 ;;
>> =C2=A0 esac
>> }
>> Also in the=C2=A0libSDL.la i could see the definition of dependency_libs=
 that
>> include "=3D/usr/lib.
>> What to do now ? i couldn't find a solution to this .
>> Thanks & Regards,
>> Sonu
>>
>> On Wed, Oct 12, 2011 at 3:59 PM, Koen Kooi <koen@dominion.thruhere.net>
>> wrote:
>>>
>>> Op 12 okt. 2011, om 12:18 heeft sonu vishwakarma het volgende geschreve=
n:
>>>
>>> >
>>> > But i'm using the recipe libsdl-mixer_1.2.11.bb taken from
>>> > open-embedded only . I Couldn't get meta-oe , where could i find it??=
??
>>>
>>> Try http://tinyurl.com/5wpezm3
>>>
>>>
>>>
>>> >
>>> > Thanks & Regards,
>>> > Sonu.
>>> >
>>> > On Wed, Oct 12, 2011 at 3:16 PM, Koen Kooi <koen@dominion.thruhere.ne=
t>
>>> > wrote:
>>> >
>>> > Op 12 okt. 2011, om 07:11 heeft sonu vishwakarma het volgende
>>> > geschreven:
>>> >
>>> > > Hi,
>>> > >
>>> > > I'm trying the build for XBMC 10.05 which depends on libsdl-mixer. =
I
>>> > > pulled the recipe from open embedded which i'm
>>> > > sharing here along with the log file.
>>> > > I'm getting the error as below :
>>> > >
>>> > > | ./libtool: line 6399: cd: =3D/usr/lib: No such file or directory
>>> > > | libtool: link: warning: cannot determine absolute directory name =
of
>>> > > `=3D/usr/lib'
>>> > > | /bin/grep: =3D/usr/lib/libdirectfb.la: No such file or directory
>>> > > | /bin/sed: can't read =3D/usr/lib/libdirectfb.la: No such file or
>>> > > directory
>>> > > | libtool: link: `=3D/usr/lib/libdirectfb.la' is not a valid libtoo=
l
>>> > > archive
>>> > > | make: *** [build/libSDL_mixer.la] Error 1
>>> > > | make: *** Waiting for unfinished jobs....
>>> > > | FATAL: oe_runmake failed
>>> > > | ERROR: Function 'do_compile' failed (see
>>> > > /home/sct/logi/test-gigabyte/poky_gigabyte_16Sep2011/build/tmp/work=
/atom-poky-linux/libsdl-mixer-1.2.11-r5/temp/log.do_compile.23677
>>> > > for further information)
>>> > > NOTE: package libsdl-mixer-1.2.11-r5: task do_compile: Failed
>>> > >
>>> > > I'm pulling for the Fishriver machine . My host machine is Ubuntu
>>> > > 10.10 ,64 bit .
>>> > > Can someone help me out of this problem ?
>>> >
>>> >
>>> > The libsdl-mixer recipe in meta-oe works just fine, why not use that?
>>> >
>>> >
>>> > _______________________________________________
>>> > poky mailing list
>>> > poky@yoctoproject.org
>>> > https://lists.yoctoproject.org/listinfo/poky
>>> >
>>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>

