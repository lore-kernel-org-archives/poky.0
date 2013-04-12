Return-Path: <rsheffield2011@my.fit.edu>
Received: from mail-ee0-f51.google.com (mail-ee0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A49FE014D5
	for <poky@yoctoproject.org>; Fri, 12 Apr 2013 10:05:04 -0700 (PDT)
Received: by mail-ee0-f51.google.com with SMTP id c4so1340739eek.38
	for <poky@yoctoproject.org>; Fri, 12 Apr 2013 10:05:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=wxCy7QnfWRCwKrnpRlF3VuRW3Jjd4u3XqXibU51thCk=;
	b=HovbrPxPSsYW8SeZKqjtlB+DGXfKls+hLxc3BveWM566HfsPIAFI3ZgAHp7FEYY77H
	CkqhiBvaQ2HMNeWvHyvmeC3nywa2eo421TEZ5SHsRmNu2zWuZ1A9Jd5sl4orma1seNfM
	qFL3VM0VUVXbkN2iuBvL5EBz5L2lRsizC8JC6CNgsaxne1gSUPySBCol+2OTW98krUi1
	bakIlPRoNYh6ygfo6r/aQucAwesImwjIZfNXnBP/LLjIRw/oPezaDPq8fhUZ0YN44dNu
	NNtD27FsdDQb17LgN3Mz2bE2DqAKX8KS7DjWOGxXCPM5Kx6oj9PcAfW08Zydg/ddvaqJ
	vMyQ==
MIME-Version: 1.0
X-Received: by 10.15.35.193 with SMTP id g41mr30084889eev.45.1365786302221;
	Fri, 12 Apr 2013 10:05:02 -0700 (PDT)
Received: by 10.14.3.132 with HTTP; Fri, 12 Apr 2013 10:05:02 -0700 (PDT)
Date: Fri, 12 Apr 2013 13:05:02 -0400
Message-ID: <CA+aQ=RMndaWC8Suv2eouL3oNRQYu2yLsTST578+B2hZQ9GsJGg@mail.gmail.com>
From: Robert Sheffield <rsheffield2011@my.fit.edu>
To: poky@yoctoproject.org
X-Gm-Message-State: ALoCoQkdI3qmZ4TVIKONgAc2urBezVuas1cowjmdAVsp13uZquMdwYbhbLK8jXPGRKeCNL1LA417
Subject: NMEA data reader/parser
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 12 Apr 2013 17:05:04 -0000
Content-Type: multipart/alternative; boundary=089e016813c26245ca04da2ce797

--089e016813c26245ca04da2ce797
Content-Type: text/plain; charset=ISO-8859-1

I am working with a new dev board and need to parse and sae the NMEA data
from the Linx GPS device that I am using. I am new to the Yocto project and
am having trouble with the procedures for usig the information on here. I
have read about a gypsy patch that may do what I need, but am not sure
because I can't find a lot of information on it.

Is there a patch that will read NMEA data from a device, parse it and store
it to a file that can be shared by my apache server.

Also, I am trying to use a serial to USB adapter but it seems that I would
need a driver?

-- 
Thank You for Your Time,
Robert Sheffield
Chair FIT-IEEE 2012-2013
theycallmerobert@msn.com
rsheffield2011@my.fit.edu

--089e016813c26245ca04da2ce797
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I am working with a new dev board and need to pa=
rse and sae the NMEA data from the Linx GPS device that I am using. I am ne=
w to the Yocto project and am having trouble with the procedures for usig t=
he information on here. I have read about a gypsy patch that may do what I =
need, but am not sure because I can&#39;t find a lot of information on it. =
<br>
<br></div>Is there a patch that will read NMEA data from a device, parse it=
 and store it to a file that can be shared by my apache server. <br><br></d=
iv>Also, I am trying to use a serial to USB adapter but it seems that I wou=
ld need a driver? <br clear=3D"all">
<div><div><div><div><div><div><br>-- <br>Thank You for Your Time,<br>Robert=
 Sheffield<br>Chair FIT-IEEE 2012-2013<br><a href=3D"mailto:theycallmerober=
t@msn.com" target=3D"_blank">theycallmerobert@msn.com</a><br><a href=3D"mai=
lto:rsheffield2011@my.fit.edu" target=3D"_blank">rsheffield2011@my.fit.edu<=
/a><br>

</div></div></div></div></div></div></div>

--089e016813c26245ca04da2ce797--
