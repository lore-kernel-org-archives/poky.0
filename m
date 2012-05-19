Return-Path: <andrei@gherzan.ro>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 368D9E01402
	for <poky@yoctoproject.org>; Sat, 19 May 2012 14:51:24 -0700 (PDT)
Received: by obbef5 with SMTP id ef5so8696403obb.35
	for <poky@yoctoproject.org>; Sat, 19 May 2012 14:51:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:from:date:message-id:subject:to:cc
	:content-type:x-gm-message-state;
	bh=kEfxSv0/gp1lG53/+u8+3k6Fz3B26BJeg5316nPkByk=;
	b=mm1SmyY298qUEWaRvrAN0TJEqCS4SC1RlzNLBOSUF3fdqcYOojs24jI+YG8z7YOd9O
	h1yBUOOOfZqbXDmx3NZ5rxPADWasQ5/iCe/1n06vZbDGvfsHNuQvBsVQCmCwvVMLbNnb
	zfBflYR0CU44OSOTup8rIAFsnFgMkunnLnAFHsG6ovHxFxX8xKxguAnKTM82vfQ56d7a
	alWJrAsqblaQVuHldSarTOqapC7mQYkGiSxjhC3e3poGl6ChpZuzD/cbq9nx3LKmujB7
	CtGUyst6OH7Dt30crC2GwJvQxQ3oH0nB92xXg8YqeAZPOzVNjwa4qwmgEWWp84XERNs1
	SGKQ==
Received: by 10.50.135.37 with SMTP id pp5mr3683613igb.33.1337464283322; Sat,
	19 May 2012 14:51:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.25.18 with HTTP; Sat, 19 May 2012 14:51:02 -0700 (PDT)
X-Originating-IP: [79.117.116.178]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 20 May 2012 00:51:02 +0300
Message-ID: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>
To: yocto@yoctoproject.org, poky@yoctoproject.org
X-Gm-Message-State: ALoCoQlL1xDzmV+wiaAoRsBP5kq81BFTezyooakI2ul48sNwFj+QsoVl/U49CzUs64StuJaow7Cj
Cc: John.Willis@distant-earth.com
Subject: RaspberryPi Layer
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
X-List-Received-Date: Sat, 19 May 2012 21:51:24 -0000
Content-Type: multipart/alternative; boundary=e89a8f83a12f81da5e04c06aab2e

--e89a8f83a12f81da5e04c06aab2e
Content-Type: text/plain; charset=ISO-8859-1

After an exchange of messages with Richard, Saul and John Willis (he
already started a layer for oe and did a good job in it) i want to announce
that i started start a fork from his layer and with Florin Sarbu will
prepare a layer for RaspberryPi to work upon poky.
Until a stable version of this layer we will keep this layer on bitbucket:
https://bitbucket.org/agherzan/meta-raspberrypi.
I don't know if a mailing list is needed but if there are any others who
want to contribute on this, we can adopt meta-fsl-arm's solution of a
google group and use it as a way of communicating.

Waiting for feedback and hope there will be others to come along.

@g

--e89a8f83a12f81da5e04c06aab2e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

After an exchange of messages with Richard, Saul and John Willis (he alread=
y started a layer for oe and did a good job in it) i want to announce that =
i started start a fork from his layer and with Florin Sarbu will prepare a =
layer for RaspberryPi to work upon poky.=A0<div>


Until a stable version of this layer we will keep this layer on bitbucket:=
=A0<a href=3D"https://bitbucket.org/agherzan/meta-raspberrypi" target=3D"_b=
lank">https://bitbucket.org/agherzan/meta-raspberrypi</a>.=A0</div><div>I d=
on&#39;t know if a mailing list is needed but if there are any others who w=
ant to contribute on this, we can adopt meta-fsl-arm&#39;s solution of a go=
ogle group and use it as a way of=A0communicating.=A0</div>


<div><br></div><div>Waiting for feedback and hope there will be others to c=
ome along.=A0<br clear=3D"all"><div style=3D"text-align:center"></div><div =
style=3D"text-align:center"><div align=3D"left"><font color=3D"#333333" fac=
e=3D"Arial"><br>


</font></div><div align=3D"left"><font color=3D"#333333" face=3D"Arial">@g<=
/font></div></div><br>
</div>

--e89a8f83a12f81da5e04c06aab2e--
