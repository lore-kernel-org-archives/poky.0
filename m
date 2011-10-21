Return-Path: <vishwasonu2000@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA13AE01341
	for <poky@yoctoproject.org>; Thu, 20 Oct 2011 22:01:17 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwe5 with SMTP id 5so4765459wwe.11
	for <poky@yoctoproject.org>; Thu, 20 Oct 2011 22:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=FbKCjSBY14jUFX1W0MbKVCIg8UzOdDLmC2LpXxJsx9Q=;
	b=g+nPeCt3pIjIJjCtHZ7RRmsi2111wdiR2X5MlWNYvZ/iASHPAP9VB1iX3pTkHBUxg+
	w+TI2nZYv4zmbgiwDlSkCgdlb3L/uc0fbKHy5wTRk+AqEzb3rrc9ygKBfI0sHKmYbLDa
	4TPrKc8Y5YSuooYzBrFK1RjBaKuOA0cEx0BR8=
MIME-Version: 1.0
Received: by 10.227.19.143 with SMTP id a15mr4926367wbb.1.1319173276239; Thu,
	20 Oct 2011 22:01:16 -0700 (PDT)
Received: by 10.180.86.167 with HTTP; Thu, 20 Oct 2011 22:01:16 -0700 (PDT)
In-Reply-To: <CAMKF1spw3NVTYMLzEHH9LH+R70baxqbuPcfPddZ3fZ_2TvCUag@mail.gmail.com>
References: <CABRtByPR-GmTN54BVUxnORRxex6NcmyjqiOdb_yCgkndBPjOdQ@mail.gmail.com>
	<CABRtByNQkz1vq_X1v-3dNNAJtPOJjT6074vjHb216KOAUT5m6Q@mail.gmail.com>
	<CAMKF1soeVC7WUm7MsWrbu_-ZiQCz=H0ogcGRobG6pPrDTrwrTw@mail.gmail.com>
	<CAMKF1spw3NVTYMLzEHH9LH+R70baxqbuPcfPddZ3fZ_2TvCUag@mail.gmail.com>
Date: Fri, 21 Oct 2011 10:31:16 +0530
Message-ID: <CABRtByOW8azV5mZ3_57WGCwc+yvBHP0h0ErANsXjDj6Af3OUmQ@mail.gmail.com>
From: sonu vishwakarma <vishwasonu2000@gmail.com>
To: Khem Raj <raj.khem@gmail.com>, poky@yoctoproject.org
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
X-List-Received-Date: Fri, 21 Oct 2011 05:01:18 -0000
Content-Type: multipart/alternative; boundary=002215b03a228706e904afc7f6cf

--002215b03a228706e904afc7f6cf
Content-Type: text/plain; charset=ISO-8859-1

Hi,
When i include *require egl.inc *in my xbmc recipe i get the error as below:

   ERROR: Nothing PROVIDES 'xbmc'
>
> ERROR: Command execution failed: Traceback (most recent call last):
>   File
> "/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/bitbake/lib/bb/command.py",
> line 102, in runAsyncCommand
>     commandmethod(self.cmds_async, self, options)
>   File
> "/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/bitbake/lib/bb/command.py",
> line 200, in buildTargets
>     command.cooker.buildTargets(pkgs_to_build, task)
>   File
> "/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/bitbake/lib/bb/cooker.py",
> line 826, in buildTargets
>     taskdata.add_provider(localdata, self.status, k)
>   File
> "/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/bitbake/lib/bb/taskdata.py",
> line 353, in add_provider
>     self.add_provider_internal(cfgData, dataCache, item)
>   File
> "/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/bitbake/lib/bb/taskdata.py",
> line 373, in add_provider_internal
>     raise bb.providers.NoProvider(item)
> NoProvider: xbmc
>

    Thanks and Regards,
              Sonu.
