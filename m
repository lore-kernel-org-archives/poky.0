Return-Path: <cahoshing@gmail.com>
Received: from mail-px0-f173.google.com (mail-px0-f173.google.com
	[209.85.212.173])
	by mx1.pokylinux.org (Postfix) with ESMTP id 229704C80479
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 05:43:36 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi16 with SMTP id 16so663807pxi.32
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 03:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=H+OYAEuiEmj4cA4h6k7v+GmLibbBOZzuHZp0coOG7Ak=;
	b=gZQlHTJvkRi6Dpe53f1oDsLqjGzh4VEi7u5phhUKeopIksvvXZZopcytG6ZTr1hjv8
	vicv0KW9Z6za3LErafIGQY0418prOcJ7GpXbmo8jGw2QeB5vt2DtwHTKHDHvsFLXZv1H
	TlpAkz077mxUNeYeHi3HTXsENtfzHhfnOq+Z8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=ixjIBaTpq93HgznI9zKBeneymSgV6018aZ6KDfFfSTTOu7n9fQTcXO7pHKpncEXhC3
	zSU36YY+wXy2lGiGY6Y3afrk81/3XNm/dtPJAEtkLlHnop2tqKff0EG4si3seZ6ChEpb
	8fCnD4kH9a0pN+UCqIEpoKYyI/JgVk3IV+s/M=
MIME-Version: 1.0
Received: by 10.142.149.21 with SMTP id w21mr1623464wfd.431.1304073815197;
	Fri, 29 Apr 2011 03:43:35 -0700 (PDT)
Received: by 10.143.158.19 with HTTP; Fri, 29 Apr 2011 03:43:35 -0700 (PDT)
In-Reply-To: <BANLkTimFLr5aKN8Amt=yHzuQdJQehH=s9A@mail.gmail.com>
References: <BANLkTimFLr5aKN8Amt=yHzuQdJQehH=s9A@mail.gmail.com>
Date: Fri, 29 Apr 2011 16:13:35 +0530
Message-ID: <BANLkTimnYTwtZR00sztuVPWR3k+duTprRw@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Re: Error for do_package_write_rpm Sandybridge platform
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
X-List-Received-Date: Fri, 29 Apr 2011 10:43:36 -0000
Content-Type: multipart/alternative; boundary=000e0cd327d28407b404a20c58cb

--000e0cd327d28407b404a20c58cb
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I have referred to this URL
http://cgit.openembedded.org/cgit.cgi/bitbake/commit/?id=c6c31b5c58a502703879243ca37585e058e09c71
where
there is patch for bitbake/lib/bb/utils.py file.But I have these patch
details by default in my utils.py file.So no need to apply the patch. But
still I am getting the same error as above.

Chinmaya

On Fri, Apr 29, 2011 at 2:29 PM, chinmaya hoshing <cahoshing@gmail.com>wrote:

