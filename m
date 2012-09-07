Return-Path: <sparsh150847@yahoo.com>
Received: from nm26-vm7.bullet.mail.sg3.yahoo.com (unknown [106.10.151.118])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id B034DE01507
	for <poky@yoctoproject.org>; Thu,  6 Sep 2012 21:58:23 -0700 (PDT)
Received: from [106.10.166.121] by nm26.bullet.mail.sg3.yahoo.com with NNFMP;
	07 Sep 2012 04:57:54 -0000
Received: from [106.10.150.28] by tm10.bullet.mail.sg3.yahoo.com with NNFMP;
	07 Sep 2012 04:57:54 -0000
Received: from [127.0.0.1] by omp1029.mail.sg3.yahoo.com with NNFMP;
	07 Sep 2012 04:57:54 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 385194.14628.bm@omp1029.mail.sg3.yahoo.com
Received: (qmail 53744 invoked by uid 60001); 7 Sep 2012 04:57:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1346993874; bh=Rsn6i27lmBar8cLG0EEJikzjBWSVcZDVJB5fu/bsTQ4=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=A93NWh8SAQn/RrpDz9OyiqZVjXhMHvgOnttXUGSg6wdFzGlvgFXq3IcXU6eh6mmrsZI6yMnxamcRaoiVxD+LPXmz5VcAmCP8QzAEHL9sJCwY2TB4/rXK4MaetxtKHAo8WuMoGX0/3KLHnAgVCtU6nNOmb8E5qEQo4/JftnQkfIU=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=FBFlBSSAkjtBOqa2JzfWzz0NaTEy/1kr8MkmU4VAba9XTyWObeSnU7bnNYPLMY9N/+Gz1UYpvSundzRzltGDto7hxlknDseBpSO/WZzBUeqQDN4s2lLoykQJRFQJ9G2ox8rUsBTIuccgkDSbki6Pg+7bW5XBdqCjDfRSLDoXfcM=;
X-YMail-OSG: 91VfHD0VM1nDGoQSkkhqSYa5.iKh5TQerFqUVMJOc3obZ8i
	Bd5mOUwBonxFrpGQBL4szstw9Tyt9oeDh7HdG6MukhOS8F_4DU0r_GfUj9Kt
	T858m9twnvoR3DR5Isqhv0lH7udbFF8Ue4qDm8X4n1a16WC.ygZOyl4MbKYY
	oV84GUrbsU11funkYAK2kY8JJHzEWSEPLLfNASol8qLOc3FGDAaYH8lUuZdc
	wgJ0bW5p9KTaA98ktW7zFMIzzoy7p.UnP.wJcu5vYt.ISRQ.xJBxwu2ku9AE
	uTrSAkUgDB0aS5DV_MHb3FsKSHrmYvBtAtcgep9CwMcnXax6tiatJTt1_yJ7
	gAbqlTPxtTPGtq5PDiUXVmzx5_F9dkwtnTtkJnsmvfiPl8Z_g
Received: from [115.111.25.162] by web194602.mail.sg3.yahoo.com via HTTP;
	Fri, 07 Sep 2012 12:57:54 SGT
X-Mailer: YahooMailWebService/0.8.121.416
Message-ID: <1346993874.53166.YahooMailNeo@web194602.mail.sg3.yahoo.com>
Date: Fri, 7 Sep 2012 12:57:54 +0800 (SGT)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: poky <poky@yoctoproject.org>
MIME-Version: 1.0
Subject: Compilation error while compiling xbmc-11.1
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Sparsh Wid hope <sparsh150847@yahoo.com>
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 07 Sep 2012 04:58:24 -0000
Content-Type: multipart/alternative;
	boundary="937119039-1532819000-1346993874=:53166"

