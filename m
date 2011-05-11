Return-Path: <cahoshing@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CD3B4C80523
	for <poky@yoctoproject.org>; Wed, 11 May 2011 06:40:50 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk10 with SMTP id 10so264483pzk.35
	for <poky@yoctoproject.org>; Wed, 11 May 2011 04:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=nGIE0WsHQtIRnTUulYPW0twHsLhTfyiUjc6NFX426+w=;
	b=IZ1fFtE8GhyQKDXTevuVv9hW7vj44UGiKLf4ROblLcC62pe9oR+oSqFaU3s22ZYQDx
	4Fg0LEd9qjweLrrfyczWssmbiqBPEtGUerDkkw8/8yN9hG1JZsG22qM1BS9MOJX+xOER
	/5vRT0JVdAMSjoFkYpBEQt1isiy4uvDi6nZ14=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=HZvTb4lshl6lLK8IBCgMBAVwEyyG8RIGPzugJPYUE2B2HZFkUSfnUg71n9lgvU4nGG
	ClwyMAHB6OWgrBSLz+smg8t/6Ok5d2E1nGGDefqSnf/BZj7hguK+gIIl+SPFfWk35aCB
	PE2g468+yvhyizpCarzgrzvPPvwzUHuAFJYaI=
MIME-Version: 1.0
Received: by 10.142.196.14 with SMTP id t14mr5315694wff.89.1305114050302; Wed,
	11 May 2011 04:40:50 -0700 (PDT)
Received: by 10.143.158.19 with HTTP; Wed, 11 May 2011 04:40:50 -0700 (PDT)
Date: Wed, 11 May 2011 17:10:50 +0530
Message-ID: <BANLkTim+RSMZEuEc-n+anqME7Cy7+=vEEQ@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Problem with porting poky for Sugarbay platform sandybridge machine
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
X-List-Received-Date: Wed, 11 May 2011 11:40:51 -0000
Content-Type: multipart/alternative; boundary=000e0cd2e2425c165904a2fe8b66

--000e0cd2e2425c165904a2fe8b66
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to port Poky to the "sandybridge platform" and  using the branch
"bernard" for "sugarbay" machine.
I am running Ubuntu 10.10 on 64 bit machine.
My sugarbay build is successful so I have installed the image ,here I copied
the binaries of file and strace externally but I am *geting error :-
 -sh : file : not found*   (same for strace).

Also I have tried the same thing for fishriver machine using bernard branch
running on 32 bit machine and for atom-pc machine on 32 bit host and there
everything is working fine means getting the binaries of file and strace and
the command working fine.

Then what may be the problem for sugarbay machine .Is it that the
configurations of both fishriver and sugarbay will be the issue???
or Is there any problem of 64 bit shell on which I am building sandybridge
(sugarbay machine) poky ?????

Anybody have any idea!!!!!!!
please help me out to find the issue with this


Chinmaya

--000e0cd2e2425c165904a2fe8b66
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><meta http-equiv=3D"content-type" content=3D"text/html; ch=
arset=3Dutf-8"><span class=3D"Apple-style-span" style=3D"border-collapse: c=
ollapse; font-family: arial, sans-serif; font-size: 13px; ">Hi,</span><div>=
<span class=3D"Apple-style-span" style=3D"border-collapse: collapse; font-f=
amily: arial, sans-serif; font-size: 13px; "><br>
</span></div><div><span class=3D"Apple-style-span" style=3D"border-collapse=
: collapse; font-family: arial, sans-serif; font-size: 13px; ">I am trying=
=A0<span>to</span>=A0port Poky=A0<span>to</span>=A0the &quot;sandybridge pl=
atform&quot; and=A0 using the branch &quot;bernard&quot; for &quot;sugarbay=
&quot; machine.<br>
I am running Ubuntu 10.10 on 64 bit machine.</span></div><div><font class=
=3D"Apple-style-span" face=3D"arial, sans-serif"><span class=3D"Apple-style=
-span" style=3D"border-collapse: collapse;">My sugarbay build is=A0successf=
ul=A0so I have installed the image ,here I copied the binaries of file and =
strace=A0externally but I am <b>geting error :- =A0 =A0 =A0-sh : file : not=
 found</b>=A0=A0 (same for strace).</span></font></div>
<div><span class=3D"Apple-style-span" style=3D"border-collapse: collapse; f=
ont-family: arial, sans-serif; "><br></span></div><div><span class=3D"Apple=
-style-span" style=3D"border-collapse: collapse; font-family: arial, sans-s=
erif; ">Also I have tried the same thing for fishriver machine using bernar=
d branch running on 32 bit machine and for atom-pc machine on 32 bit host a=
nd there everything is working fine means getting the binaries of file and =
strace and the command working fine.=A0</span></div>
<div><span class=3D"Apple-style-span" style=3D"border-collapse: collapse; f=
ont-family: arial, sans-serif; "><br></span></div><div><span class=3D"Apple=
-style-span" style=3D"border-collapse: collapse; font-family: arial, sans-s=
erif; ">Then what may be the problem for sugarbay machine .Is it that the c=
onfigurations of both fishriver and sugarbay will be the issue???</span></d=
iv>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse; ">or Is there an=
y problem of 64 bit shell on which I am building sandybridge (sugarbay mach=
ine) poky ?????</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;"><br></span></fo=
nt></div><div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><=
span class=3D"Apple-style-span" style=3D"border-collapse: collapse;">Anybod=
y have any idea!!!!!!!</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><span clas=
s=3D"Apple-style-span" style=3D"border-collapse: collapse;">please help me =
out to find the issue with this</span></font></div><div><font class=3D"Appl=
e-style-span" face=3D"arial, sans-serif"><span class=3D"Apple-style-span" s=
tyle=3D"border-collapse: collapse;"><br>
</span></font></div><div><font class=3D"Apple-style-span" face=3D"arial, sa=
ns-serif"><span class=3D"Apple-style-span" style=3D"border-collapse: collap=
se;"><br></span></font></div><div><font class=3D"Apple-style-span" face=3D"=
arial, sans-serif"><span class=3D"Apple-style-span" style=3D"border-collaps=
e: collapse;">Chinmaya</span></font></div>
</div>

--000e0cd2e2425c165904a2fe8b66--
