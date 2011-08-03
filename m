Return-Path: <sparsh150847@yahoo.com>
Received: from web95713.mail.in.yahoo.com (web95713.mail.in.yahoo.com
	[121.101.150.224])
	by mx1.pokylinux.org (Postfix) with SMTP id 304BA4C80053
	for <poky@yoctoproject.org>; Wed,  3 Aug 2011 04:48:15 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: (qmail 17471 invoked by uid 60001); 3 Aug 2011 09:48:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1312364894; bh=CpGP9snMK5TmGNntsjr8D4C1/1eYqXVb6SV5HIGBdpg=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Subject:To:MIME-Version:Content-Type;
	b=whvtIk000n13YdwyBvwCLJUqLMFcXqVyUMS7g7+SuLzVYngwNbxK4EtZuBUnwyAeqEGMx2iLjCo2LkXHwyNgyJsX9B6/reDYnxnKHWQ354yc6d09QNPs+Nvsch9tQqzs8peFosqE9ERR80chQdNWincnIzNzqqLicahI9pafscQ=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Subject:To:MIME-Version:Content-Type;
	b=K0wg8MGpjI2k7fu4RMqXaSn9Md5nKWIHqhG+ViM7fO9N+STYK2h+7sz7ddbmxXdKlMmvsKRt637Y86SYVsRN1/BmKKUSWTHMduGs1yJZ0b/gTKA3AxbnWwu19jNinfrUqjIoQj8i2huRIEVQeMbbx9aEOyJ/7wJ8x20Dxk93qtE=;
X-YMail-OSG: eseFePIVM1m5OxHufHCaGuuKTsLtBYTnIIPPFiqHOl___ZB
	_uIqxtzZVTGw0uAoZfuzQTQs5tilLyoxC5cZ5HI8Q.9NmQj95NZZSLkW3q1x
	NOPxizl2V02mP1cGgOQvthwfLUga3XepTuhbZ0v956CmqfiJVfK2sim9nw7v
	8W_XBhpx3EgcXlw0SJ3mVmjwKj7c.6Fr8.P7dh4MlTltQc.XJqvq1TD1nByB
	0X3Z6e6kBAPfTl7Es5Njzsog6vr6N6tw4Ac9_cq5PQLrmlSDqr9aMTr0fXok
	r9Hmv6RAg3mV1aWjyQ77uhQ--
Received: from [115.111.25.162] by web95713.mail.in.yahoo.com via HTTP;
	Wed, 03 Aug 2011 15:18:13 IST
X-Mailer: YahooMailClassic/14.0.3 YahooMailWebService/0.8.113.313619
Message-ID: <1312364893.6304.YahooMailClassic@web95713.mail.in.yahoo.com>
Date: Wed, 3 Aug 2011 15:18:13 +0530 (IST)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: poky <poky@yoctoproject.org>
MIME-Version: 1.0
Subject: problem in building qt for archos.
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
X-List-Received-Date: Wed, 03 Aug 2011 09:48:18 -0000
Content-Type: multipart/alternative; boundary="0-1223862900-1312364893=:6304"