> Hi,
>
> I am trying to port Poky to the "sandybridge platform" and  using the
> branch "bernard" for "sugarbay" machine.
> I am running Ubuntu 10.10 on 64 bit machine.
>
> Following is the error I am getting :-
>
> ERROR: Error executing a python function in
> /home/abc/poky/meta/recipes-kernel/linux-libc-headers/
> linux-libc-headers-yocto_git.bb:
> ExpansionError: Failure expanding variable SUMMARY, expression was
> ${SUMMARY} - Debugging files which triggered exception Exception: variable
> SUMMARY references itself!
>
> ERROR: The stack trace of python calls that resulted in this
> exception/failure was:
> ERROR:   File "write_specfile", line 363, in <module>
> ERROR:
> ERROR:   File "write_specfile", line 124, in write_specfile
> ERROR:
> ERROR:   File "/home/abc/poky/bitbake/lib/bb/data.py", line 88, in getVar
> ERROR:     return d.getVar(var, exp)
> ERROR:
> ERROR:   File "/home/abc/poky/bitbake/lib/bb/data_smart.py", line 272, in
> getVar
> ERROR:     return self.expand(value, var)
> ERROR:
> ERROR:   File "/home/abc/poky/bitbake/lib/bb/data_smart.py", line 144, in
> expand
> ERROR:     return self.expandWithRefs(s, varname).value
> ERROR:
> ERROR:   File "/home/abc/poky/bitbake/lib/bb/data_smart.py", line 134, in
> expandWithRefs
> ERROR:     raise ExpansionError(varname, s, exc)
> ERROR:
> ERROR: The code that was being executed was:
> ERROR:      0359:
> ERROR:      0360: specfile.close()
> ERROR:      0361:
> ERROR:      0362:
> ERROR:  *** 0363:write_specfile(d)
> ERROR:      0364:
> ERROR: (file: 'write_specfile', lineno: 363, function: <module>)
> ERROR:      0120: conffiles = (bb.data.getVar('CONFFILES', localdata,
> True) or "").split()
> ERROR:      0121:
> ERROR:      0122: splitname    = pkgname
> ERROR:      0123:
> ERROR:  *** 0124: splitsummary = (bb.data.getVar('SUMMARY', localdata,
> True) or bb.data.getVar('DESCRIPTION', localdata, True) or ".")
> ERROR:      0125: splitversion = (bb.data.getVar('PV', localdata, True) or
> "").replace('-', '+')
> ERROR:      0126: splitrelease = (bb.data.getVar('PR', localdata, True) or
> "")
> ERROR:      0127: splitepoch   = (bb.data.getVar('PE', localdata, True) or
> "")
> ERROR:      0128: splitlicense = (bb.data.getVar('LICENSE', localdata,
> True) or "")
> ERROR: (file: 'write_specfile', lineno: 124, function: write_specfile)
> ERROR: Function 'write_specfile' failed
> ERROR: Logfile of failure stored in:
> /home/abc/poky/build/tmp/work/snb-poky-linux/linux-libc-headers-yocto-2.6.37+git-1+2b2ef940457f0bb40e0fb76937c921c2962364ca_1+2b2ef940457f0bb40e0fb76937c921c2962364ca-r3/temp/log.do_package_write_rpm.15003
> Log data follows:
> | ERROR: Error executing a python function in
> /home/abc/poky/meta/recipes-kernel/linux-libc-headers/
> linux-libc-headers-yocto_git.bb:
> | ExpansionError: Failure expanding variable SUMMARY, expression was
> ${SUMMARY} - Debugging files which triggered exception Exception: variable
> SUMMARY references itself!
> |
> | ERROR: The stack trace of python calls that resulted in this
> exception/failure was:
> | ERROR:   File "write_specfile", line 363, in <module>
> | ERROR:
> | ERROR:   File "write_specfile", line 124, in write_specfile
> | ERROR:
> | ERROR:   File "/home/abc/poky/bitbake/lib/bb/data.py", line 88, in getVar
> | ERROR:     return d.getVar(var, exp)
> | ERROR:
> | ERROR:   File "/home/abc/poky/bitbake/lib/bb/data_smart.py", line 272, in
> getVar
> | ERROR:     return self.expand(value, var)
> | ERROR:
> | ERROR:   File "/home/abc/poky/bitbake/lib/bb/data_smart.py", line 144, in
> expand
> | ERROR:     return self.expandWithRefs(s, varname).value
> | ERROR:
> | ERROR:   File "/home/abc/poky/bitbake/lib/bb/data_smart.py", line 134, in
> expandWithRefs
> | ERROR:     raise ExpansionError(varname, s, exc)
> | ERROR:
> | ERROR: The code that was being executed was:
> | ERROR:      0359:
> | ERROR:      0360: specfile.close()
> | ERROR:      0361:
> | ERROR:      0362:
> | ERROR:  *** 0363:write_specfile(d)
> | ERROR:      0364:
> | ERROR: (file: 'write_specfile', lineno: 363, function: <module>)
> | ERROR:      0120: conffiles = (bb.data.getVar('CONFFILES', localdata,
> True) or "").split()
> | ERROR:      0121:
> | ERROR:      0122: splitname    = pkgname
> | ERROR:      0123:
> | ERROR:  *** 0124: splitsummary = (bb.data.getVar('SUMMARY', localdata,
> True) or bb.data.getVar('DESCRIPTION', localdata, True) or ".")
> | ERROR:      0125: splitversion = (bb.data.getVar('PV', localdata, True)
> or "").replace('-', '+')
> | ERROR:      0126: splitrelease = (bb.data.getVar('PR', localdata, True)
> or "")
> | ERROR:      0127: splitepoch   = (bb.data.getVar('PE', localdata, True)
> or "")
> | ERROR:      0128: splitlicense = (bb.data.getVar('LICENSE', localdata,
> True) or "")
> | ERROR: (file: 'write_specfile', lineno: 124, function: write_specfile)
> | ERROR: Function 'write_specfile' failed
> NOTE: package
> linux-libc-headers-yocto-2.6.37+git-1+2b2ef940457f0bb40e0fb76937c921c2962364ca_1+2b2ef940457f0bb40e0fb76937c921c2962364ca-r3:
> task do_package_write_rpm: Failed
> ERROR: Task 807 (/home/abc/poky/meta/recipes-devtools/gcc/libgcc_4.5.1.bb,
> do_package_write_rpm) failed with exit code '1'
>
> Please anyone can help me to try to track this error
>
> Chinmaya
>
>

