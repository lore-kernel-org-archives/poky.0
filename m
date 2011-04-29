Return-Path: <cahoshing@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 59CD34C80228
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 03:59:25 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pve37 with SMTP id 37so3111056pve.35
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 01:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=2J1QGNk19U+hlh6EIdqS76DTQQ9D5qHk09ibdkqcx+g=;
	b=qAPT9A1CRhXdESD7Yg6us0OOr4HYsU8kz2teT61HadHYd2uXBRDoPrgMFwPnHYuAXI
	titQlnswz+6en73DR53Kp0TvZ5U7nSLVTcOMVmhnUVYkvnQERUcsafY4ttWU3v48sS3g
	fpd2Brer4Rv82OcRPZdCe46OMWtEDv6AKqFGs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=YXJ0ltYGU1ZsJjNkmHqZHUvwPXchvZi9Awph85s1qgPXdEJ3Cxy7HNnidkbUKY6EE1
	t/fEQlcE/UHRQxDJbpBNRnykDQgpnaMvFS+URFtQ9XnAuHpgc5T0W1DinBQJsWVm5asG
	gaZQotZYGRy4mahiVWXUjLoqVd9whwTb9Fiow=
MIME-Version: 1.0
Received: by 10.142.248.17 with SMTP id v17mr1595718wfh.260.1304067558353;
	Fri, 29 Apr 2011 01:59:18 -0700 (PDT)
Received: by 10.143.158.19 with HTTP; Fri, 29 Apr 2011 01:59:18 -0700 (PDT)
Date: Fri, 29 Apr 2011 14:29:18 +0530
Message-ID: <BANLkTimFLr5aKN8Amt=yHzuQdJQehH=s9A@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Error for do_package_write_rpm Sandybridge platform
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
X-List-Received-Date: Fri, 29 Apr 2011 08:59:25 -0000
Content-Type: multipart/alternative; boundary=00504502c9eb942ccb04a20ae39d

--00504502c9eb942ccb04a20ae39d
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to port Poky to the "sandybridge platform" and  using the branch
"bernard" for "sugarbay" machine.
I am running Ubuntu 10.10 on 64 bit machine.

Following is the error I am getting :-

ERROR: Error executing a python function in
/home/abc/poky/meta/recipes-kernel/linux-libc-headers/
linux-libc-headers-yocto_git.bb:
ExpansionError: Failure expanding variable SUMMARY, expression was
${SUMMARY} - Debugging files which triggered exception Exception: variable
SUMMARY references itself!

