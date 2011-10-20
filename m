Return-Path: <raj.khem@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54A9FE01341
	for <poky@yoctoproject.org>; Thu, 20 Oct 2011 16:16:12 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyh3 with SMTP id 3so4520338gyh.35
	for <poky@yoctoproject.org>; Thu, 20 Oct 2011 16:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=DkfWeT/izcDSZVJ3mSrFoeg7Y3rwctYXDJKNirJgiN0=;
	b=wh4qUOzjGA2QGFtYhVGAXqxJWHtHPYyKVuSYqxmDorifc4w60FM1glREFhP/wElBWm
	GJCzr9xRFqul9g+1qtyA7qMVIgyhMh/RvLCJHRd1la7wEDZ/ubynxiN9GtSExxbJlN6/
	8j4DjSPwTw69xEMxfjwCohFKhWd+U40JesVqg=
Received: by 10.68.74.4 with SMTP id p4mr23157062pbv.47.1319152571313; Thu, 20
	Oct 2011 16:16:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.48.230 with HTTP; Thu, 20 Oct 2011 16:15:41 -0700 (PDT)
In-Reply-To: <CAMKF1soeVC7WUm7MsWrbu_-ZiQCz=H0ogcGRobG6pPrDTrwrTw@mail.gmail.com>
References: <CABRtByPR-GmTN54BVUxnORRxex6NcmyjqiOdb_yCgkndBPjOdQ@mail.gmail.com>
	<CABRtByNQkz1vq_X1v-3dNNAJtPOJjT6074vjHb216KOAUT5m6Q@mail.gmail.com>
	<CAMKF1soeVC7WUm7MsWrbu_-ZiQCz=H0ogcGRobG6pPrDTrwrTw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 20 Oct 2011 16:15:41 -0700
Message-ID: <CAMKF1spw3NVTYMLzEHH9LH+R70baxqbuPcfPddZ3fZ_2TvCUag@mail.gmail.com>
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
X-List-Received-Date: Thu, 20 Oct 2011 23:16:12 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 20, 2011 at 4:01 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Thu, Oct 20, 2011 at 2:10 AM, sonu vishwakarma
> <vishwasonu2000@gmail.com> wrote:
>> Hi,
>>
>> When I modified configurations=C2=A0 in EXTRA_OECONF I have resolved the=
 above