>
>
> > On Thu, Oct 20, 2011 at 2:10 AM, sonu vishwakarma
> > <vishwasonu2000@gmail.com> wrote:
> >> Hi,
> >>
> >> When I modified configurations  in EXTRA_OECONF I have resolved the
> above
> >> error and still I am not proceeding in compilation .
> >>  Now I am getting the following error.
> >> I am also attaching recipe  of xbmc :
> >> | In file included from ../SystemGlobals.h:25:0,
> >> |                  from Skin.cpp:25:
> >> | ../cores/VideoRenderers/RenderManager.h:110:28: error:
> 'VAAPI::CHolder'
> >> has not been declared
> >> | ../cores/VideoRenderers/RenderManager.h: In member function 'void
> >> CXBMCRenderManager::AddProcessor(int&)':
> >> | ../cores/VideoRenderers/RenderManager.h:114:20: error: 'class
> >> CLinuxRendererGLES' has no member named 'AddProcessor'
> >> make[1]: *** [Skin.o] Error 1
> >> | make[1]: *** Waiting for unfinished jobs....
> >> | make[1]: Leaving directory
> >>
> `/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/atom-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/git/xbmc/addons'
> >> | make: *** [xbmc/addons/addons.a] Error 2
> >> | FATAL: oe_runmake failed | ERROR: Function 'do_compile' failed (see
> >>
> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/atom-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/temp/log.do_compile.13164
> >> for further information) NOTE: package
> >> xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe: task
> >> do_compile: Failed
> >>
> >>   Thanks and Regards,
> >> Sonu
> >> On Thu, Oct 20, 2011 at 1:01 PM, sonu vishwakarma <
> vishwasonu2000@gmail.com>
> >> wrote:
> >>>
> >>> Hi,
> >>> I'm trying the build for XBMC 10.05 , I was  getting the error in the
> task
> >>> do_compile as
> >>> "RenderSystemGLES.cpp:253:31: error: call of overloaded 'abs(int64_t)'
> is
> >>> ambiguous "
> >>> I looked around for solution and found a patch at
> >>>  http://patches.openembedded.org/patch/1819/ and applied it
> >>> but even after applying the patch the problem remains the same.
> >>> I'm getting the error as below:
> >>> | RenderSystemGLES.cpp: In member function 'virtual bool
> >>> CRenderSystemGLES::IsExtSupported(const char*)':
> >>> | RenderSystemGLES.cpp:181:20: warning: comparison with string literal
> >>> results in unspecified behaviour
> >>> | RenderSystemGLES.cpp:186:25: warning: comparison with string literal
> >>> results in unspecified behaviour
> >>> | RenderSystemGLES.cpp: In member function 'virtual bool
> >>> CRenderSystemGLES::PresentRender()':
> >>> | RenderSystemGLES.cpp:253:31: error: call of overloaded 'abs(int64_t)'
> is
> >>> ambiguous
> >>> |
> >>>
> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/stdlib.h:771:12:
> >>> note: candidates are: int abs(int)
> >>> | RenderSystemGLES.cpp:209:16: note:                 int64_t
> abs(int64_t)
> >>> |
> >>>
> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/c++/cstdlib:170:3:
> >>> note:                 long long int __gnu_cxx::abs(long long int)
> >>> |
> >>>
> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/c++/cstdlib:139:3:
> >>> note:                 long int std::abs(long int)
> >>> | RenderSystemGLES.cpp:253:43: error: call of overloaded
> 'abs(int64_t&)'
> >>> is ambiguous
> >>> |
> >>>
> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/stdlib.h:771:12:
> >>> note: candidates are: int abs(int)
> >>> | RenderSystemGLES.cpp:209:16: note:                 int64_t
> abs(int64_t)
> >>> |
> >>>
> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/c++/cstdlib:170:3:
> >>> note:                 long long int __gnu_cxx::abs(long long int)
> >>> |
> >>>
> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/c++/cstdlib:139:3:
> >>> note:                 long int std::abs(long int)
> >>> | RenderSystemGLES.cpp: At global scope:
> >>> | RenderSystemGLES.cpp:209:16: warning: 'int64_t abs(int64_t)' defined
> but
> >>> not used
> >>> | make[1]: *** [RenderSystemGLES.o] Error 1
> >>> | make[1]: *** Waiting for unfinished jobs....
> >>> | WinSystem.cpp: In member function 'std::vector<RESOLUTION_WHR>
> >>> CWinSystemBase::ScreenResolutions(int)':
> >>> | WinSystem.cpp:126:7: warning: unused variable 'defResolution'
> >>> | WinSystem.cpp: In function 'bool rrSortPredicate(REFRESHRATE,
> >>> REFRESHRATE)':
> >>> | WinSystem.cpp:156:51: warning: suggest parentheses around '&&' within
> >>> '||'
> >>> | make[1]: Leaving directory
> >>>
> `/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/atom-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/git/xbmc'
> >>> | make: *** [xbmc/xbmc.a] Error 2
> >>> | FATAL: oe_runmake failed
> >>> | ERROR: Function 'do_compile' failed (see
> >>>
> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/atom-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/temp/log.do_compile.18880
> >>> for further information)
> >>> NOTE: package
> >>> xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe: task
> >>> do_compile: Failed
> >>> I'm pulling for the Fishriver machine . My host machine is Ubuntu 10.10
> >>> ,64 bit .
> >>> Can someone help me out of this problem ?
> >
> > Make sure that all the DEPENDS are available and build successfully
> before xbmc
> > secondly try to clean rebuild the recipe. bitbake -ccleansstate
> > xbmc;bitbake xbmc
> > and if you still have the errors then it could be that xbmc itself
> > need some patches
> > in order to compile with compiler that you are using.
> >
>
> hmm looking into the recipe you attached. It has include of egl.inc
> commented out
> and that include brings in
>
> COMPATIBLE_MACHINE = "omap3|ti816x"
>
> which means it could be that it has not been built/tested on the
> machines you might be using
>