ERROR: The stack trace of python calls that resulted in this
exception/failure was:
ERROR:   File "write_specfile", line 363, in <module>
ERROR:
ERROR:   File "write_specfile", line 124, in write_specfile
ERROR:
ERROR:   File "/home/abc/poky/bitbake/lib/bb/data.py", line 88, in getVar
ERROR:     return d.getVar(var, exp)
ERROR:
ERROR:   File "/home/abc/poky/bitbake/lib/bb/data_smart.py", line 272, in
getVar
ERROR:     return self.expand(value, var)
ERROR:
ERROR:   File "/home/abc/poky/bitbake/lib/bb/data_smart.py", line 144, in
expand
ERROR:     return self.expandWithRefs(s, varname).value
ERROR:
ERROR:   File "/home/abc/poky/bitbake/lib/bb/data_smart.py", line 134, in
expandWithRefs
ERROR:     raise ExpansionError(varname, s, exc)
ERROR:
ERROR: The code that was being executed was:
ERROR:      0359:
ERROR:      0360: specfile.close()
ERROR:      0361:
ERROR:      0362:
ERROR:  *** 0363:write_specfile(d)
ERROR:      0364:
ERROR: (file: 'write_specfile', lineno: 363, function: <module>)
ERROR:      0120: conffiles = (bb.data.getVar('CONFFILES', localdata, True)
or "").split()
ERROR:      0121:
ERROR:      0122: splitname    = pkgname
ERROR:      0123:
ERROR:  *** 0124: splitsummary = (bb.data.getVar('SUMMARY', localdata, True)
or bb.data.getVar('DESCRIPTION', localdata, True) or ".")
ERROR:      0125: splitversion = (bb.data.getVar('PV', localdata, True) or
"").replace('-', '+')
ERROR:      0126: splitrelease = (bb.data.getVar('PR', localdata, True) or
"")
ERROR:      0127: splitepoch   = (bb.data.getVar('PE', localdata, True) or
"")
ERROR:      0128: splitlicense = (bb.data.getVar('LICENSE', localdata, True)
or "")
ERROR: (file: 'write_specfile', lineno: 124, function: write_specfile)
ERROR: Function 'write_specfile' failed
ERROR: Logfile of failure stored in:
/home/abc/poky/build/tmp/work/snb-poky-linux/linux-libc-headers-yocto-2.6.37+git-1+2b2ef940457f0bb40e0fb76937c921c2962364ca_1+2b2ef940457f0bb40e0fb76937c921c2962364ca-r3/temp/log.do_package_write_rpm.15003
Log data follows:
| ERROR: Error executing a python function in
/home/abc/poky/meta/recipes-kernel/linux-libc-headers/
linux-libc-headers-yocto_git.bb:
| ExpansionError: Failure expanding variable SUMMARY, expression was
${SUMMARY} - Debugging files which triggered exception Exception: variable
SUMMARY references itself!
|
| ERROR: The stack trace of python calls that resulted in this
exception/failure was:
| ERROR:   File "write_specfile", line 363, in <module>
| ERROR:
| ERROR:   File "write_specfile", line 124, in write_specfile
| ERROR:
| ERROR:   File "/home/abc/poky/bitbake/lib/bb/data.py", line 88, in getVar
| ERROR:     return d.getVar(var, exp)
| ERROR:
| ERROR:   File "/home/abc/poky/bitbake/lib/bb/data_smart.py", line 272, in
getVar
| ERROR:     return self.expand(value, var)
| ERROR:
| ERROR:   File "/home/abc/poky/bitbake/lib/bb/data_smart.py", line 144, in
expand
| ERROR:     return self.expandWithRefs(s, varname).value
| ERROR:
| ERROR:   File "/home/abc/poky/bitbake/lib/bb/data_smart.py", line 134, in
expandWithRefs
| ERROR:     raise ExpansionError(varname, s, exc)
| ERROR:
| ERROR: The code that was being executed was:
| ERROR:      0359:
| ERROR:      0360: specfile.close()
| ERROR:      0361:
| ERROR:      0362:
| ERROR:  *** 0363:write_specfile(d)
| ERROR:      0364:
| ERROR: (file: 'write_specfile', lineno: 363, function: <module>)
| ERROR:      0120: conffiles = (bb.data.getVar('CONFFILES', localdata,
True) or "").split()
| ERROR:      0121:
| ERROR:      0122: splitname    = pkgname
| ERROR:      0123:
| ERROR:  *** 0124: splitsummary = (bb.data.getVar('SUMMARY', localdata,
True) or bb.data.getVar('DESCRIPTION', localdata, True) or ".")
| ERROR:      0125: splitversion = (bb.data.getVar('PV', localdata, True) or
"").replace('-', '+')
| ERROR:      0126: splitrelease = (bb.data.getVar('PR', localdata, True) or
"")
| ERROR:      0127: splitepoch   = (bb.data.getVar('PE', localdata, True) or
"")
| ERROR:      0128: splitlicense = (bb.data.getVar('LICENSE', localdata,
True) or "")
| ERROR: (file: 'write_specfile', lineno: 124, function: write_specfile)
| ERROR: Function 'write_specfile' failed
NOTE: package
linux-libc-headers-yocto-2.6.37+git-1+2b2ef940457f0bb40e0fb76937c921c2962364ca_1+2b2ef940457f0bb40e0fb76937c921c2962364ca-r3:
task do_package_write_rpm: Failed
ERROR: Task 807 (/home/abc/poky/meta/recipes-devtools/gcc/libgcc_4.5.1.bb,
do_package_write_rpm) failed with exit code '1'

Please anyone can help me to try to track this error

Chinmaya

--00504502c9eb942ccb04a20ae39d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><meta http-equiv=3D"content-type" content=3D"text/html; ch=
arset=3Dutf-8"><span class=3D"Apple-style-span" style=3D"border-collapse: c=
ollapse; font-family: arial, sans-serif; font-size: 13px; ">Hi,<br><br>I am=
 trying=A0<span>to</span>=A0port Poky=A0<span>to</span>=A0the &quot;sandybr=
idge platform&quot; and=A0 using the branch &quot;bernard&quot; for &quot;s=
ugarbay&quot; machine.<br>
I am running Ubuntu 10.10 on 64 bit machine.</span><div><font class=3D"Appl=
e-style-span" face=3D"arial, sans-serif"><span class=3D"Apple-style-span" s=
tyle=3D"border-collapse: collapse;"><br></span></font></div><div><font clas=
s=3D"Apple-style-span" face=3D"arial, sans-serif"><span class=3D"Apple-styl=
e-span" style=3D"border-collapse: collapse;">Following is the error I am ge=
tting :-<br>
</span></font><div><span class=3D"Apple-style-span" style=3D"border-collaps=
e: collapse; font-family: arial, sans-serif; font-size: 13px; "><br></span>=
</div><div><div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"=
><span class=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERRO=
R: Error executing a python function in /home/abc/poky/meta/recipes-kernel/=
linux-libc-headers/<a href=3D"http://linux-libc-headers-yocto_git.bb">linux=
-libc-headers-yocto_git.bb</a>:</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ExpansionError:=
 Failure expanding variable SUMMARY, expression was ${SUMMARY} - Debugging =