--000e0cd327d28407b404a20c58cb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div>I have referred to this URL=
=A0<span class=3D"Apple-style-span" style=3D"white-space: pre; "><a href=3D=
"http://cgit.openembedded.org/cgit.cgi/bitbake/commit/?id=3Dc6c31b5c58a5027=
03879243ca37585e058e09c71"><font class=3D"Apple-style-span" face=3D"&#39;ar=
ial narrow&#39;, sans-serif">http://cgit.openembedded.org/cgit.cgi/bitbake/=
commit/?id=3Dc6c31b5c58a502703879243ca37585e058e09c71</font></a><font class=
=3D"Apple-style-span" face=3D"monospace">  </font><font class=3D"Apple-styl=
e-span" face=3D"&#39;arial narrow&#39;, sans-serif">where there is patch fo=
r bitbake/lib/bb/utils.py file.But I have these patch details by default in=
 my utils.py file.So no need to apply the patch. But still I am getting the=
 same error as above.</font></span><div>
<div><span class=3D"Apple-style-span" style=3D"white-space: pre; "><font cl=
ass=3D"Apple-style-span" face=3D"&#39;arial narrow&#39;, sans-serif"><br></=
font></span></div><div><span class=3D"Apple-style-span" style=3D"white-spac=
e: pre; "><font class=3D"Apple-style-span" face=3D"&#39;arial narrow&#39;, =
sans-serif">Chinmaya </font></span><font class=3D"Apple-style-span" face=3D=
"&#39;arial narrow&#39;, sans-serif"><br>
</font><br><div class=3D"gmail_quote">On Fri, Apr 29, 2011 at 2:29 PM, chin=
maya hoshing <span dir=3D"ltr">&lt;<a href=3D"mailto:cahoshing@gmail.com">c=
ahoshing@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;"=
>
<div dir=3D"ltr"><span style=3D"border-collapse:collapse;font-family:arial,=
 sans-serif;font-size:13px">Hi,<br><br>I am trying=A0<span>to</span>=A0port=
 Poky=A0<span>to</span>=A0the &quot;sandybridge platform&quot; and=A0 using=
 the branch &quot;bernard&quot; for &quot;sugarbay&quot; machine.<br>

I am running Ubuntu 10.10 on 64 bit machine.</span><div><font face=3D"arial=
, sans-serif"><span style=3D"border-collapse:collapse"><br></span></font></=
div><div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:co=
llapse">Following is the error I am getting :-<br>

