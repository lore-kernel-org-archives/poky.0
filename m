Return-Path: <vishwasonu2000@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBAB1E006B4
	for <poky@yoctoproject.org>; Thu, 20 Oct 2011 02:10:10 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyf19 with SMTP id 19so3833147wyf.35
	for <poky@yoctoproject.org>; Thu, 20 Oct 2011 02:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=w2HBOMPj1ZbQcKWWQ8s6Snmxpy/DAlQV0ALIU1ol5UA=;
	b=xXj26udVX2AT/R/v3Td2Ok15GRfBRmObSYHsCVEjrJuCsUQWBrEw5n3nGyz0MPyrA0
	pang08Gy/FX+vBLxJpbVFP8jrdPEp/lU33mHpXTuyFQXGzhsJgzwm2V6B90RBTxF1Ge5
	ibONC7QrHLz8dxY8sDjssmecE/P9SYK2AevUg=
MIME-Version: 1.0
Received: by 10.227.19.143 with SMTP id a15mr3695447wbb.1.1319101809633; Thu,
	20 Oct 2011 02:10:09 -0700 (PDT)
Received: by 10.180.86.167 with HTTP; Thu, 20 Oct 2011 02:10:09 -0700 (PDT)
In-Reply-To: <CABRtByPR-GmTN54BVUxnORRxex6NcmyjqiOdb_yCgkndBPjOdQ@mail.gmail.com>
References: <CABRtByPR-GmTN54BVUxnORRxex6NcmyjqiOdb_yCgkndBPjOdQ@mail.gmail.com>
Date: Thu, 20 Oct 2011 14:40:09 +0530
Message-ID: <CABRtByNQkz1vq_X1v-3dNNAJtPOJjT6074vjHb216KOAUT5m6Q@mail.gmail.com>
From: sonu vishwakarma <vishwasonu2000@gmail.com>
To: poky@yoctoproject.org
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
X-List-Received-Date: Thu, 20 Oct 2011 09:10:11 -0000
X-Groupsio-MsgNum: 7088
Content-Type: multipart/mixed; boundary=002215b03a22c92b2804afb75274

--002215b03a22c92b2804afb75274
Content-Type: multipart/alternative; boundary=002215b03a22c92b2004afb75272

--002215b03a22c92b2004afb75272
Content-Type: text/plain; charset=ISO-8859-1

Hi,

When I modified configurations  in EXTRA_OECONF I have resolved the above
error and still I am not proceeding in compilation .
 Now I am getting the following error.
I am also attaching recipe  of xbmc :

| In file included from ../SystemGlobals.h:25:0,
|                  from Skin.cpp:25:
| ../cores/VideoRenderers/RenderManager.h:110:28: error: 'VAAPI::CHolder'
has not been declared
| ../cores/VideoRenderers/RenderManager.h: In member function 'void
CXBMCRenderManager::AddProcessor(int&)':
| ../cores/VideoRenderers/RenderManager.h:114:20: error: 'class
CLinuxRendererGLES' has no member named 'AddProcessor'

 make[1]: *** [Skin.o] Error 1