files which triggered exception Exception: variable SUMMARY references itse=
lf!</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;"><br></span></fo=
nt></div><div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><=
span class=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR:=
 The stack trace of python calls that resulted in this exception/failure wa=
s:</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 File=
 &quot;write_specfile&quot;, line 363, in &lt;module&gt;</span></font></div=
><div>
<font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span class=3D"=
Apple-style-span" style=3D"border-collapse: collapse;">ERROR:=A0</span></fo=
nt></div><div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><=
span class=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR:=
 =A0 File &quot;write_specfile&quot;, line 124, in write_specfile</span></f=
ont></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR:=A0</span=
></font></div><div><font class=3D"Apple-style-span" face=3D"arial, sans-ser=
if"><span class=3D"Apple-style-span" style=3D"border-collapse: collapse;">E=
RROR: =A0 File &quot;/home/abc/poky/bitbake/lib/bb/data.py&quot;, line 88, =
in getVar</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 =A0 =
return d.getVar(var, exp)</span></font></div><div><font class=3D"Apple-styl=
e-span" face=3D"arial, sans-serif"><span class=3D"Apple-style-span" style=
=3D"border-collapse: collapse;">ERROR:=A0</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 File=
 &quot;/home/abc/poky/bitbake/lib/bb/data_smart.py&quot;, line 272, in getV=
ar</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 =A0 =
return self.expand(value, var)</span></font></div><div><font class=3D"Apple=
-style-span" face=3D"arial, sans-serif"><span class=3D"Apple-style-span" st=
yle=3D"border-collapse: collapse;">ERROR:=A0</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 File=
 &quot;/home/abc/poky/bitbake/lib/bb/data_smart.py&quot;, line 144, in expa=
nd</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 =A0 =
return self.expandWithRefs(s, varname).value</span></font></div><div><font =
class=3D"Apple-style-span" face=3D"arial, sans-serif"><span class=3D"Apple-=
style-span" style=3D"border-collapse: collapse;">ERROR:=A0</span></font></d=
iv>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 File=
 &quot;/home/abc/poky/bitbake/lib/bb/data_smart.py&quot;, line 134, in expa=
ndWithRefs</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 =A0 =
raise ExpansionError(varname, s, exc)</span></font></div><div><font class=
=3D"Apple-style-span" face=3D"arial, sans-serif"><span class=3D"Apple-style=
-span" style=3D"border-collapse: collapse;">ERROR:=A0</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: The code=
 that was being executed was:</span></font></div><div><font class=3D"Apple-=
