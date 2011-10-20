Return-Path: <vishwasonu2000@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EE6DE006B4
	for <poky@yoctoproject.org>; Thu, 20 Oct 2011 00:31:40 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyf19 with SMTP id 19so3736669wyf.35
	for <poky@yoctoproject.org>; Thu, 20 Oct 2011 00:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=66cEloE3SgzQLBylNNTvaV25PlgAu4l6bP8HE1AUokU=;
	b=c1+/+WjBBU5PoK4dzPk8FDVIvS5rIz0wX0IiSXMiVh5BgiOpQOElCJDHGPi9fztn6K
	EW+/jrCgnnydH9GdUAn0Brl57Qu8I8twbTYivxdbZnvPpIulkTKz8n3qoUotl2ub7mDV
	nMLtQCvoFFmouMgpCbJK2lQIGUKCBt76pfXn8=
MIME-Version: 1.0
Received: by 10.227.203.207 with SMTP id fj15mr2822366wbb.16.1319095899367;
	Thu, 20 Oct 2011 00:31:39 -0700 (PDT)
Received: by 10.180.86.167 with HTTP; Thu, 20 Oct 2011 00:31:39 -0700 (PDT)
Date: Thu, 20 Oct 2011 13:01:39 +0530
Message-ID: <CABRtByPR-GmTN54BVUxnORRxex6NcmyjqiOdb_yCgkndBPjOdQ@mail.gmail.com>
From: sonu vishwakarma <vishwasonu2000@gmail.com>
To: poky@yoctoproject.org
Subject: :Package xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe: task do_compile: Failed
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
X-List-Received-Date: Thu, 20 Oct 2011 07:31:41 -0000
Content-Type: multipart/alternative; boundary=001517475be481aa6504afb5f29c

--001517475be481aa6504afb5f29c
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm trying the build for XBMC 10.05 , I was  getting the error in the task
do_compile as
"RenderSystemGLES.cpp:253:31: error: call of overloaded 'abs(int64_t)' is
ambiguous "

I looked around for solution and found a patch at * **
http://patches.openembedded.org/patch/1819/ *and applied it
but even after applying the patch the problem remains the same.
I'm getting the error as below:

| RenderSystemGLES.cpp: In member function 'virtual bool
CRenderSystemGLES::IsExtSupported(const char*)':
| RenderSystemGLES.cpp:181:20: warning: comparison with string literal
results in unspecified behaviour
| RenderSystemGLES.cpp:186:25: warning: comparison with string literal
results in unspecified behaviour
| RenderSystemGLES.cpp: In member function 'virtual bool
CRenderSystemGLES::PresentRender()':
| RenderSystemGLES.cpp:253:31: error: call of overloaded 'abs(int64_t)' is
ambiguous
|
/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/stdlib.h:771:12:
note: candidates are: int abs(int)
| RenderSystemGLES.cpp:209:16: note:                 int64_t abs(int64_t)
|
/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/c++/cstdlib:170:3:
note:                 long long int __gnu_cxx::abs(long long int)
|
/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/c++/cstdlib:139:3:
note:                 long int std::abs(long int)
| RenderSystemGLES.cpp:253:43: error: call of overloaded 'abs(int64_t&)' is
ambiguous
|
/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/stdlib.h:771:12:
note: candidates are: int abs(int)
| RenderSystemGLES.cpp:209:16: note:                 int64_t abs(int64_t)
|
/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/c++/cstdlib:170:3:
note:                 long long int __gnu_cxx::abs(long long int)
|
/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/c++/cstdlib:139:3:
note:                 long int std::abs(long int)
| RenderSystemGLES.cpp: At global scope:
| RenderSystemGLES.cpp:209:16: warning: 'int64_t abs(int64_t)' defined but
not used
| make[1]: *** [RenderSystemGLES.o] Error 1
| make[1]: *** Waiting for unfinished jobs....
| WinSystem.cpp: In member function 'std::vector<RESOLUTION_WHR>
CWinSystemBase::ScreenResolutions(int)':
| WinSystem.cpp:126:7: warning: unused variable 'defResolution'
| WinSystem.cpp: In function 'bool rrSortPredicate(REFRESHRATE,
REFRESHRATE)':
| WinSystem.cpp:156:51: warning: suggest parentheses around '&&' within '||'
| make[1]: Leaving directory
`/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/atom-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/git/xbmc'
| make: *** [xbmc/xbmc.a] Error 2
| FATAL: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/atom-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/temp/log.do_compile.18880
for further information)
NOTE: package xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe:
task do_compile: Failed

I'm pulling for the Fishriver machine . My host machine is Ubuntu 10.10 ,64
bit .
Can someone help me out of this problem ?

With Regards,
Sonu

--001517475be481aa6504afb5f29c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I&#39;m trying the build for XBMC 10.05 , I was =A0g=
etting the error in the task do_compile as=A0</div><div><span class=3D"Appl=
e-style-span" style=3D"font-family: Arial; font-weight: bold; ">&quot;Rende=
rSystemGLES.cpp:253:31: error: call of overloaded &#39;abs(int64_t)&#39; is=
 ambiguous &quot;</span></div>
<div><span style=3D"font-family: Arial; color: rgb(0, 0, 0); background-col=
or: transparent; font-weight: bold; font-style: normal; font-variant: norma=
l; vertical-align: baseline; "><br></span></div><div><font class=3D"Apple-s=
tyle-span" face=3D"Arial">I looked around for solution and found a patch at=
 <b>=A0</b></font><span class=3D"Apple-style-span" style=3D"font-family: Ar=
ial; "><b><a href=3D"http://patches.openembedded.org/patch/1819/">http://pa=
tches.openembedded.org/patch/1819/</a> </b>and applied it</span></div>
<div><span class=3D"Apple-style-span" style=3D"font-family: Arial; ">but ev=
en after applying the patch the problem remains the same.</span></div><div>=
<span class=3D"Apple-style-span" style=3D"font-family: Arial; ">I&#39;m get=
ting the error as below:</span></div>
<div><span class=3D"Apple-style-span" style=3D"font-family: Arial; "><br></=
span></div><div><span class=3D"Apple-style-span" style=3D"font-family: Aria=
l; "><div>| RenderSystemGLES.cpp: In member function &#39;virtual bool CRen=
derSystemGLES::IsExtSupported(const char*)&#39;:</div>
<div>| RenderSystemGLES.cpp:181:20: warning: comparison with string literal=
 results in unspecified behaviour</div><div>| RenderSystemGLES.cpp:186:25: =
warning: comparison with string literal results in unspecified behaviour</d=
iv>
<div>| RenderSystemGLES.cpp: In member function &#39;virtual bool CRenderSy=
stemGLES::PresentRender()&#39;:</div><div>| RenderSystemGLES.cpp:253:31: er=
ror: call of overloaded &#39;abs(int64_t)&#39; is ambiguous</div><div>| /ho=
me/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishr=
iver/usr/include/stdlib.h:771:12: note: candidates are: int abs(int)</div>
<div>| RenderSystemGLES.cpp:209:16: note: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 i=
nt64_t abs(int64_t)</div><div>| /home/sct/black_poky/gigabyte/poky_gigabyte=
_07Oct2011/build/tmp/sysroots/fishriver/usr/include/c++/cstdlib:170:3: note=
: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 long long int __gnu_cxx::abs(long long in=
t)</div>
<div>| /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysr=
oots/fishriver/usr/include/c++/cstdlib:139:3: note: =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 long int std::abs(long int)</div><div>| RenderSystemGLES.cpp:253:4=
3: error: call of overloaded &#39;abs(int64_t&amp;)&#39; is ambiguous</div>
<div>| /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysr=
oots/fishriver/usr/include/stdlib.h:771:12: note: candidates are: int abs(i=
nt)</div><div>| RenderSystemGLES.cpp:209:16: note: =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 int64_t abs(int64_t)</div>
<div>| /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysr=
oots/fishriver/usr/include/c++/cstdlib:170:3: note: =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 long long int __gnu_cxx::abs(long long int)</div><div>| /home/sct/=
black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/us=
r/include/c++/cstdlib:139:3: note: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 long int=
 std::abs(long int)</div>
<div>| RenderSystemGLES.cpp: At global scope:</div><div>| RenderSystemGLES.=
cpp:209:16: warning: &#39;int64_t abs(int64_t)&#39; defined but not used</d=
iv><div>| make[1]: *** [RenderSystemGLES.o] Error 1</div><div>| make[1]: **=
* Waiting for unfinished jobs....</div>
<div>| WinSystem.cpp: In member function &#39;std::vector&lt;RESOLUTION_WHR=
&gt; CWinSystemBase::ScreenResolutions(int)&#39;:</div><div>| WinSystem.cpp=
:126:7: warning: unused variable &#39;defResolution&#39;</div><div>| WinSys=
tem.cpp: In function &#39;bool rrSortPredicate(REFRESHRATE, REFRESHRATE)&#3=
9;:</div>
<div>| WinSystem.cpp:156:51: warning: suggest parentheses around &#39;&amp;=
&amp;&#39; within &#39;||&#39;</div><div>| make[1]: Leaving directory `/hom=
e/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/atom-poky-=
linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/git/xbm=
c&#39;</div>
<div>| make: *** [xbmc/xbmc.a] Error 2</div><div>| FATAL: oe_runmake failed=
</div><div>| ERROR: Function &#39;do_compile&#39; failed (see /home/sct/bla=
ck_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/atom-poky-linux/xbm=
c-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/temp/log.do_comp=
ile.18880 for further information)</div>
<div>NOTE: package xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714=
adcbe: task do_compile: Failed</div><div><br></div></span><span class=3D"Ap=
ple-style-span" style=3D"font-family: arial, sans-serif; background-color: =
rgb(255, 255, 255); "><span style=3D"font-family: &#39;Times New Roman&#39;=
; white-space: pre-wrap; background-color: rgb(255, 255, 255); ">I&#39;m pu=
lling for the Fishriver machine . My host machine is Ubuntu 10.10 ,64 bit .=
 </span><div>
<font face=3D"&#39;Times New Roman&#39;"><span style=3D"white-space: pre-wr=
ap; ">Can someone help me out of this problem ? </span></font></div><div><f=
ont face=3D"&#39;Times New Roman&#39;"><span style=3D"white-space: pre-wrap=
; "><br>

</span></font></div><div><font face=3D"&#39;Times New Roman&#39;"><span sty=
le=3D"white-space: pre-wrap; ">With Regards,</span></font></div><div><font =
face=3D"&#39;Times New Roman&#39;"><span style=3D"white-space: pre-wrap; ">=
Sonu</span></font></div>
</span><span class=3D"Apple-style-span" style=3D"font-family: Arial; "><div=
><br></div></span></div>

--001517475be481aa6504afb5f29c--
