Return-Path: <vsailub4u@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A06D0E00502
	for <poky@yoctoproject.org>; Fri, 30 Sep 2011 00:21:46 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yih10 with SMTP id 10so1781244yih.35
	for <poky@yoctoproject.org>; Fri, 30 Sep 2011 00:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=wnAkgNE8tegeoynnOAmpiLah2aZnmJuwa2FwiBysUzc=;
	b=EvDnyntDdgL6SUZhdXVwE1XMxN7KMWmN6yP2slE7mmm5XxNyCgfntQHrIsZgKaIEVN
	KbYxori2Fax3GdxYEChNvk7hf8gZxLHsgG8l8nI7WZDX6i3nMRFQenkqnQh9/Ra9NJQl
	V/8ywsmO2VgzBgHS9CW5W3b5e7YLSvLhyPc08=
MIME-Version: 1.0
Received: by 10.68.15.70 with SMTP id v6mr38858311pbc.85.1317367304164; Fri,
	30 Sep 2011 00:21:44 -0700 (PDT)
Received: by 10.142.177.7 with HTTP; Fri, 30 Sep 2011 00:21:44 -0700 (PDT)
Date: Fri, 30 Sep 2011 12:51:44 +0530
Message-ID: <CAFt-coyH+xTzgY03s-oVAeY55zVRhKaMKAJSqqCCuibnTS+Avg@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: poky@yoctoproject.org
Subject: Error while pulling XBMC package.
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
X-List-Received-Date: Fri, 30 Sep 2011 07:21:47 -0000
Content-Type: multipart/alternative; boundary=bcaec520f7c534144504ae237ae2

--bcaec520f7c534144504ae237ae2
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm trying to pull the package XBMC 10.05 which depends on libsdl_mixer and
its there in the meta/recipe as libsdl. Another dependency libsdl_image also
present in libsdl is getting pulled
easily but while building for libsdl_mixer with the recipe
libsdl-mixer_1.2.11.bb i'm getting the
error as below:

ERROR: Nothing PROVIDES 'libsdl_mixer'
ERROR: Command execution failed: Traceback (most recent call last):
  File "/home/sct/logi/gigabyte/poky_ gigabyte_16Sep2011/bitbake/
lib/bb/command.py", line 102, in runAsyncCommand
    commandmethod(self.cmds_async,
 self, options)
  File "/home/sct/logi/gigabyte/poky_ gigabyte_16Sep2011/bitbake/
lib/bb/command.py", line 200, in buildTargets
    command.cooker.buildTargets( pkgs_to_build, task)
  File "/home/sct/logi/gigabyte/poky_
 gigabyte_16Sep2011/bitbake/ lib/bb/cooker.py", line 826, in buildTargets
    taskdata.add_provider( localdata, self.status, k)
  File
 "/home/sct/logi/gigabyte/poky_ gigabyte_16Sep2011/bitbake/
lib/bb/taskdata.py", line 353, in add_provider
    self.add_provider_internal( cfgData, dataCache, item)
  File "/home/sct/logi/gigabyte/poky_ gigabyte_16Sep2011/bitbake/
lib/bb/taskdata.py", line 373, in add_provider_internal
    raise bb.providers.NoProvider(item)
NoProvider: libsdl_mixer


I'm building the poky for *"Fishriver"* machine . My host machine is
*"Ubuntu 10.10, 64 bit ".
*
Can someone help me out of this problem ?


-- 
Thanks & Regards,
SAI

--bcaec520f7c534144504ae237ae2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<span style=3D"color:rgb(69, 69, 69);font-size:12px;font-family:Arial, Helv=
etica, sans-serif"><div><span style=3D"color:rgb(0, 0, 0);font-size:13px;fo=
nt-style:normal;font-variant:normal;letter-spacing:normal;line-height:norma=
l;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;b=
ackground-color:rgb(255, 255, 255);font-family:arial, sans-serif"><font siz=
e=3D"3">Hi,</font></span></div>
<div><span style=3D"color:rgb(0, 0, 0);font-size:13px;font-style:normal;fon=
t-variant:normal;letter-spacing:normal;line-height:normal;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;background-color:rgb=
(255, 255, 255);font-family:arial, sans-serif"><font size=3D"3"><br>
</font><span style=3D"white-space:pre-wrap;background-color:rgb(255, 255, 2=
55);font-size:16px;font-family:&#39;Times New Roman&#39;">I&#39;m trying to=
 pull the package XBMC 10.05 which depends on libsdl_mixer and its there in=
 the