--937119039-1532819000-1346993874=:53166
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi All,=0A=0AI'm trying to compile xbmc-11.1with poky. Configuration info i=
s given below:=0A=0AOE Build Configuration:=0ABB_VERSION=A0=A0=A0=A0=A0=A0=
=A0 =3D "1.11.0"=0AMETADATA_BRANCH=A0=A0 =3D "bernard-cur"=0AMETADATA_REVIS=
ION =3D "1f2e1abbe2726ea6fc83e83b644ce7ee32a54fa2"=0ATARGET_ARCH=A0=A0=A0=
=A0=A0=A0 =3D "i586"=0ATARGET_OS=A0=A0=A0=A0=A0=A0=A0=A0 =3D "linux"=0AMACH=
INE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D "fishriver"=0ADISTRO=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 =3D "poky"=0ADISTRO_VERSION=A0=A0=A0 =3D "1.0"=0ATARGET_=
FPU=A0=A0=A0=A0=A0=A0=A0 =3D ""=0A=0A=0AI got the following compile time er=
ror:=0A=0ADVDStateSerializer.cpp: In static member function 'static bool CD=
VDStateSerializer::DVDToXMLState(std::string&, const dvd_state_t*)':=0A| DV=
DStateSerializer.cpp:207:13: error: no match for 'operator<<' in 'stream <<=
 xmlDoc'=0A=0AI looked into file DVDStateSerializer.cpp +207=0A=0Astd::stri=
ngstream stream;=0A=A0 stream << xmlDoc;=0A=A0 xmlstate =3D stream.str();=
=0A=0AIt seems that it's getting fail to get data from xmlDoc object.I'm un=
able to resolve the error, so please help me to fix this.=0A=0AThanks in ad=
vance=0A

--937119039-1532819000-1346993874=:53166
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div>Hi All,</div><di=
v><br></div><div style=3D"color: rgb(0, 0, 0); font-size: 16px; font-family=
: times new roman,new york,times,serif; background-color: transparent; font=
-style: normal;">I'm trying to compile <span style=3D"font-weight: bold;">x=
bmc-11.1</span><span> with poky. Configuration info is given below:</span><=
/div><div style=3D"color: rgb(0, 0, 0); font-size: 16px; font-family: times=
 new roman,new york,times,serif; background-color: transparent; font-style:=
 normal;"><br><span></span></div><div style=3D"color: rgb(0, 0, 0); font-si=
ze: 16px; font-family: times new roman,new york,times,serif; background-col=
or: transparent; font-style: normal;"><span>OE Build Configuration:<br>BB_V=
ERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "1.11.0"<br>METADATA_B=
RANCH&nbsp;&nbsp; =3D "bernard-cur"<br>METADATA_REVISION =3D
 "1f2e1abbe2726ea6fc83e83b644ce7ee32a54fa2"<br>TARGET_ARCH&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; =3D "i586"<br>TARGET_OS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; =3D "linux"<br>MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =3D "fishriver"<br>DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "poky"<br>DISTRO_VERSION&nbsp=
;&nbsp;&nbsp; =3D "1.0"<br>TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; =3D ""<br></span></div><div style=3D"color: rgb(0, 0, 0); font-size: 1=
6px; font-family: times new roman,new york,times,serif; background-color: t=
ransparent; font-style: normal;"><br><span></span></div><div style=3D"color=
: rgb(0, 0, 0); font-size: 16px; font-family: times new roman,new york,time=
s,serif; background-color: transparent; font-style: normal;"><span>I got th=
e following compile time error</span>:</div><div style=3D"color: rgb(0, 0, =
0); font-size: 16px; font-family: times new roman,new york,times,serif;
 background-color: transparent; font-style: normal;"><br></div><div style=
=3D"color: rgb(0, 0, 0); font-size: 16px; font-family: times new roman,new =
york,times,serif; background-color: transparent; font-style: normal;"><span=
 style=3D"color: rgb(0, 0, 0);">DVDStateSerializer.cpp: In static member fu=
nction 'static bool CDVDStateSerializer::DVDToXMLState(std::string&amp;, co=
nst dvd_state_t*)':</span><br style=3D"color: rgb(0, 0, 0);"><span style=3D=
"color: rgb(255, 0, 0);"><span style=3D"color: rgb(0, 0, 0);">| DVDStateSer=
ializer.cpp:207:13:</span> error: no match for 'operator&lt;&lt;' in 'strea=
m &lt;&lt; xmlDoc'</span></div><div style=3D"color: rgb(0, 0, 0); font-size=
: 16px; font-family: times new roman,new york,times,serif; background-color=
: transparent; font-style: normal;"><br></div><div style=3D"color: rgb(0, 0=
, 0); font-size: 16px; font-family: times new roman,new york,times,serif; b=
ackground-color: transparent; font-style: normal;">I looked into file <span
 style=3D"color: rgb(255, 0, 0); font-weight: bold;"><span style=3D"color: =