| make[1]: *** Waiting for unfinished jobs....
| make[1]: Leaving directory
`/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/atom-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/git/xbmc/addons'
| make: *** [xbmc/addons/addons.a] Error 2
| FATAL: oe_runmake failed | ERROR: Function 'do_compile' failed (see
/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/atom-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/temp/log.do_compile.13164
for further information) NOTE: package
xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe: task
do_compile: Failed

  Thanks and Regards,
Sonu

On Thu, Oct 20, 2011 at 1:01 PM, sonu vishwakarma
<vishwasonu2000@gmail.com>wrote:

> Hi,
>
> I'm trying the build for XBMC 10.05 , I was  getting the error in the task
> do_compile as
> "RenderSystemGLES.cpp:253:31: error: call of overloaded 'abs(int64_t)' is
> ambiguous "
>
> I looked around for solution and found a patch at * **
> http://patches.openembedded.org/patch/1819/ *and applied it
> but even after applying the patch the problem remains the same.
> I'm getting the error as below:
>
> | RenderSystemGLES.cpp: In member function 'virtual bool
> CRenderSystemGLES::IsExtSupported(const char*)':
> | RenderSystemGLES.cpp:181:20: warning: comparison with string literal
> results in unspecified behaviour
> | RenderSystemGLES.cpp:186:25: warning: comparison with string literal
> results in unspecified behaviour
> | RenderSystemGLES.cpp: In member function 'virtual bool
> CRenderSystemGLES::PresentRender()':
> | RenderSystemGLES.cpp:253:31: error: call of overloaded 'abs(int64_t)' is
> ambiguous
> |
> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/stdlib.h:771:12:
> note: candidates are: int abs(int)
> | RenderSystemGLES.cpp:209:16: note:                 int64_t abs(int64_t)
> |
> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/c++/cstdlib:170:3:
> note:                 long long int __gnu_cxx::abs(long long int)
> |
> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/c++/cstdlib:139:3:
> note:                 long int std::abs(long int)
> | RenderSystemGLES.cpp:253:43: error: call of overloaded 'abs(int64_t&)' is
> ambiguous
> |
> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/stdlib.h:771:12:
> note: candidates are: int abs(int)
> | RenderSystemGLES.cpp:209:16: note:                 int64_t abs(int64_t)
> |
> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/c++/cstdlib:170:3:
> note:                 long long int __gnu_cxx::abs(long long int)
> |
> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/fishriver/usr/include/c++/cstdlib:139:3:
> note:                 long int std::abs(long int)
> | RenderSystemGLES.cpp: At global scope:
> | RenderSystemGLES.cpp:209:16: warning: 'int64_t abs(int64_t)' defined but
> not used
> | make[1]: *** [RenderSystemGLES.o] Error 1
> | make[1]: *** Waiting for unfinished jobs....
> | WinSystem.cpp: In member function 'std::vector<RESOLUTION_WHR>
> CWinSystemBase::ScreenResolutions(int)':
> | WinSystem.cpp:126:7: warning: unused variable 'defResolution'
> | WinSystem.cpp: In function 'bool rrSortPredicate(REFRESHRATE,
> REFRESHRATE)':
> | WinSystem.cpp:156:51: warning: suggest parentheses around '&&' within
> '||'
> | make[1]: Leaving directory
> `/home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/atom-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/git/xbmc'
> | make: *** [xbmc/xbmc.a] Error 2
> | FATAL: oe_runmake failed
> | ERROR: Function 'do_compile' failed (see
> /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/work/atom-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/temp/log.do_compile.18880
> for further information)
> NOTE: package
> xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe: task
> do_compile: Failed
>
> I'm pulling for the Fishriver machine . My host machine is Ubuntu 10.10 ,64
> bit .
> Can someone help me out of this problem ?
>
> With Regards,
> Sonu
>
>

--002215b03a22c92b2004afb75272
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br><div>When I modified configurations=A0 in EXTRA_OECONF I have re=
solved the above error and still I am not proceeding in compilation .<br>=
=A0Now I am getting the following error.<br></div><div>I am also attaching =
recipe=A0 of xbmc :</div>

<div><br></div>
<div><div>| In file included from ../SystemGlobals.h:25:0,</div><div>| =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0from Skin.cpp:25:</div><div>| ../cores/Video=
Renderers/RenderManager.h:110:28: error: &#39;VAAPI::CHolder&#39; has not b=
een declared</div>


<div>| ../cores/VideoRenderers/RenderManager.h: In member function &#39;voi=
d CXBMCRenderManager::AddProcessor(int&amp;)&#39;:</div><div>| ../cores/Vid=
eoRenderers/RenderManager.h:114:20: error: &#39;class CLinuxRendererGLES&#3=
9; has no member named &#39;AddProcessor&#39;</div>
<div><br></div>