meta/recipe as libsdl. Another dependency libsdl_image also present in libs=
dl is getting pulled=A0</span></span></div><div><span style=3D"color:rgb(0,=
 0, 0);font-size:13px;font-style:normal;font-variant:normal;letter-spacing:=
normal;line-height:normal;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;background-color:rgb(255, 255, 255);font-family:aria=
l, sans-serif"><span style=3D"white-space:pre-wrap;background-color:rgb(255=
, 255, 255);font-size:16px;font-family:&#39;Times New Roman&#39;">easily bu=
t while building for libsdl_mixer with the recipe <a rel=3D"nofollow" href=
=3D"http://libsdl-mixer_1.2.11.bb/" style=3D"color:rgb(0, 0, 204);outline-s=
tyle:none;outline-color:initial" target=3D"_blank">libsdl-mixer_1.2.11.bb</=
a> i&#39;m getting the=A0</span></span></div>
<div><span style=3D"color: rgb(0, 0, 0); font-size: 13px; font-variant: nor=
mal; letter-spacing: normal; line-height: normal; text-indent: 0px; text-tr=
ansform: none; white-space: normal; word-spacing: 0px; background-color: rg=
b(255, 255, 255); font-family: arial, sans-serif; "><span style=3D"font-sty=
le: normal; white-space: pre-wrap; background-color: rgb(255, 255, 255); fo=
nt-size: 16px; font-family: &#39;Times New Roman&#39;; ">error as below:</s=
pan><span style=3D"font-style: normal; background-color: rgb(255, 255, 255)=
; "><pre style=3D"display:block;margin-top:1em;margin-right:0px;margin-bott=
om:1em;margin-left:0px;white-space:pre-wrap;font-family:&#39;Courier New&#3=
9;">
<font size=3D"3"><span style=3D"white-space:pre-wrap">ERROR: Nothing PROVID=
ES &#39;libsdl_mixer&#39;<br>ERROR: Command execution failed: Traceback (mo=
st recent call last):<br>  File &quot;/home/sct/logi/gigabyte/poky_ gigabyt=
e_16Sep2011/bitbake/ lib/bb/command.py&quot;, line 102, in runAsyncCommand<=
br>
    commandmethod(self.cmds_async,
 self, options)<br>  File &quot;/home/sct/logi/gigabyte/poky_ gigabyte_16Se=
p2011/bitbake/ lib/bb/command.py&quot;, line 200, in buildTargets<br>    co=
mmand.cooker.buildTargets( pkgs_to_build, task)<br>  File &quot;/home/sct/l=
ogi/gigabyte/poky_
 gigabyte_16Sep2011/bitbake/ lib/bb/cooker.py&quot;, line 826, in buildTarg=
ets<br>    taskdata.add_provider( localdata, self.status, k)<br>  File<br> =
&quot;/home/sct/logi/gigabyte/poky_ gigabyte_16Sep2011/bitbake/ lib/bb/task=
data.py&quot;, line 353, in add_provider<br>
    self.add_provider_internal( cfgData, dataCache, item)<br>  File &quot;/=
home/sct/logi/gigabyte/poky_ gigabyte_16Sep2011/bitbake/ lib/bb/taskdata.py=
&quot;, line 373, in add_provider_internal<br>    raise bb.providers.NoProv=
ider(item)<br>
NoProvider: libsdl_mixer</span></font><span style=3D"white-space:pre-wrap;f=
ont-size:medium;font-family:&#39;Times New Roman&#39;"><br></span></pre></s=
pan><span style=3D"white-space: pre-wrap; background-color: rgb(255, 255, 2=
55); font-size: 16px; font-family: &#39;Times New Roman&#39;; "><div style=
=3D"font-style: normal; ">
<span style=3D"white-space:pre-wrap;background-color:rgb(255, 255, 255);fon=
t-size:16px;font-family:&#39;Times New Roman&#39;"><br></span></div>I&#39;m=
 building the poky for <i><b>&quot;Fishriver&quot;</b></i> machine . My hos=
t machine is  <i>&quot;<b> Ubuntu 10.10, 64 bit &quot;.</b></i></span><div =
style=3D"font-style: normal; ">
<font face=3D"&#39;Times New Roman&#39;" size=3D"3"><span style=3D"white-sp=
ace:pre-wrap">Can someone help me out of this problem ? </span></font></div=
></span></div></span><div><br></div><div><br></div>-- <br>Thanks &amp; Rega=
rds,<br>
SAI<br><br>

--bcaec520f7c534144504ae237ae2--