--002215b03a228706e904afc7f6cf
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div>When i include <i>require egl.inc </i>in my xbmc recipe i get the e=
rror as below:</div><div><br><div class=3D"gmail_quote">=A0 =A0ERROR: Nothi=
ng PROVIDES &#39;xbmc&#39;<blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">
<div><div class=3D"h5"><div class=3D"h5">ERROR: Command execution failed: T=
raceback (most recent call last):</div><div class=3D"h5">=A0 File &quot;/ho=
me/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/bitbake/lib/bb/command.p=
y&quot;, line 102, in runAsyncCommand</div>
<div class=3D"h5">=A0 =A0 commandmethod(self.cmds_async, self, options)</di=
v><div class=3D"h5">=A0 File &quot;/home/sct/black_poky/gigabyte/poky_gigab=
yte_07Oct2011/bitbake/lib/bb/command.py&quot;, line 200, in buildTargets</d=
iv><div class=3D"h5">
=A0 =A0 command.cooker.buildTargets(pkgs_to_build, task)</div><div class=3D=
"h5">=A0 File &quot;/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/b=
itbake/lib/bb/cooker.py&quot;, line 826, in buildTargets</div><div class=3D=
"h5">=A0 =A0 taskdata.add_provider(localdata, self.status, k)</div>
<div class=3D"h5">=A0 File &quot;/home/sct/black_poky/gigabyte/poky_gigabyt=
e_07Oct2011/bitbake/lib/bb/taskdata.py&quot;, line 353, in add_provider</di=
v><div class=3D"h5">=A0 =A0 self.add_provider_internal(cfgData, dataCache, =
item)</div>
<div class=3D"h5">=A0 File &quot;/home/sct/black_poky/gigabyte/poky_gigabyt=
e_07Oct2011/bitbake/lib/bb/taskdata.py&quot;, line 373, in add_provider_int=
ernal</div><div class=3D"h5">=A0 =A0 raise bb.providers.NoProvider(item)</d=
iv><div class=3D"h5">
NoProvider: xbmc</div></div></div></blockquote><div><br></div><div>=A0 =A0=
=A0Thanks and Regards,</div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 Sonu.<blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex;"><div>
<div class=3D"h5"><div><br></div>
&gt; On Thu, Oct 20, 2011 at 2:10 AM, sonu vishwakarma<br>
&gt; &lt;<a href=3D"mailto:vishwasonu2000@gmail.com">vishwasonu2000@gmail.c=
om</a>&gt; wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; When I modified configurations=A0 in EXTRA_OECONF I have resolved =
the above<br>
&gt;&gt; error and still I am not proceeding in compilation .<br>
&gt;&gt; =A0Now I am getting the following error.<br>
&gt;&gt; I am also attaching recipe=A0 of xbmc :<br>
&gt;&gt; | In file included from ../SystemGlobals.h:25:0,<br>
&gt;&gt; | =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0from Skin.cpp:25:<br>
&gt;&gt; | ../cores/VideoRenderers/RenderManager.h:110:28: error: &#39;VAAP=
I::CHolder&#39;<br>
&gt;&gt; has not been declared<br>
&gt;&gt; | ../cores/VideoRenderers/RenderManager.h: In member function &#39=
;void<br>
&gt;&gt; CXBMCRenderManager::AddProcessor(int&amp;)&#39;:<br>
&gt;&gt; | ../cores/VideoRenderers/RenderManager.h:114:20: error: &#39;clas=
s<br>
&gt;&gt; CLinuxRendererGLES&#39; has no member named &#39;AddProcessor&#39;=
<br>
&gt;&gt; make[1]: *** [Skin.o] Error 1<br>
&gt;&gt; | make[1]: *** Waiting for unfinished jobs....<br>
&gt;&gt; | make[1]: Leaving directory<br>
&gt;&gt; `/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/w=
ork/atom-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c71=
4adcbe/git/xbmc/addons&#39;<br>
&gt;&gt; | make: *** [xbmc/addons/addons.a] Error 2<br>
&gt;&gt; | FATAL: oe_runmake failed | ERROR: Function &#39;do_compile&#39; =
failed (see<br>
&gt;&gt; /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/wo=
rk/atom-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714=
adcbe/temp/log.do_compile.13164<br>
&gt;&gt; for further information) NOTE: package<br>
&gt;&gt; xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe: tas=
k<br>
&gt;&gt; do_compile: Failed<br>
&gt;&gt;<br>
&gt;&gt; =A0 Thanks and Regards,<br>
&gt;&gt; Sonu<br>
&gt;&gt; On Thu, Oct 20, 2011 at 1:01 PM, sonu vishwakarma &lt;<a href=3D"m=
ailto:vishwasonu2000@gmail.com">vishwasonu2000@gmail.com</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt; I&#39;m trying the build for XBMC 10.05 , I was =A0getting the=
 error in the task<br>
&gt;&gt;&gt; do_compile as<br>
&gt;&gt;&gt; &quot;RenderSystemGLES.cpp:253:31: error: call of overloaded &=
#39;abs(int64_t)&#39; is<br>
&gt;&gt;&gt; ambiguous &quot;<br>
&gt;&gt;&gt; I looked around for solution and found a patch at<br>
&gt;&gt;&gt; =A0<a href=3D"http://patches.openembedded.org/patch/1819/" tar=
get=3D"_blank">http://patches.openembedded.org/patch/1819/</a> and applied =
it<br>
&gt;&gt;&gt; but even after applying the patch the problem remains the same=
.<br>
&gt;&gt;&gt; I&#39;m getting the error as below:<br>
&gt;&gt;&gt; | RenderSystemGLES.cpp: In member function &#39;virtual bool<b=
r>
&gt;&gt;&gt; CRenderSystemGLES::IsExtSupported(const char*)&#39;:<br>
&gt;&gt;&gt; | RenderSystemGLES.cpp:181:20: warning: comparison with string=
 literal<br>
&gt;&gt;&gt; results in unspecified behaviour<br>
&gt;&gt;&gt; | RenderSystemGLES.cpp:186:25: warning: comparison with string=
 literal<br>
&gt;&gt;&gt; results in unspecified behaviour<br>
&gt;&gt;&gt; | RenderSystemGLES.cpp: In member function &#39;virtual bool<b=
r>
&gt;&gt;&gt; CRenderSystemGLES::PresentRender()&#39;:<br>
&gt;&gt;&gt; | RenderSystemGLES.cpp:253:31: error: call of overloaded &#39;=
abs(int64_t)&#39; is<br>
&gt;&gt;&gt; ambiguous<br>
&gt;&gt;&gt; |<br>
&gt;&gt;&gt; /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tm=
p/sysroots/fishriver/usr/include/stdlib.h:771:12:<br>
&gt;&gt;&gt; note: candidates are: int abs(int)<br>
&gt;&gt;&gt; | RenderSystemGLES.cpp:209:16: note: =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 int64_t abs(int64_t)<br>
&gt;&gt;&gt; |<br>
&gt;&gt;&gt; /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tm=
p/sysroots/fishriver/usr/include/c++/cstdlib:170:3:<br>
&gt;&gt;&gt; note: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 long long int __gnu_cxx:=
:abs(long long int)<br>
&gt;&gt;&gt; |<br>
&gt;&gt;&gt; /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tm=
p/sysroots/fishriver/usr/include/c++/cstdlib:139:3:<br>
&gt;&gt;&gt; note: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 long int std::abs(long i=
nt)<br>
&gt;&gt;&gt; | RenderSystemGLES.cpp:253:43: error: call of overloaded &#39;=
abs(int64_t&amp;)&#39;<br>
&gt;&gt;&gt; is ambiguous<br>
&gt;&gt;&gt; |<br>
&gt;&gt;&gt; /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tm=
p/sysroots/fishriver/usr/include/stdlib.h:771:12:<br>
&gt;&gt;&gt; note: candidates are: int abs(int)<br>
&gt;&gt;&gt; | RenderSystemGLES.cpp:209:16: note: =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 int64_t abs(int64_t)<br>
&gt;&gt;&gt; |<br>
&gt;&gt;&gt; /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tm=
p/sysroots/fishriver/usr/include/c++/cstdlib:170:3:<br>
&gt;&gt;&gt; note: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 long long int __gnu_cxx:=
:abs(long long int)<br>
&gt;&gt;&gt; |<br>
&gt;&gt;&gt; /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tm=
p/sysroots/fishriver/usr/include/c++/cstdlib:139:3:<br>
&gt;&gt;&gt; note: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 long int std::abs(long i=
nt)<br>
&gt;&gt;&gt; | RenderSystemGLES.cpp: At global scope:<br>
&gt;&gt;&gt; | RenderSystemGLES.cpp:209:16: warning: &#39;int64_t abs(int64=
_t)&#39; defined but<br>
&gt;&gt;&gt; not used<br>
&gt;&gt;&gt; | make[1]: *** [RenderSystemGLES.o] Error 1<br>
&gt;&gt;&gt; | make[1]: *** Waiting for unfinished jobs....<br>
&gt;&gt;&gt; | WinSystem.cpp: In member function &#39;std::vector&lt;RESOLU=
TION_WHR&gt;<br>
&gt;&gt;&gt; CWinSystemBase::ScreenResolutions(int)&#39;:<br>
&gt;&gt;&gt; | WinSystem.cpp:126:7: warning: unused variable &#39;defResolu=
tion&#39;<br>
&gt;&gt;&gt; | WinSystem.cpp: In function &#39;bool rrSortPredicate(REFRESH=
RATE,<br>
&gt;&gt;&gt; REFRESHRATE)&#39;:<br>
&gt;&gt;&gt; | WinSystem.cpp:156:51: warning: suggest parentheses around &#=
39;&amp;&amp;&#39; within<br>
&gt;&gt;&gt; &#39;||&#39;<br>
&gt;&gt;&gt; | make[1]: Leaving directory<br>
&gt;&gt;&gt; `/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/t=
mp/work/atom-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d640208=
8c714adcbe/git/xbmc&#39;<br>
&gt;&gt;&gt; | make: *** [xbmc/xbmc.a] Error 2<br>
&gt;&gt;&gt; | FATAL: oe_runmake failed<br>
&gt;&gt;&gt; | ERROR: Function &#39;do_compile&#39; failed (see<br>
&gt;&gt;&gt; /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tm=
p/work/atom-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088=
c714adcbe/temp/log.do_compile.18880<br>
&gt;&gt;&gt; for further information)<br>
&gt;&gt;&gt; NOTE: package<br>
&gt;&gt;&gt; xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe:=
 task<br>
&gt;&gt;&gt; do_compile: Failed<br>
&gt;&gt;&gt; I&#39;m pulling for the Fishriver machine . My host machine is=
 Ubuntu 10.10<br>
&gt;&gt;&gt; ,64 bit .<br>
&gt;&gt;&gt; Can someone help me out of this problem ?<br>
&gt;<br>
&gt; Make sure that all the DEPENDS are available and build successfully be=
fore xbmc<br>
&gt; secondly try to clean rebuild the recipe. bitbake -ccleansstate<br>
&gt; xbmc;bitbake xbmc<br>
&gt; and if you still have the errors then it could be that xbmc itself<br>
&gt; need some patches<br>
&gt; in order to compile with compiler that you are using.<br>
&gt;<br>
<br>
</div></div>hmm looking into the recipe you attached. It has include of egl=
.inc<br>
commented out<br>
and that include brings in<br>
<br>
COMPATIBLE_MACHINE =3D &quot;omap3|ti816x&quot;<br>
<br>
which means it could be that it has not been built/tested on the<br>
machines you might be using<br>
</blockquote></div><br></div>

--002215b03a228706e904afc7f6cf--