<div><span class=3D"Apple-style-span" style=3D"font-family: &#39;Times New =
Roman&#39;; white-space: pre-wrap; ">  make[1]: *** [Skin.o] Error 1</span>=
</div><div><font class=3D"Apple-style-span" face=3D"&#39;Times New Roman&#3=
9;"><span class=3D"Apple-style-span" style=3D"white-space: pre-wrap;">| mak=
e[1]: *** Waiting for unfinished jobs....</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"&#39;Times New Roman&#39;">
| make[1]: Leaving directory `/home/sct/black_poky/gigabyte/poky_gigabyte_0=
7Oct2011/build/tmp/work/atom-poky-linux/xbmc-10.05-r11+gitr1+e2ab481ebe9643=
21c358ab9d6402088c714adcbe/git/xbmc/addons&#39;
| make: *** [xbmc/addons/addons.a] Error 2=A0</font></div><div><font class=
=3D"Apple-style-span" face=3D"&#39;Times New Roman&#39;">| FATAL: oe_runmak=
e failed
| ERROR: Function &#39;do_compile&#39; failed (see /home/sct/black_poky/gig=
abyte/poky_gigabyte_07Oct2011/build/tmp/work/atom-poky-linux/xbmc-10.05-r11=
+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe/temp/log.do_compile.13164 f=
or further information)
NOTE: package xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe=
: task do_compile: Failed<span class=3D"Apple-style-span" style=3D"white-sp=
ace: pre-wrap;">=A0</span><br></font></div><div><br></div>=A0 <span class=
=3D"Apple-style-span" style=3D"background-color: rgb(255, 255, 255); "><spa=
n class=3D"Apple-style-span" style=3D"font-family: &#39;Times New Roman&#39=
;; white-space: pre-wrap; ">Thanks and Regards,</span><div style=3D"font-fa=
mily: arial, sans-serif; ">
<font face=3D"&#39;Times New Roman&#39;"><span style=3D"white-space: pre-wr=
ap; ">   Sonu</span></font></div></span><br><div class=3D"gmail_quote">
On Thu, Oct 20, 2011 at 1:01 PM, sonu vishwakarma <span dir=3D"ltr">&lt;<a =
href=3D"mailto:vishwasonu2000@gmail.com" target=3D"_blank">vishwasonu2000@g=
mail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<div><br></div><div>I&#39;m trying the bu=
ild for XBMC 10.05 , I was =A0getting the error in the task do_compile as=
=A0</div>




<div><span style=3D"font-family:Arial;font-weight:bold">&quot;RenderSystemG=
LES.cpp:253:31: error: call of overloaded &#39;abs(int64_t)&#39; is ambiguo=
us &quot;</span></div>
<div><span style=3D"font-family:Arial;color:rgb(0, 0, 0);background-color:t=
ransparent;font-weight:bold;font-style:normal;font-variant:normal;vertical-=
align:baseline"><br></span></div><div><font face=3D"Arial">I looked around =
for solution and found a patch at <b>=A0</b></font><span style=3D"font-fami=
ly:Arial"><b><a href=3D"http://patches.openembedded.org/patch/1819/" target=
=3D"_blank">http://patches.openembedded.org/patch/1819/</a> </b>and applied=
 it</span></div>





<div><span style=3D"font-family:Arial">but even after applying the patch th=
e problem remains the same.</span></div><div><span style=3D"font-family:Ari=
al">I&#39;m getting the error as below:</span></div>
<div><span style=3D"font-family:Arial"><br></span></div><div><span style=3D=
"font-family:Arial"><div>| RenderSystemGLES.cpp: In member function &#39;vi=
rtual bool CRenderSystemGLES::IsExtSupported(const char*)&#39;:</div>
<div>| RenderSystemGLES.cpp:181:20: warning: comparison with string literal=
 results in unspecified behaviour</div><div>| RenderSystemGLES.cpp:186:25: =
warning: comparison with string literal results in unspecified behaviour</d=
iv>





<div>| RenderSystemGLES.cpp: In member function &#39;virtual bool CRenderSy=
stemGLES::PresentRender()&#39;:</div><div>| RenderSystemGLES.cpp:253:31: er=
ror: call of overloaded &#39;abs(int64_t)&#39; is ambiguous</div><div>




| /home/sct/black_poky/gigabyte/poky_gigabyte_07Oct2011/build/tmp/sysroots/=
fishriver/usr/include/stdlib.h:771:12: note: candidates are: int abs(int)</=
div>
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
adcbe: task do_compile: Failed</div><div><br></div></span><span style=3D"fo=
nt-family:arial, sans-serif;background-color:rgb(255, 255, 255)"><span styl=
e=3D"font-family:&#39;Times New Roman&#39;;white-space:pre-wrap;background-=
color:rgb(255, 255, 255)">I&#39;m pulling for the Fishriver machine . My ho=
st machine is Ubuntu 10.10 ,64 bit . </span><div>





<font face=3D"&#39;Times New Roman&#39;"><span style=3D"white-space:pre-wra=
p">Can someone help me out of this problem ? </span></font></div><div><font=
 face=3D"&#39;Times New Roman&#39;"><span style=3D"white-space:pre-wrap"><b=
r>

</span></font></div><div><font face=3D"&#39;Times New Roman&#39;"><span sty=
le=3D"white-space:pre-wrap">With Regards,</span></font></div><div><font fac=
e=3D"&#39;Times New Roman&#39;"><span style=3D"white-space:pre-wrap">Sonu</=
span></font></div>





</span><span style=3D"font-family:Arial"><div><br></div></span></div>
</blockquote></div><br></div>

--002215b03a22c92b2004afb75272--

--002215b03a22c92b2804afb75274
Content-Type: application/octet-stream; name="xbmc_svn.bb"
Content-Disposition: attachment; filename="xbmc_svn.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_gtziqy3w0

REVTQ1JJUFRJT04gPSAiWEJNQyBNZWRpYSBDZW50ZXIiCkxJQ0VOU0UgPSAieGJtYyIKCkRFUEVO
RFMgPSAiZ3BlcmYtbmF0aXZlIGxpYnhtdSBmcmliaWRpIG1wZWcyZGVjIGZmbXBlZyBzYW1iYSBm
b250Y29uZmlnIGN1cmwgcHl0aG9uIGxpYm1vZHBsdWcgbGlibWljcm9odHRwZCB3YXZwYWNrIGxp
Ym1tcyBjbWFrZS1uYXRpdmUgbGlic2RsLWltYWdlIGxpYnNkbC1taXhlciAgbXlzcWw1IHNxbGl0
ZTMgbGlibW1zIGZhYWQyIGxpYmNkaW8gbGlicGNyZSBib29zdCBsem8yIGVuY2EgYXZhaGkgbGli
c2FtcGxlcmF0ZTAgbGlieGluZXJhbWEgbGlieHJhbmRyIGxpYnh0c3QgYnppcDIgdmlydHVhbC9s
aWJzZGwgamFzcGVyIHppcC1uYXRpdmUgemxpYiBsaWJtYWQgbGlidm9yYmlzIgojcmVxdWlyZSBy
ZWNpcGVzL2VnbC9lZ2wuaW5jCgoKU1JDUkVWID0gImUyYWI0ODFlYmU5NjQzMjFjMzU4YWI5ZDY0
MDIwODhjNzE0YWRjYmUiCgpQViA9ICIxMC4wNSIKUFIgPSAicjExIgpQUl9hcHBlbmQgPSAiK2dp
dHIke1NSQ1BWfSIKClNSQ19VUkkgPSAiZ2l0Oi8veGJtYy5naXQuc291cmNlZm9yZ2UubmV0L2dp
dHJvb3QveGJtYy94Ym1jO3Byb3RvY29sPWdpdDticmFuY2g9bWFzdGVyIFwKZmlsZTovLzAwMDEt
T25seS1jaGVjay1mb3ItbmFzbS1vbi1pNjg2LWl0LWlzLWJvZ3VzLW9uLUFSTS13aGljaC5wYXRj
aCBcCmZpbGU6Ly8wMDAyLUV4Y2x1ZGUtZ251LWNvbmZpZ2l6ZS1mb3ItbmdzdHItbS1UaGFua3Mt
a29lbi5wYXRjaCBcCmZpbGU6Ly8wMDAzLVdvcmthcm91bmQtdG8tY29tcGlsZS1weXRob24tb24t
bmdzdHItbS13aXRoLVB5dGhvbi0ucGF0Y2ggXApmaWxlOi8vMDAwNC1Eb24tdC11c2Utc3Vkby1p
bi1pbnN0YWxsLW9mLXhibWMuYmluLW5vdC1hbGwtZGlzdHJpLnBhdGNoIFwKZmlsZTovLzAwMDUt
SGFyZGNvZGUtYXJtNy1mb3Itbm93LnBhdGNoIFwKZmlsZTovLzAwMDYtSGFyZGNvZGUtcHl0aG9u
Mi42LWZvci1ub3cucGF0Y2ggXApmaWxlOi8vMDAwNy1Oby1uZWVkLWZvci1GRUgtb24tZW1iZWRk
ZWQtbmVlZC1hLWJldHRlci13YXktdG8tbm90LnBhdGNoIFwKZmlsZTovLzAwMDgtY29uZmlndXJl
LmluLWFsc28tcGFzcy1kb3duLXRhcmdldC13aGVuLXVzaW5nLWhvc3QtYS5wYXRjaCBcCmZpbGU6
Ly8wMDA5LUFkZGVkLWEtY29uZmlndXJlLW9wdGlvbi1kaXNhYmxlLW9wdGljYWwtZHJpdmUucGF0
Y2ggXApmaWxlOi8vMDAxMC1GaXhlZC1zby1jb21waWxlLXdvcmtlZC13aGVuLWRpc2FibGluZy1v
cHRpY2FsLnBhdGNoIFwKZmlsZTovLzAwMTEtcmV2ZXJ0ZWQtc28tbm9ybWFsLWJvb3RzdHJhcC1k
b2Vzbi10LWV4Y2x1ZGUtZ251LWNvbi5wYXRjaCBcCmZpbGU6Ly8wMDEyLWZpeC1sem8tdGhpbmdz
LnBhdGNoIFwKZmlsZTovLzAwMTMteGJtYy1SZW5kZXJTeXN0ZW1HTEVTLmNwcC11c2UtYWJzLWZy
b20tc3RhbmRhcmQtbGlici5wYXRjaCBcCiIKaW5oZXJpdCBhdXRvdG9vbHMgZ2V0dGV4dAoKUyA9
ICIke1dPUktESVJ9L2dpdCIKIApFWFRSQV9PRUNPTkYgPSAiIFwKIC0tZW5hYmxlLWdsZXMgXAog
LS1kaXNhYmxlLW9wdGljYWwtZHJpdmUgXAogLS1lbmFibGUtZXh0ZXJuYWwtbGlicmFyaWVzIFwK
IgojIC0tZW5hYmxlLXZhYXBpIFwgCiMgLS1lbmFibGUteHJhbmRyIFwKIyAtLWRpc2FibGUtdmRh
cHUgXAojIC0tZW5hYmxlLXRlZ3JhIFwKIyIKCmRvX2NvbmZpZ3VyZSgpIHsKCWlmIFsgLWUgYm9v
dHN0cmFwLmFuZ3N0cm9tIF0gOyB0aGVuCgkJc2ggYm9vdHN0cmFwLmFuZ3N0cm9tCgllbHNlCgkJ
c2ggYm9vdHN0cmFwCglmaQojCW9lX3J1bmNvbmYKCS4vY29uZmlndXJlICAtLXByZWZpeD0iJHtE
fSIgLS1lbmFibGUtZ2xlcyAtLWRpc2FibGUtb3B0aWNhbC1kcml2ZSAtLWVuYWJsZS1leHRlcm5h
bC1saWJyYXJpZXMgCiMtLWRpc2FibGUtdmFhcGkgLS1lbmFibGUteHJhbmRyICAtLWRpc2FibGUt
dmRhcHUgLS1lbmFibGUtdGVncmEKfQpwYXRjaF9kb19wYXRjaCgpIHsKfQoKZG9fcWFfY29uZmln
dXJlKCkgewp9CgkKCmRvX2NvbXBpbGVfcHJlcGVuZCgpIHsKCWZvciBpIGluICQoZmluZCAuIC1u
YW1lICJNYWtlZmlsKiIpIDsgZG8KCQlzZWQgLWkgJ3M6SS91c3IvaW5jbHVkZTpJJHtTVEFHSU5H
X0lOQ0RJUn06ZycgJGkKCWRvbmUKCWZvciBpIGluICQoZmluZCAuIC1uYW1lICIqLm1hayoiKSA7
IGRvCgkJc2VkIC1pICdzOkkvdXNyL2luY2x1ZGU6SSR7U1RBR0lOR19JTkNESVJ9OmcnICRpCglk
b25lCglzZWQgLWkgJ3M6SS91c3IvaW5jbHVkZTpJJHtTVEFHSU5HX0lOQ0RJUn06ZycgJHtTfS9N
YWtlZmlsZQkKfQoKZG9faW5zdGFsbF9hcHBlbmQoKSB7CglsbiAtc2YgJHtsaWJkaXJ9L3hibWMv
c3lzdGVtL3B5dGhvbi9weXRob24yNC1hcm0uc28gJHtEfSR7ZGF0YWRpcn0veGJtYy9zeXN0ZW0v
cHl0aG9uLyB8fCB0cnVlCglsbiAtc2YgJHtsaWJkaXJ9L3hibWMvc3lzdGVtL3B5dGhvbi9weXRo
b24yNi1hcm0uc28gJHtEfSR7ZGF0YWRpcn0veGJtYy9zeXN0ZW0vcHl0aG9uLyB8fCB0cnVlCn0K
CkZJTEVTXyR7UE59ICs9ICIke2RhdGFkaXJ9L3hzZXNzaW9ucyIKRklMRVNfJHtQTn0tZGJnICs9
ICIke2xpYmRpcn0veGJtYy8uZGVidWcgJHtsaWJkaXJ9L3hibWMvKi8uZGVidWcgJHtsaWJkaXJ9
L3hibWMvKi8qLy5kZWJ1ZyAke2xpYmRpcn0veGJtYy8qLyovKi8uZGVidWciCgojIE9ubHkgYnVp
bGRzIHdpdGggZ2xpYmMgY3VycmVudGx5LCBzbyB0aGlzIGlzICJzYWZlIgpSUkVDT01NRU5EU18k
e1BOfSArPSAiZ2xpYmMtY2hhcm1hcC1pYm04NTAgZ2xpYmMtZ2NvbnYtaWJtODUwIgoKIyBHTlVf
SEFTSCBRQSBlcnJvcnMuLi4KSU5TQU5FX1NLSVBfJHtQTn0gPSAiVHJ1ZSIKCgo=

--002215b03a22c92b2804afb75274--