rgb(0, 0, 0);">DVDStateSerializer.cpp </span></span><span style=3D"color: r=
gb(255, 0, 0);"><span style=3D"color: rgb(0, 0, 0);"><span><span><span><spa=
n><span><span>+207</span></span></span></span></span></span></span></span><=
/div><div style=3D"color: rgb(0, 0, 0); font-size: 16px; font-family: times=
 new roman,new york,times,serif; background-color: transparent; font-style:=
 normal;"><br></div><div style=3D"color: rgb(0, 0, 0); font-size: 16px; fon=
t-family: times new roman,new york,times,serif; background-color: transpare=
nt; font-style: normal;"><span style=3D"color: rgb(255, 0, 0);"><span style=
=3D"color: rgb(0, 0, 0);"><span><span><span><span><span><span></span></span=
></span></span></span></span></span></span><span style=3D"color: rgb(255, 0=
, 0); font-weight: bold;"><span style=3D"color: rgb(0, 0, 0);"><span style=
=3D"font-weight: bold;"><span style=3D"font-weight: bold;"><span style=3D"f=
ont-weight:
 bold;"><span style=3D"font-weight: bold;"><span style=3D"font-weight: bold=
;"><span style=3D"font-weight: bold;"></span></span></span></span></span></=
span>std::stringstream stream;<br><span style=3D"color: rgb(255, 64, 64);">=
&nbsp; stream &lt;&lt; xmlDoc;</span><br>&nbsp; xmlstate =3D stream.str();<=
/span></span></div><div style=3D"color: rgb(0, 0, 0); font-size: 16px; font=
-family: times new roman,new york,times,serif; background-color: transparen=
t; font-style: normal;"><span style=3D"color: rgb(255, 0, 0); font-weight: =
bold;"><span style=3D"color: rgb(0, 0, 0);"><span style=3D"font-weight: bol=
d;"><br></span></span></span></div><div style=3D"color: rgb(0, 0, 0); font-=
size: 16px; font-family: times new roman,new york,times,serif; background-c=
olor: transparent; font-style: normal;"><span style=3D"color: rgb(255, 0, 0=
);"><span style=3D"color: rgb(0, 0, 0);"><span>It seems </span>that it's ge=
tting fail to get data from <span style=3D"font-weight: bold;">xmlDoc</span=
>
 object.</span></span><span style=3D"color: rgb(255, 0, 0); font-weight: bo=
ld;"><span style=3D"color: rgb(0, 0, 0);"> </span></span><span style=3D"col=
or: rgb(255, 0, 0);"><span style=3D"color: rgb(0, 0, 0);"><span><span>I'm u=
nable to resolve the error, so please help me to fix this.</span></span></s=
pan></span><span style=3D"color: rgb(255, 0, 0); font-weight: bold;"><span =
style=3D"color: rgb(0, 0, 0);"></span></span></div><div style=3D"color: rgb=
(0, 0, 0); font-size: 16px; font-family: times new roman,new york,times,ser=
if; background-color: transparent; font-style: normal;"><br><span style=3D"=
color: rgb(255, 0, 0); font-weight: bold;"><span style=3D"color: rgb(0, 0, =
0);"></span></span></div><div style=3D"color: rgb(0, 0, 0); font-size: 16px=
; font-family: times new roman,new york,times,serif; background-color: tran=
sparent; font-style: normal;"><span style=3D"color: rgb(255, 0, 0);"><span =
style=3D"color: rgb(0, 0, 0);">Thanks in advance</span></span><span style=
=3D"color: rgb(255,
 0, 0); font-weight: bold;"><span style=3D"color: rgb(0, 0, 0);"><br></span=
></span></div></div></body></html>

--937119039-1532819000-1346993874=:53166--
