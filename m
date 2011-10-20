Return-Path: <raj.khem@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56C4CE01341
	for <poky@yoctoproject.org>; Thu, 20 Oct 2011 16:01:50 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxk8 with SMTP id 8so116748yxk.35
	for <poky@yoctoproject.org>; Thu, 20 Oct 2011 16:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=AMvL4XE6JndsORnUbe7R/xEwUGO1nqDt/u3IOuB/a4c=;
	b=mnXob6c9QL9yI8WVGkGl2qHObmKbdkepjLrbHXKvSmX3kiRavP++CwUxkRZyg8iT4I
	/cd7APUHZBPM218tmOHToix8IZ4scqwrMYtTA09GxL2Ff4RSdEG5ztUxLpJ8RC9GS6Bx
	qmlsH8PBBHQYRp5OP/sRdNJGHw/ok7NYp5O+k=
Received: by 10.68.73.103 with SMTP id k7mr13634304pbv.30.1319151709217; Thu,
	20 Oct 2011 16:01:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.48.230 with HTTP; Thu, 20 Oct 2011 16:01:19 -0700 (PDT)
In-Reply-To: <CABRtByNQkz1vq_X1v-3dNNAJtPOJjT6074vjHb216KOAUT5m6Q@mail.gmail.com>
References: <CABRtByPR-GmTN54BVUxnORRxex6NcmyjqiOdb_yCgkndBPjOdQ@mail.gmail.com>
	<CABRtByNQkz1vq_X1v-3dNNAJtPOJjT6074vjHb216KOAUT5m6Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 20 Oct 2011 16:01:19 -0700
Message-ID: <CAMKF1soeVC7WUm7MsWrbu_-ZiQCz=H0ogcGRobG6pPrDTrwrTw@mail.gmail.com>
To: sonu vishwakarma <vishwasonu2000@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: :Package xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe: task do_compile: Failed
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
X-List-Received-Date: Thu, 20 Oct 2011 23:01:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 20, 2011 at 2:10 AM, sonu vishwakarma
<vishwasonu2000@gmail.com> wrote:
> Hi,
>
> When I modified configurations=C2=A0 in EXTRA_OECONF I have resolved the =
above
> error and still I am not proceeding in compilation .
> =C2=A0Now I am getting the following error.
> I am also attaching recipe=C2=A0 of xbmc :
> | In file included from ../SystemGlobals.h:25:0,
> | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from Skin=
.cpp:25:
> | ../cores/VideoRenderers/RenderManager.h:110:28: error: 'VAAPI::CHolder'
> has not been declared
> | ../cores/VideoRenderers/RenderManager.h: In member function 'void
> CXBMCRenderManager::AddProcessor(int&)':
> | ../cores/VideoRenderers/RenderManager.h:114:20: error: 'class
> CLinuxRendererGLES' has no member named 'AddProcessor'
> make[1]: *** [Skin.o] Error 1
> | make[1]: *** Waiting for unfinished jobs....
> | make[1]: Leaving directory
> `/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/ato=
m-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/=
git/xbmc/addons'
> | make: *** [xbmc/addons/addons.a] Error 2
> | FATAL: oe_runmake failed | ERROR: Function 'do_compile' failed (see
> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/atom=
-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/t=
emp/log.do_compile.13164
> for further information) NOTE: package
> xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe: task
> do_compile: Failed
>
> =C2=A0 Thanks and Regards,
> Sonu
> On Thu, Oct 20, 2011 at 1:01 PM, sonu vishwakarma <vishwasonu2000@gmail.c=
om>
> wrote:
>>
>> Hi,
>> I'm trying the build for XBMC 10.05 , I was =C2=A0getting the error in t=
he task
>> do_compile as
>> "RenderSystemGLES.cpp:253:31: error: call of overloaded 'abs(int64_t)' i=
s
>> ambiguous "
>> I looked around for solution and found a patch at
>> =C2=A0http://patches.openembedded.org/patch/1819/ and applied it
>> but even after applying the patch the problem remains the same.
>> I'm getting the error as below:
>> | RenderSystemGLES.cpp: In member function 'virtual bool
>> CRenderSystemGLES::IsExtSupported(const char*)':
>> | RenderSystemGLES.cpp:181:20: warning: comparison with string literal
>> results in unspecified behaviour
>> | RenderSystemGLES.cpp:186:25: warning: comparison with string literal
>> results in unspecified behaviour
>> | RenderSystemGLES.cpp: In member function 'virtual bool
>> CRenderSystemGLES::PresentRender()':
>> | RenderSystemGLES.cpp:253:31: error: call of overloaded 'abs(int64_t)' =
is
>> ambiguous
>> |
>> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots=
/fishriver/usr/include/stdlib.h:771:12:
>> note: candidates are: int abs(int)
>> | RenderSystemGLES.cpp:209:16: note: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 int64_t abs(int64_t)
>> |
>> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots=
/fishriver/usr/include/c++/cstdlib:170:3:
>> note: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 long long =
int __gnu_cxx::abs(long long int)
>> |
>> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots=
/fishriver/usr/include/c++/cstdlib:139:3:
>> note: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 long int s=
td::abs(long int)
>> | RenderSystemGLES.cpp:253:43: error: call of overloaded 'abs(int64_t&)'
>> is ambiguous
>> |
>> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots=
/fishriver/usr/include/stdlib.h:771:12:
>> note: candidates are: int abs(int)
>> | RenderSystemGLES.cpp:209:16: note: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 int64_t abs(int64_t)
>> |
>> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots=
/fishriver/usr/include/c++/cstdlib:170:3:
>> note: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 long long =
int __gnu_cxx::abs(long long int)
>> |
>> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots=
/fishriver/usr/include/c++/cstdlib:139:3:
>> note: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 long int s=
td::abs(long int)
>> | RenderSystemGLES.cpp: At global scope:
>> | RenderSystemGLES.cpp:209:16: warning: 'int64_t abs(int64_t)' defined b=
ut
>> not used
>> | make[1]: *** [RenderSystemGLES.o] Error 1
>> | make[1]: *** Waiting for unfinished jobs....
>> | WinSystem.cpp: In member function 'std::vector<RESOLUTION_WHR>
>> CWinSystemBase::ScreenResolutions(int)':
>> | WinSystem.cpp:126:7: warning: unused variable 'defResolution'
>> | WinSystem.cpp: In function 'bool rrSortPredicate(REFRESHRATE,
>> REFRESHRATE)':
>> | WinSystem.cpp:156:51: warning: suggest parentheses around '&&' within
>> '||'
>> | make[1]: Leaving directory
>> `/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/at=
om-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe=
/git/xbmc'
>> | make: *** [xbmc/xbmc.a] Error 2
>> | FATAL: oe_runmake failed
>> | ERROR: Function 'do_compile' failed (see
>> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/ato=
m-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/=
temp/log.do_compile.18880
>> for further information)
>> NOTE: package
>> xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe: task
>> do_compile: Failed
>> I'm pulling for the Fishriver machine . My host machine is Ubuntu 10.10
>> ,64 bit .
>> Can someone help me out of this problem ?

Make sure that all the DEPENDS are available and build successfully before =
xbmc
secondly try to clean rebuild the recipe. bitbake -ccleansstate
xbmc;bitbake xbmc
and if you still have the errors then it could be that xbmc itself
need some patches
in order to compile with compiler that you are using.

>> With Regards,
>> Sonu
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>

