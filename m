Return-Path: <akshat.embedded@gmail.com>
Received: from mail-pz0-f43.google.com (mail-pz0-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73079E01286
	for <poky@yoctoproject.org>; Thu,  8 Sep 2011 03:37:57 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk1 with SMTP id 1so1060795pzk.16
	for <poky@yoctoproject.org>; Thu, 08 Sep 2011 03:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=NpPZQT1OTaqe06bixLZ4qj8x+q2pYlyLc1sZ3XVMZsQ=;
	b=sXK07vrkRqv1RBgc75JiJHiydaado8EyzJ5sbrr1R+YblM8YbFWNNQOU0z7HGcaNeO
	U026GbFxERUvTKYO7RLe20KyZ4eS88Bkw2LtOWBxnjZGW8CutFpF/8p9wenpUeXhx+Gm
	kWRKGqsZhGSZM2PPjzwtHaK4D50yQMtTfxS4U=
MIME-Version: 1.0
Received: by 10.68.46.42 with SMTP id s10mr57838pbm.187.1315478277253; Thu, 08
	Sep 2011 03:37:57 -0700 (PDT)
Received: by 10.142.179.5 with HTTP; Thu, 8 Sep 2011 03:37:57 -0700 (PDT)
Date: Thu, 8 Sep 2011 16:07:57 +0530
Message-ID: <CAJrrM57QN9WTX43HLcJ2ORu9-rqe+fAEcO9AOzL_sY__40YGzw@mail.gmail.com>
From: Akshat Saha <akshat.embedded@gmail.com>
To: poky@yoctoproject.org
Subject: Multi-Lib Build for Sugarbay Machine
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
X-List-Received-Date: Thu, 08 Sep 2011 10:37:57 -0000
Content-Type: multipart/alternative; boundary=bcaec539645c6cea4604ac6ba70a

--bcaec539645c6cea4604ac6ba70a
Content-Type: text/plain; charset=ISO-8859-1

Hi,

Can we build Sugarbay machine with multi-lib environment.

I noticed the following lines at the end of local.conf:
*
*
*# Uncomment the following lines to enable multilib builds*
*# require conf/multilib.conf*
*# MULTILIBS = "multilib:lib32"*
*# DEFAULTTUNE_virtclass-multilib-lib32 = "x86"*

I have started a build with the above lines uncommented.

I want to know if this the right approach. If yes, is there any method to
verify whether the build being made in multi-lib or lib64 only.

I checked tmp/sysroots/ for lib32 but could not any instance.

-- 
Akshat

--bcaec539645c6cea4604ac6ba70a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>Can we build Sugarbay machine with multi-lib environ=
ment.</div><div><br></div><div>I noticed the following lines at the end of =
local.conf:</div><div><i><br></i></div><div><i># Uncomment the following li=
nes to enable multilib builds</i></div>
<div><div><i># require conf/multilib.conf</i></div><div><i># MULTILIBS =3D =
&quot;multilib:lib32&quot;</i></div><div><i># DEFAULTTUNE_virtclass-multili=
b-lib32 =3D &quot;x86&quot;</i></div></div><div><br></div><div>I have start=
ed a build with the above lines uncommented.=A0</div>
<div><br></div><div>I want to know if this the right approach. If yes, is t=
here any method to verify whether the build being made in multi-lib or lib6=
4 only.</div><div><br></div><div>I checked tmp/sysroots/ for lib32 but coul=
d not any instance.</div>
<div><div><br></div>-- <br><div><span style=3D"color:rgb(51, 51, 51);font-f=
amily:georgia, serif">Akshat=A0</span></div><div><br></div><br>
</div>

--bcaec539645c6cea4604ac6ba70a--