--0-1223862900-1312364893=:6304
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi All,
I'm trying to bitbake qt4-embedded on openembedded, but it getting fail wit=
h message:
sed: can't read /home/surya/pds-project/openaos/build/angstrom-dev/work/arm=
v7a-angstrom-linux-gnueabi/qt4-embedded-4.7.2-r26.1/image/usr/lib/*.la: No =
such file or directory| sed: can't read=0A /home/surya/pds-project/openaos/=
build/angstrom-dev/work/armv7a-angstrom-linux-gnueabi/qt4-embedded-4.7.2-r2=
6.1/image/usr/lib/*.prl: No such file or directory| sed: can't read /home/s=
urya/pds-project/openaos/build/angstrom-dev/work/armv7a-angstrom-linux-gnue=
abi/qt4-embedded-4.7.2-r26.1/image/usr/lib/pkgconfig/*.pc: No such file or =
directory
when I tried to explore it, came to know that the path I have:
/home/surya/pds-project/openaos/build/angstrom-dev/work/armv7a-angstrom-lin=
ux-gnueabi/qt4-embedded-4.7.2-r26.1/image/home/surya/pds-project/openaos/bu=
ild/angstrom-dev/staging/x86_64-linux/usr/
in place of=A0=A0/home/surya/pds-project/openaos/build/angstrom-dev/work/ar=
mv7a-angstrom-linux-gnueabi/qt4-embedded-4.7.2-r26.1/image/usr/
I'm not getting how to resolve this problem. Please give me any clue regard=
ing it.
Thakns in advance


--0-1223862900-1312364893=:6304
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" ><tr><td valign=3D"=
top" style=3D"font: inherit;"><div id=3D"yiv954008982"><table cellspacing=
=3D"0" cellpadding=3D"0" border=3D"0" id=3D"yiv954008982bodyDrftID" class=
=3D"yiv954008982"><tbody><tr><td id=3D"yiv954008982drftMsgContent" style=3D=
"font:inherit;font-family:arial;font-size:10pt;"><font class=3D"yiv95400898=
2Apple-style-span" face=3D"arial" size=3D"2">Hi All,</font><div style=3D"fo=
nt-family:arial;font-size:10pt;"><br></div><div style=3D"font-family:arial;=
font-size:10pt;">I'm trying to bitbake qt4-embedded on openembedded, but it=
 getting fail with message:</div><div style=3D"font-family:arial;font-size:=
10pt;"><div><font class=3D"yiv954008982Apple-style-span" color=3D"#FF0000">=
<br></font></div><div><font class=3D"yiv954008982Apple-style-span" color=3D=
"#FF0000">sed: can't read /home/surya/pds-project/openaos/build/angstrom-de=
v/work/armv7a-angstrom-linux-gnueabi/qt4-embedded-4.7.2-r26.1/image/usr/lib=
/*.la: No such file or
 directory</font></div><div><font class=3D"yiv954008982Apple-style-span" co=
lor=3D"#FF0000">| sed: can't read=0A /home/surya/pds-project/openaos/build/=
angstrom-dev/work/armv7a-angstrom-linux-gnueabi/qt4-embedded-4.7.2-r26.1/im=
age/usr/lib/*.prl: No such file or directory</font></div><div><font class=
=3D"yiv954008982Apple-style-span" color=3D"#FF0000">| sed: can't read /home=
/surya/pds-project/openaos/build/angstrom-dev/work/armv7a-angstrom-linux-gn=
ueabi/qt4-embedded-4.7.2-r26.1/image/usr/lib/pkgconfig/*.pc: No such file o=
r directory</font></div></div><div style=3D"font-family:arial;font-size:10p=
t;"><br></div><div style=3D"font-family:arial;font-size:10pt;">when I tried=
 to explore it, came to know that the path I have:</div><div><font class=3D=
"yiv954008982Apple-style-span" face=3D"arial" size=3D"2"><b><br></b></font>=
</div><div><font class=3D"yiv954008982Apple-style-span" face=3D"arial" size=
=3D"2"><b>/home/surya/pds-project/openaos/build/angstrom-dev/work/armv7a-an=
gstrom-linux-gnueabi/qt4-embedded-4.7.2-r26.1/image<font class=3D"yiv954008=
982Apple-style-span"
 color=3D"#FF007F">/home/surya/pds-project/openaos/build/angstrom-dev/stagi=
ng/x86_64-linux/usr/</font></b></font></div><div><font class=3D"yiv95400898=
2Apple-style-span" color=3D"#FF007F" face=3D"arial" size=3D"2"><b><br></b><=
/font></div><div><font class=3D"yiv954008982Apple-style-span" face=3D"arial=
" size=3D"2">in place of&nbsp;&nbsp;<b>/home/surya/pds-project/openaos/buil=
d/angstrom-dev/work/armv7a-angstrom-linux-gnueabi/qt4-embedded-4.7.2-r26.1/=
image/usr/</b></font></div><div><font class=3D"yiv954008982Apple-style-span=
" face=3D"arial" size=3D"2"><font class=3D"yiv954008982Apple-style-span" co=
lor=3D"#FF007F"><br></font></font></div><div><font class=3D"yiv954008982App=
le-style-span" face=3D"arial" size=3D"2">I'm not getting how to resolve thi=
s problem. Please give me any clue regarding it.</font></div><div><font cla=
ss=3D"yiv954008982Apple-style-span" face=3D"arial" size=3D"2"><br></font></=
div><div><font class=3D"yiv954008982Apple-style-span" face=3D"arial" size=
=3D"2">Thakns in
 advance</font></div><div><font class=3D"yiv954008982Apple-style-span" colo=
r=3D"#FF007F" face=3D"arial" size=3D"2"><br></font></div><div style=3D"font=
-family:arial;font-size:10pt;"><br></div></td></tr></tbody></table></div></=
td></tr></table>

--0-1223862900-1312364893=:6304--