>> error and still I am not proceeding in compilation .
>> =C2=A0Now I am getting the following error.
>> I am also attaching recipe=C2=A0 of xbmc :
>> | In file included from ../SystemGlobals.h:25:0,
>> | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from Ski=
n.cpp:25:
>> | ../cores/VideoRenderers/RenderManager.h:110:28: error: 'VAAPI::CHolder=
'
>> has not been declared
>> | ../cores/VideoRenderers/RenderManager.h: In member function 'void
>> CXBMCRenderManager::AddProcessor(int&)':
>> | ../cores/VideoRenderers/RenderManager.h:114:20: error: 'class
>> CLinuxRendererGLES' has no member named 'AddProcessor'
>> make[1]: *** [Skin.o] Error 1
>> | make[1]: *** Waiting for unfinished jobs....
>> | make[1]: Leaving directory
>> `/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/at=
om-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe=
/git/xbmc/addons'
>> | make: *** [xbmc/addons/addons.a] Error 2
>> | FATAL: oe_runmake failed | ERROR: Function 'do_compile' failed (see
>> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/ato=
m-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/=
temp/log.do_compile.13164
>> for further information) NOTE: package
>> xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe: task
>> do_compile: Failed
>>
>> =C2=A0 Thanks and Regards,
>> Sonu
>> On Thu, Oct 20, 2011 at 1:01 PM, sonu vishwakarma <vishwasonu2000@gmail.=
com>
>> wrote:
>>>
>>> Hi,
>>> I'm trying the build for XBMC 10.05 , I was =C2=A0getting the error in =
the task
>>> do_compile as
>>> "RenderSystemGLES.cpp:253:31: error: call of overloaded 'abs(int64_t)' =
is
>>> ambiguous "
>>> I looked around for solution and found a patch at
>>> =C2=A0http://patches.openembedded.org/patch/1819/ and applied it
>>> but even after applying the patch the problem remains the same.
>>> I'm getting the error as below:
>>> | RenderSystemGLES.cpp: In member function 'virtual bool
>>> CRenderSystemGLES::IsExtSupported(const char*)':
>>> | RenderSystemGLES.cpp:181:20: warning: comparison with string literal
>>> results in unspecified behaviour
>>> | RenderSystemGLES.cpp:186:25: warning: comparison with string literal
>>> results in unspecified behaviour
>>> | RenderSystemGLES.cpp: In member function 'virtual bool
>>> CRenderSystemGLES::PresentRender()':
>>> | RenderSystemGLES.cpp:253:31: error: call of overloaded 'abs(int64_t)'=
 is
>>> ambiguous
>>> |
>>> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroot=
s/fishriver/usr/include/stdlib.h:771:12:
>>> note: candidates are: int abs(int)
>>> | RenderSystemGLES.cpp:209:16: note: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 int64_t abs(int64_t)
>>> |
>>> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroot=
s/fishriver/usr/include/c++/cstdlib:170:3:
>>> note: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 long long=
 int __gnu_cxx::abs(long long int)
>>> |
>>> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroot=
s/fishriver/usr/include/c++/cstdlib:139:3:
>>> note: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 long int =
std::abs(long int)
>>> | RenderSystemGLES.cpp:253:43: error: call of overloaded 'abs(int64_t&)=
'
>>> is ambiguous
>>> |
>>> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroot=
s/fishriver/usr/include/stdlib.h:771:12:
>>> note: candidates are: int abs(int)
>>> | RenderSystemGLES.cpp:209:16: note: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 int64_t abs(int64_t)
>>> |
>>> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroot=
s/fishriver/usr/include/c++/cstdlib:170:3:
>>> note: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 long long=
 int __gnu_cxx::abs(long long int)
>>> |
>>> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroot=
s/fishriver/usr/include/c++/cstdlib:139:3:
>>> note: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 long int =
std::abs(long int)
>>> | RenderSystemGLES.cpp: At global scope:
>>> | RenderSystemGLES.cpp:209:16: warning: 'int64_t abs(int64_t)' defined =
but
>>> not used
>>> | make[1]: *** [RenderSystemGLES.o] Error 1
>>> | make[1]: *** Waiting for unfinished jobs....
>>> | WinSystem.cpp: In member function 'std::vector<RESOLUTION_WHR>
>>> CWinSystemBase::ScreenResolutions(int)':
>>> | WinSystem.cpp:126:7: warning: unused variable 'defResolution'
>>> | WinSystem.cpp: In function 'bool rrSortPredicate(REFRESHRATE,
>>> REFRESHRATE)':
>>> | WinSystem.cpp:156:51: warning: suggest parentheses around '&&' within
>>> '||'
>>> | make[1]: Leaving directory
>>> `/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/a=
tom-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcb=
e/git/xbmc'
>>> | make: *** [xbmc/xbmc.a] Error 2
>>> | FATAL: oe_runmake failed
>>> | ERROR: Function 'do_compile' failed (see
>>> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/at=
om-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe=
/temp/log.do_compile.18880
>>> for further information)
>>> NOTE: package
>>> xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe: task
>>> do_compile: Failed
>>> I'm pulling for the Fishriver machine . My host machine is Ubuntu 10.10
>>> ,64 bit .
>>> Can someone help me out of this problem ?
>
> Make sure that all the DEPENDS are available and build successfully befor=
e xbmc
> secondly try to clean rebuild the recipe. bitbake -ccleansstate
> xbmc;bitbake xbmc
> and if you still have the errors then it could be that xbmc itself
> need some patches
> in order to compile with compiler that you are using.
>

hmm looking into the recipe you attached. It has include of egl.inc
commented out
and that include brings in

COMPATIBLE_MACHINE =3D "omap3|ti816x"

which means it could be that it has not been built/tested on the
machines you might be using

