Return-Path: <vsailub4u@gmail.com>
Received: from mail-pz0-f43.google.com (mail-pz0-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D7E1E00320
	for <poky@yoctoproject.org>; Wed, 17 Aug 2011 00:15:00 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk1 with SMTP id 1so675715pzk.16
	for <poky@yoctoproject.org>; Wed, 17 Aug 2011 00:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=3swGCJK+0+2vHBeblY0UBaTFdaQ7OrXzgOjUOOc1EPk=;
	b=IqZtoxR0s7jlU4ELCLR+GtU2KUfBP4AAAemVGaAzv8SBOjtHcheItfMhBK2pzNVHY2
	yIXk0bg1hsX5gfCaLdWgMCeYB8qfiBXiTIDhCjxMrkPKoJxnEWYubvFaeJDdXbsiYTNk
	08aBLm1Yt3sWkJk8Lh1kRgrGyybB3BKg+BrYc=
MIME-Version: 1.0
Received: by 10.142.60.4 with SMTP id i4mr327596wfa.421.1313565310443; Wed, 17
	Aug 2011 00:15:10 -0700 (PDT)
Received: by 10.142.174.9 with HTTP; Wed, 17 Aug 2011 00:15:10 -0700 (PDT)
Date: Wed, 17 Aug 2011 12:45:10 +0530
Message-ID: <CAFt-cozcx0uPkdK5P7JLUrMcYsSRU6sKyjgEdKTC2Q4kdnvekQ@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: poky@yoctoproject.org
Subject: SRCREV s for linux-yocto v3.0.1
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
X-List-Received-Date: Wed, 17 Aug 2011 07:15:00 -0000
Content-Type: multipart/alternative; boundary=0050450294ebb7e1f804aaae4163

--0050450294ebb7e1f804aaae4163
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I downloaded the* poky * and* meta-intel* source using "*git clone*"

git clone git://git.pokylinux.org/poky.git
git clone git://git.yoctoproject.org/meta-intel.

I changed the branch from "*master*" to "*remotes/origin/1.1_M3*". The
source contains both the poky and openembedded recipes.

I modified the local.conf and bblayers.conf for "sugarbay" machine.
I am trying to build the "*core-image-minimal*". But by default It is taking
the linux-yocto v3.0-rc7 because of the SRCREVs.

"*meta-intel/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend*"

----------------------------ooo---------------------------------


FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE_sugarbay = "sugarbay"
KMACHINE_sugarbay  = "yocto/standard/common-pc-64/sugarbay"

SRCREV_machine_pn-linux-yocto_sugarbay ?=
"3216e7d5c3cada16161481826cdb39c930457587"
SRCREV_meta_pn-linux-yocto_sugarbay ?=
"9010d1cbef2633dac7e559a7705c326b7601dd4c"

-----------------------------ooo-----------------------------------


SRCREV_machine_pn-linux-yocto_sugarbay ?=
"3216e7d5c3cada16161481826cdb39c930457587"
SRCREV_meta_pn-linux-yocto_sugarbay ?=
"9010d1cbef2633dac7e559a7705c326b7601dd4c"

These SRCREVs are for linux-yocto v3.0-rc7 but I want to build the source
for* v3.0.1*.


Can anyone Please send me the SRCREV s for* linux-yocto v3.0.1* for "*
sugarbay*" and "*fishriver*" machines for the branch "*remotes/origin/1.1_M3"
and Please tell me how to get the SRCREVs.*
*
*



-- 
Thanks & Regards,
SAI

--0050450294ebb7e1f804aaae4163
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I downloaded the<i> poky </i>=A0and<i> meta-intel</i=
> source using &quot;<i>git clone</i>&quot;</div><div><div><code><br></code=
></div><div><code>git clone git://<a href=3D"http://git.pokylinux.org/poky.=
git">git.pokylinux.org/poky.git</a></code></div>
<div><code>git clone=A0<a href=3D"git://git.yoctoproject.org/meta-intel">gi=
t://git.yoctoproject.org/meta-intel</a>.</code></div><div><font class=3D"Ap=
ple-style-span" face=3D"monospace"><br></font></div><meta http-equiv=3D"con=
tent-type" content=3D"text/html; charset=3Dutf-8"><div>
I changed the branch from &quot;<i>master</i>&quot; to &quot;<i>remotes/ori=
gin/1.1_M3</i>&quot;. The source=A0contains both the poky and=A0openembedde=
d=A0recipes.</div><div><br></div><div>I modified the local.conf and bblayer=
s.conf for &quot;sugarbay&quot; machine.</div>
<div>I am trying to build the &quot;<i>core-image-minimal</i>&quot;. But by=
 default It is taking the linux-yocto v3.0-rc7 because of the SRCREVs.</div=
><div><br></div><div>&quot;<i>meta-intel/meta-sugarbay/recipes-kernel/linux=
/linux-yocto_3.0.bbappend</i>&quot;</div>
<div><br></div><div>----------------------------ooo------------------------=
---------</div><div><br></div><div><br></div><div><div>FILESEXTRAPATHS_prep=
end :=3D &quot;${THISDIR}/${PN}:&quot;</div><div><br></div><div>COMPATIBLE_=
MACHINE_sugarbay =3D &quot;sugarbay&quot;</div>
<div>KMACHINE_sugarbay =A0=3D &quot;yocto/standard/common-pc-64/sugarbay&qu=
ot;</div><div><br></div><div>SRCREV_machine_pn-linux-yocto_sugarbay ?=3D &q=
uot;3216e7d5c3cada16161481826cdb39c930457587&quot;</div><div>SRCREV_meta_pn=
-linux-yocto_sugarbay ?=3D &quot;9010d1cbef2633dac7e559a7705c326b7601dd4c&q=
uot;</div>
</div><div><br></div><div>-----------------------------ooo-----------------=
------------------</div><div><br></div><div><br></div><div><meta http-equiv=
=3D"content-type" content=3D"text/html; charset=3Dutf-8"><div>SRCREV_machin=
e_pn-linux-yocto_sugarbay ?=3D &quot;3216e7d5c3cada16161481826cdb39c9304575=
87&quot;</div>
<div>SRCREV_meta_pn-linux-yocto_sugarbay ?=3D &quot;9010d1cbef2633dac7e559a=
7705c326b7601dd4c&quot;</div></div><div><br></div><div>These SRCREVs are fo=
r linux-yocto v3.0-rc7 but I want to build the source for<i> v3.0.1</i>.</d=
iv>
<div><br></div><div><br></div><div>Can anyone Please send me the SRCREV s f=
or<i> linux-yocto v3.0.1</i> for &quot;<i>sugarbay</i>&quot; and &quot;<i>f=
ishriver</i>&quot; machines for the branch &quot;<i>remotes/origin/1.1_M3&q=
uot; and Please tell me how to get the SRCREVs.</i></div>
<div><i><br></i></div><meta http-equiv=3D"content-type" content=3D"text/htm=
l; charset=3Dutf-8"><div><br></div><div><br></div><div><br></div>-- <br>Tha=
nks &amp; Regards,<br>SAI<br><br>
</div>

--0050450294ebb7e1f804aaae4163--