</span></font><div><span style=3D"border-collapse:collapse;font-family:aria=
l, sans-serif;font-size:13px"><br></span></div><div><div><font face=3D"aria=
l, sans-serif"><span style=3D"border-collapse:collapse">ERROR: Error execut=
ing a python function in /home/abc/poky/meta/recipes-kernel/linux-libc-head=
ers/<a href=3D"http://linux-libc-headers-yocto_git.bb" target=3D"_blank">li=
nux-libc-headers-yocto_git.bb</a>:</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ExpansionError: Failure expanding variable SUMMARY, expression was ${SU=
MMARY} - Debugging files which triggered exception Exception: variable SUMM=
ARY references itself!</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se"><br></span></font></div><div><font face=3D"arial, sans-serif"><span sty=
le=3D"border-collapse:collapse">ERROR: The stack trace of python calls that=
 resulted in this exception/failure was:</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 File &quot;write_specfile&quot;, line 363, in &lt;module&gt;=
</span></font></div><div>
<font face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse">E=
RROR:=A0</span></font></div><div><font face=3D"arial, sans-serif"><span sty=
le=3D"border-collapse:collapse">ERROR: =A0 File &quot;write_specfile&quot;,=
 line 124, in write_specfile</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR:=A0</span></font></div><div><font face=3D"arial, sans-serif"><spa=