style-span" face=3D"arial, sans-serif"><span class=3D"Apple-style-span" sty=
le=3D"border-collapse: collapse;">ERROR: =A0 =A0 =A00359:</span></font></di=
v>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 =A0 =
=A00360:<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>sp=
ecfile.close()</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 =A0 =
=A00361:</span></font></div><div><font class=3D"Apple-style-span" face=3D"a=
rial, sans-serif"><span class=3D"Apple-style-span" style=3D"border-collapse=
: collapse;">ERROR: =A0 =A0 =A00362:</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0*** 0=
363:write_specfile(d)</span></font></div><div><font class=3D"Apple-style-sp=
an" face=3D"arial, sans-serif"><span class=3D"Apple-style-span" style=3D"bo=
rder-collapse: collapse;">ERROR: =A0 =A0 =A00364:</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: (file: &=
#39;write_specfile&#39;, lineno: 363, function: &lt;module&gt;)</span></fon=
t></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 =A0 =
=A00120:<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>c=
onffiles =3D (bb.data.getVar(&#39;CONFFILES&#39;, localdata, True) or &quot=
;&quot;).split()</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 =A0 =
=A00121:</span></font></div><div><font class=3D"Apple-style-span" face=3D"a=
rial, sans-serif"><span class=3D"Apple-style-span" style=3D"border-collapse=
: collapse;">ERROR: =A0 =A0 =A00122:<span class=3D"Apple-tab-span" style=3D=
"white-space:pre">		</span>splitname =A0 =A0=3D pkgname</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 =A0 =
=A00123:</span></font></div><div><font class=3D"Apple-style-span" face=3D"a=
rial, sans-serif"><span class=3D"Apple-style-span" style=3D"border-collapse=
: collapse;">ERROR: =A0*** 0124:<span class=3D"Apple-tab-span" style=3D"whi=
te-space:pre">		</span>splitsummary =3D (bb.data.getVar(&#39;SUMMARY&#39;, =
localdata, True) or bb.data.getVar(&#39;DESCRIPTION&#39;, localdata, True) =
or &quot;.&quot;)</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 =A0 =
=A00125:<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>s=
plitversion =3D (bb.data.getVar(&#39;PV&#39;, localdata, True) or &quot;&qu=
ot;).replace(&#39;-&#39;, &#39;+&#39;)</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 =A0 =
=A00126:<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>s=
plitrelease =3D (bb.data.getVar(&#39;PR&#39;, localdata, True) or &quot;&qu=
ot;)</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 =A0 =
=A00127:<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>s=
plitepoch =A0 =3D (bb.data.getVar(&#39;PE&#39;, localdata, True) or &quot;&=
quot;)</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: =A0 =A0 =
=A00128:<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>s=
plitlicense =3D (bb.data.getVar(&#39;LICENSE&#39;, localdata, True) or &quo=
t;&quot;)</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: (file: &=
#39;write_specfile&#39;, lineno: 124, function: write_specfile)</span></fon=
t></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: Function=
 &#39;write_specfile&#39; failed</span></font></div><div><font class=3D"App=
le-style-span" face=3D"arial, sans-serif"><span class=3D"Apple-style-span" =
style=3D"border-collapse: collapse;">ERROR: Logfile of failure stored in: /=
home/abc/poky/build/tmp/work/snb-poky-linux/linux-libc-headers-yocto-2.6.37=
+git-1+2b2ef940457f0bb40e0fb76937c921c2962364ca_1+2b2ef940457f0bb40e0fb7693=
7c921c2962364ca-r3/temp/log.do_package_write_rpm.15003</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">Log data follow=
s:</span></font></div><div><font class=3D"Apple-style-span" face=3D"arial, =
sans-serif"><span class=3D"Apple-style-span" style=3D"border-collapse: coll=
apse;">| ERROR: Error executing a python function in /home/abc/poky/meta/re=
cipes-kernel/linux-libc-headers/<a href=3D"http://linux-libc-headers-yocto_=
git.bb">linux-libc-headers-yocto_git.bb</a>:</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ExpansionErro=
r: Failure expanding variable SUMMARY, expression was ${SUMMARY} - Debuggin=
g files which triggered exception Exception: variable SUMMARY references it=
self!</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">|=A0</span></fo=
nt></div><div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><=
span class=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERRO=
R: The stack trace of python calls that resulted in this exception/failure =
was:</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 Fi=
le &quot;write_specfile&quot;, line 363, in &lt;module&gt;</span></font></d=
iv><div>
<font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span class=3D"=
Apple-style-span" style=3D"border-collapse: collapse;">| ERROR:</span></fon=
t></div><div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><s=
pan class=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR=
: =A0 File &quot;write_specfile&quot;, line 124, in write_specfile</span></=
font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR:</span>=
</font></div><div><font class=3D"Apple-style-span" face=3D"arial, sans-seri=
f"><span class=3D"Apple-style-span" style=3D"border-collapse: collapse;">| =
ERROR: =A0 File &quot;/home/abc/poky/bitbake/lib/bb/data.py&quot;, line 88,=
 in getVar</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 =
=A0 return d.getVar(var, exp)</span></font></div><div><font class=3D"Apple-=
style-span" face=3D"arial, sans-serif"><span class=3D"Apple-style-span" sty=
le=3D"border-collapse: collapse;">| ERROR:</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 Fi=
le &quot;/home/abc/poky/bitbake/lib/bb/data_smart.py&quot;, line 272, in ge=
tVar</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 =
=A0 return self.expand(value, var)</span></font></div><div><font class=3D"A=
pple-style-span" face=3D"arial, sans-serif"><span class=3D"Apple-style-span=
" style=3D"border-collapse: collapse;">| ERROR:</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 Fi=
le &quot;/home/abc/poky/bitbake/lib/bb/data_smart.py&quot;, line 144, in ex=
pand</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 =
=A0 return self.expandWithRefs(s, varname).value</span></font></div><div><f=
ont class=3D"Apple-style-span" face=3D"arial, sans-serif"><span class=3D"Ap=
ple-style-span" style=3D"border-collapse: collapse;">| ERROR:</span></font>=
</div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 Fi=
le &quot;/home/abc/poky/bitbake/lib/bb/data_smart.py&quot;, line 134, in ex=
pandWithRefs</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 =
=A0 raise ExpansionError(varname, s, exc)</span></font></div><div><font cla=
ss=3D"Apple-style-span" face=3D"arial, sans-serif"><span class=3D"Apple-sty=
le-span" style=3D"border-collapse: collapse;">| ERROR:</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: The co=
de that was being executed was:</span></font></div><div><font class=3D"Appl=
e-style-span" face=3D"arial, sans-serif"><span class=3D"Apple-style-span" s=
tyle=3D"border-collapse: collapse;">| ERROR: =A0 =A0 =A00359:</span></font>=
</div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 =
=A0 =A00360:<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</spa=
n>specfile.close()</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 =
=A0 =A00361:</span></font></div><div><font class=3D"Apple-style-span" face=
=3D"arial, sans-serif"><span class=3D"Apple-style-span" style=3D"border-col=
lapse: collapse;">| ERROR: =A0 =A0 =A00362:</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0***=
 0363:write_specfile(d)</span></font></div><div><font class=3D"Apple-style-=
span" face=3D"arial, sans-serif"><span class=3D"Apple-style-span" style=3D"=
border-collapse: collapse;">| ERROR: =A0 =A0 =A00364:</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: (file:=
 &#39;write_specfile&#39;, lineno: 363, function: &lt;module&gt;)</span></f=
ont></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 =
=A0 =A00120:<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</sp=
an>conffiles =3D (bb.data.getVar(&#39;CONFFILES&#39;, localdata, True) or &=
quot;&quot;).split()</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 =
=A0 =A00121:</span></font></div><div><font class=3D"Apple-style-span" face=
=3D"arial, sans-serif"><span class=3D"Apple-style-span" style=3D"border-col=
lapse: collapse;">| ERROR: =A0 =A0 =A00122:<span class=3D"Apple-tab-span" s=
tyle=3D"white-space:pre">		</span>splitname =A0 =A0=3D pkgname</span></font=
></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 =
=A0 =A00123:</span></font></div><div><font class=3D"Apple-style-span" face=
=3D"arial, sans-serif"><span class=3D"Apple-style-span" style=3D"border-col=
lapse: collapse;">| ERROR: =A0*** 0124:<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">		</span>splitsummary =3D (bb.data.getVar(&#39;SUMMARY=
&#39;, localdata, True) or bb.data.getVar(&#39;DESCRIPTION&#39;, localdata,=
 True) or &quot;.&quot;)</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 =
=A0 =A00125:<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</sp=
an>splitversion =3D (bb.data.getVar(&#39;PV&#39;, localdata, True) or &quot=
;&quot;).replace(&#39;-&#39;, &#39;+&#39;)</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 =
=A0 =A00126:<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</sp=
an>splitrelease =3D (bb.data.getVar(&#39;PR&#39;, localdata, True) or &quot=
;&quot;)</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 =
=A0 =A00127:<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</sp=
an>splitepoch =A0 =3D (bb.data.getVar(&#39;PE&#39;, localdata, True) or &qu=
ot;&quot;)</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: =A0 =
=A0 =A00128:<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</sp=
an>splitlicense =3D (bb.data.getVar(&#39;LICENSE&#39;, localdata, True) or =
&quot;&quot;)</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: (file:=
 &#39;write_specfile&#39;, lineno: 124, function: write_specfile)</span></f=
ont></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">| ERROR: Functi=
on &#39;write_specfile&#39; failed</span></font></div><div><font class=3D"A=
pple-style-span" face=3D"arial, sans-serif"><span class=3D"Apple-style-span=
" style=3D"border-collapse: collapse;">NOTE: package linux-libc-headers-yoc=
to-2.6.37+git-1+2b2ef940457f0bb40e0fb76937c921c2962364ca_1+2b2ef940457f0bb4=
0e0fb76937c921c2962364ca-r3: task do_package_write_rpm: Failed</span></font=
></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">ERROR: Task 807=
 (/home/abc/poky/meta/recipes-devtools/gcc/<a href=3D"http://libgcc_4.5.1.b=
b">libgcc_4.5.1.bb</a>, do_package_write_rpm) failed with exit code &#39;1&=
#39;</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;"><br></span></fo=
nt></div><div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><=
span class=3D"Apple-style-span" style=3D"border-collapse: collapse;">Please=
 anyone can help me to try to track this error</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;"><br></span></fo=
nt></div><div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><=
span class=3D"Apple-style-span" style=3D"border-collapse: collapse;">Chinma=
ya</span></font></div>
<br></div></div></div>

--00504502c9eb942ccb04a20ae39d--