n style=3D"border-collapse:collapse">ERROR: =A0 File &quot;/home/abc/poky/b=
itbake/lib/bb/data.py&quot;, line 88, in getVar</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 =A0 return d.getVar(var, exp)</span></font></div><div><font =
face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse">ERROR:=
=A0</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 File &quot;/home/abc/poky/bitbake/lib/bb/data_smart.py&quot;=
, line 272, in getVar</span></font></div>
<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 =A0 return self.expand(value, var)</span></font></div><div><=
font face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse">ER=
ROR:=A0</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 File &quot;/home/abc/poky/bitbake/lib/bb/data_smart.py&quot;=
, line 144, in expand</span></font></div>
<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 =A0 return self.expandWithRefs(s, varname).value</span></fon=
t></div><div><font face=3D"arial, sans-serif"><span style=3D"border-collaps=
e:collapse">ERROR:=A0</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 File &quot;/home/abc/poky/bitbake/lib/bb/data_smart.py&quot;=
, line 134, in expandWithRefs</span></font></div>
<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 =A0 raise ExpansionError(varname, s, exc)</span></font></div=
><div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:colla=
pse">ERROR:=A0</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: The code that was being executed was:</span></font></div><div><f=
ont face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse">ERR=
OR: =A0 =A0 =A00359:</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 =A0 =A00360:<span style=3D"white-space:pre-wrap">	</span>spe=
cfile.close()</span></font></div>
<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 =A0 =A00361:</span></font></div><div><font face=3D"arial, sa=
ns-serif"><span style=3D"border-collapse:collapse">ERROR: =A0 =A0 =A00362:<=
/span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0*** 0363:write_specfile(d)</span></font></div><div><font face=
=3D"arial, sans-serif"><span style=3D"border-collapse:collapse">ERROR: =A0 =
=A0 =A00364:</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: (file: &#39;write_specfile&#39;, lineno: 363, function: &lt;modu=
le&gt;)</span></font></div>
<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 =A0 =A00120:<span style=3D"white-space:pre-wrap">		</span>co=
nffiles =3D (bb.data.getVar(&#39;CONFFILES&#39;, localdata, True) or &quot;=
&quot;).split()</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 =A0 =A00121:</span></font></div><div><font face=3D"arial, sa=
ns-serif"><span style=3D"border-collapse:collapse">ERROR: =A0 =A0 =A00122:<=
span style=3D"white-space:pre-wrap">		</span>splitname =A0 =A0=3D pkgname</=
span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 =A0 =A00123:</span></font></div><div><font face=3D"arial, sa=
ns-serif"><span style=3D"border-collapse:collapse">ERROR: =A0*** 0124:<span=
 style=3D"white-space:pre-wrap">		</span>splitsummary =3D (bb.data.getVar(&=
#39;SUMMARY&#39;, localdata, True) or bb.data.getVar(&#39;DESCRIPTION&#39;,=
 localdata, True) or &quot;.&quot;)</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 =A0 =A00125:<span style=3D"white-space:pre-wrap">		</span>sp=
litversion =3D (bb.data.getVar(&#39;PV&#39;, localdata, True) or &quot;&quo=
t;).replace(&#39;-&#39;, &#39;+&#39;)</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 =A0 =A00126:<span style=3D"white-space:pre-wrap">		</span>sp=
litrelease =3D (bb.data.getVar(&#39;PR&#39;, localdata, True) or &quot;&quo=
t;)</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 =A0 =A00127:<span style=3D"white-space:pre-wrap">		</span>sp=
litepoch =A0 =3D (bb.data.getVar(&#39;PE&#39;, localdata, True) or &quot;&q=
uot;)</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: =A0 =A0 =A00128:<span style=3D"white-space:pre-wrap">		</span>sp=
litlicense =3D (bb.data.getVar(&#39;LICENSE&#39;, localdata, True) or &quot=
;&quot;)</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: (file: &#39;write_specfile&#39;, lineno: 124, function: write_sp=
ecfile)</span></font></div>
<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: Function &#39;write_specfile&#39; failed</span></font></div><div=
><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse">=
ERROR: Logfile of failure stored in: /home/abc/poky/build/tmp/work/snb-poky=
-linux/linux-libc-headers-yocto-2.6.37+git-1+2b2ef940457f0bb40e0fb76937c921=
c2962364ca_1+2b2ef940457f0bb40e0fb76937c921c2962364ca-r3/temp/log.do_packag=
e_write_rpm.15003</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">Log data follows:</span></font></div><div><font face=3D"arial, sans-ser=
if"><span style=3D"border-collapse:collapse">| ERROR: Error executing a pyt=
hon function in /home/abc/poky/meta/recipes-kernel/linux-libc-headers/<a hr=
ef=3D"http://linux-libc-headers-yocto_git.bb" target=3D"_blank">linux-libc-=
headers-yocto_git.bb</a>:</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ExpansionError: Failure expanding variable SUMMARY, expression was ${=
SUMMARY} - Debugging files which triggered exception Exception: variable SU=
MMARY references itself!</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">|=A0</span></font></div><div><font face=3D"arial, sans-serif"><span sty=
le=3D"border-collapse:collapse">| ERROR: The stack trace of python calls th=
at resulted in this exception/failure was:</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 File &quot;write_specfile&quot;, line 363, in &lt;module&g=
t;</span></font></div><div>
<font face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse">|=
 ERROR:</span></font></div><div><font face=3D"arial, sans-serif"><span styl=
e=3D"border-collapse:collapse">| ERROR: =A0 File &quot;write_specfile&quot;=
, line 124, in write_specfile</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR:</span></font></div><div><font face=3D"arial, sans-serif"><span=
 style=3D"border-collapse:collapse">| ERROR: =A0 File &quot;/home/abc/poky/=
bitbake/lib/bb/data.py&quot;, line 88, in getVar</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 =A0 return d.getVar(var, exp)</span></font></div><div><fon=
t face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse">| ERR=
OR:</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 File &quot;/home/abc/poky/bitbake/lib/bb/data_smart.py&quo=
t;, line 272, in getVar</span></font></div>
<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 =A0 return self.expand(value, var)</span></font></div><div=
><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse">=
| ERROR:</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 File &quot;/home/abc/poky/bitbake/lib/bb/data_smart.py&quo=
t;, line 144, in expand</span></font></div>
<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 =A0 return self.expandWithRefs(s, varname).value</span></f=
ont></div><div><font face=3D"arial, sans-serif"><span style=3D"border-colla=
pse:collapse">| ERROR:</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 File &quot;/home/abc/poky/bitbake/lib/bb/data_smart.py&quo=
t;, line 134, in expandWithRefs</span></font></div>
<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 =A0 raise ExpansionError(varname, s, exc)</span></font></d=
iv><div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:col=
lapse">| ERROR:</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: The code that was being executed was:</span></font></div><div>=
<font face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse">|=
 ERROR: =A0 =A0 =A00359:</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 =A0 =A00360:<span style=3D"white-space:pre-wrap">	</span>s=
pecfile.close()</span></font></div>
<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 =A0 =A00361:</span></font></div><div><font face=3D"arial, =
sans-serif"><span style=3D"border-collapse:collapse">| ERROR: =A0 =A0 =A003=
62:</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0*** 0363:write_specfile(d)</span></font></div><div><font fa=
ce=3D"arial, sans-serif"><span style=3D"border-collapse:collapse">| ERROR: =
=A0 =A0 =A00364:</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: (file: &#39;write_specfile&#39;, lineno: 363, function: &lt;mo=
dule&gt;)</span></font></div>
<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 =A0 =A00120:<span style=3D"white-space:pre-wrap">		</span>=
conffiles =3D (bb.data.getVar(&#39;CONFFILES&#39;, localdata, True) or &quo=
t;&quot;).split()</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 =A0 =A00121:</span></font></div><div><font face=3D"arial, =
sans-serif"><span style=3D"border-collapse:collapse">| ERROR: =A0 =A0 =A001=
22:<span style=3D"white-space:pre-wrap">		</span>splitname =A0 =A0=3D pkgna=
me</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 =A0 =A00123:</span></font></div><div><font face=3D"arial, =
sans-serif"><span style=3D"border-collapse:collapse">| ERROR: =A0*** 0124:<=
span style=3D"white-space:pre-wrap">		</span>splitsummary =3D (bb.data.getV=
ar(&#39;SUMMARY&#39;, localdata, True) or bb.data.getVar(&#39;DESCRIPTION&#=
39;, localdata, True) or &quot;.&quot;)</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 =A0 =A00125:<span style=3D"white-space:pre-wrap">		</span>=
splitversion =3D (bb.data.getVar(&#39;PV&#39;, localdata, True) or &quot;&q=
uot;).replace(&#39;-&#39;, &#39;+&#39;)</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 =A0 =A00126:<span style=3D"white-space:pre-wrap">		</span>=
splitrelease =3D (bb.data.getVar(&#39;PR&#39;, localdata, True) or &quot;&q=
uot;)</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 =A0 =A00127:<span style=3D"white-space:pre-wrap">		</span>=
splitepoch =A0 =3D (bb.data.getVar(&#39;PE&#39;, localdata, True) or &quot;=
&quot;)</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: =A0 =A0 =A00128:<span style=3D"white-space:pre-wrap">		</span>=
splitlicense =3D (bb.data.getVar(&#39;LICENSE&#39;, localdata, True) or &qu=
ot;&quot;)</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: (file: &#39;write_specfile&#39;, lineno: 124, function: write_=
specfile)</span></font></div>
<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">| ERROR: Function &#39;write_specfile&#39; failed</span></font></div><d=
iv><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse=
">NOTE: package linux-libc-headers-yocto-2.6.37+git-1+2b2ef940457f0bb40e0fb=
76937c921c2962364ca_1+2b2ef940457f0bb40e0fb76937c921c2962364ca-r3: task do_=
package_write_rpm: Failed</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se">ERROR: Task 807 (/home/abc/poky/meta/recipes-devtools/gcc/<a href=3D"ht=
tp://libgcc_4.5.1.bb" target=3D"_blank">libgcc_4.5.1.bb</a>, do_package_wri=
te_rpm) failed with exit code &#39;1&#39;</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se"><br></span></font></div><div><font face=3D"arial, sans-serif"><span sty=
le=3D"border-collapse:collapse">Please anyone can help me to try to track t=
his error</span></font></div>

<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse:collap=
se"><br></span></font></div><div><font face=3D"arial, sans-serif"><span sty=
le=3D"border-collapse:collapse">Chinmaya</span></font></div>
<br></div></div></div>
</blockquote></div><br></div></div></div>

--000e0cd327d28407b404a20c58cb--
