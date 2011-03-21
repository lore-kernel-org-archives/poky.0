Return-Path: <sparsh150847@yahoo.com>
Received: from nm3.bullet.mail.in.yahoo.com (nm3.bullet.mail.in.yahoo.com
	[121.101.151.225])
	by mx1.pokylinux.org (Postfix) with SMTP id 9D3AF4C80132
	for <poky@yoctoproject.org>; Mon, 21 Mar 2011 05:29:43 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: from [121.101.151.236] by nm3.bullet.mail.in.yahoo.com with NNFMP;
	21 Mar 2011 10:29:42 -0000
Received: from [121.101.151.233] by tm1.bullet.mail.in.yahoo.com with NNFMP;
	21 Mar 2011 10:29:38 -0000
Received: from [127.0.0.1] by omp1002.mail.in.yahoo.com with NNFMP;
	21 Mar 2011 10:29:29 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 749101.75161.bm@omp1002.mail.in.yahoo.com
Received: (qmail 16728 invoked by uid 60001); 21 Mar 2011 10:29:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1300703381; bh=zxYI/pg4gMBuZHEIpdUjoWjkYuRrb+YYJ5ju/OnLVV4=;
	h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:MIME-Version:Content-Type;
	b=4pODGqJLTV9g7w1c/95pLJyV+fE6z1VMA4xeL7H4ID2ngfnuUHGc8TcYD2LMpWWzH8gPIIwh6C/bJjj1Q6pXSyJeEXAbTV7qzzaX6bhptwAUpG459pH9C6KnuVCdEQXda7OV5mWul6s9iIiUUdv29kUVlwsoqUyfYKI6vJ4iazw=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:MIME-Version:Content-Type;
	b=Bog6qYTT2z2ChYXWOD6L9ZvKlfAGiVxk2VlSBCfp/TNowpn0T8y/NqSmb9HHO2bokAsNv+nvGoDTPHEXupJXf/JYVdN2Rl9HdQLJXKGw4d4Z3EL3q1rU0U7gGgB+3uj2VcwjN6Sg8sbz7c5vBzLHpaMW2F/dslewLRpDly+aJYo=;
Message-ID: <63726.2611.qm@web95703.mail.in.yahoo.com>
X-YMail-OSG: gvHju6sVM1n8ZoHAcc.5_3b6nJDB_K5e0A9l7nPO6lFIPu5
	yCvUuUVMpPg_76Ae6pKbWxs7UeN3N6CNIOVZMgX3WZVuNFucu8cD0.4dmdSb
	6hrTlCfTp8sP.9We6.aNDtmVTjBK8NcuDqkjkv6iqB5enLrwT5SNZN6XCDoW
	Ozty41wdyP4..R5xHVPLHAKLFKKO2BJHigFhQdj2BhUw87t0kBYkgJEPCYk9
	Pb8VDsDVjoolhQ2FSL.4-
Received: from [115.111.25.162] by web95703.mail.in.yahoo.com via HTTP;
	Mon, 21 Mar 2011 15:59:37 IST
X-Mailer: YahooMailClassic/11.4.20 YahooMailWebService/0.8.109.295617
Date: Mon, 21 Mar 2011 15:59:37 +0530 (IST)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: poky@yoctoproject.org
MIME-Version: 1.0
Subject: Need help to build poky image for beagle board
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
X-List-Received-Date: Mon, 21 Mar 2011 10:29:45 -0000
Content-Type: multipart/alternative; boundary="0-1872261984-1300703377=:2611"

--0-1872261984-1300703377=:2611
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi All,
I'm trying to build poky image for beagle board.=A0I got the following erro=
r- FATAL: Error when parsing []: file classes/packaged-staging.bbclass not =
found in /home/surya/Surya/pro/POKY/meta-texasinstruments:/home/surya/Surya=
/pro/POKY/meta=A0
I followed the steps below-
1.Downloaded the source=A0wget -c http://git.pokylinux.org/cgit/cgit.cgi/po=
ky/snapshot/poky-laverne-4.0.1.tar.bz2
and rename it as POKY.2. Get TI's overlay=0Agit clone git://github.com/mrch=
app/meta-texasinstruments.git=0Acd meta-texasinstruments=0Agit checkout -b =
gitomapzoom --track origin/gitomapzoom=0A=0A3. Copy configuration=0Acp -p P=
OKY/meta-texasinstruments/conf/misc/local.conf POKY/build/conf/local.conf=
=0A=0A4. Build!=0Acd POKY=0Asource poky-init-build-envfrom the link http://=
elinux.org/BeagleBoard/PokyHelp me to solve this error.Thanks in advance   =
       =0A=0A

--0-1872261984-1300703377=:2611
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" ><tr><td valign=3D"=
top" style=3D"font: inherit;"><div id=3D"yiv1904449371"><table cellspacing=
=3D"0" cellpadding=3D"0" border=3D"0" id=3D"yiv1904449371bodyDrftID" class=
=3D"yiv1904449371"><tbody><tr><td id=3D"yiv1904449371drftMsgContent" style=
=3D"font: inherit; font-family: arial; "><font class=3D"yiv1904449371Apple-=
style-span" face=3D"arial" size=3D"2" style=3D"font-size: 10pt; ">Hi All,</=
font><div style=3D"font-family: arial; font-size: 10pt; "><br></div><div st=
yle=3D"font-family: arial; font-size: 10pt; ">I'm trying to build poky imag=
e for beagle board.&nbsp;</div><div style=3D"font-family: arial; font-size:=
 10pt; "><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"><pre style=3D"font-family: arial; font-size: 10pt; ">I got the follo=
wing error- </pre><span class=3D"yiv1904449371Apple-style-span" style=3D"ba=
ckground-color: rgb(160, 255, 64); "><font class=3D"yiv1904449371Apple-styl=
e-span" face=3D"monospace" size=3D"2"><span
 class=3D"yiv1904449371Apple-style-span" style=3D"white-space: pre; ">FATAL=
: Error when parsing []: file classes/packaged-staging.bbclass not found in=
 /home/surya/Surya/pro/POKY/meta-texasinstruments:/home/surya/Surya/pro/POK=
Y/meta</span></font><font class=3D"yiv1904449371Apple-style-span" face=3D"a=
rial" size=3D"2">&nbsp;</font></span></div><div><font class=3D"Apple-style-=
span" size=3D"2"><br></font></div><div style=3D"font-family: arial; font-si=
ze: 10pt; ">I followed the steps below-</div><div style=3D"font-family: ari=
al; font-size: 10pt; "><br></div><div style=3D"font-family: arial; font-siz=
e: 10pt; ">1.Downloaded the source&nbsp;</div><div style=3D"font-family: ar=
ial; font-size: 10pt; "><span class=3D"Apple-style-span" style=3D"white-spa=
ce: pre; ">wget -c <a href=3D"http://git.pokylinux.org/cgit/cgit.cgi/poky/s=
napshot/poky-laverne-4.0.1.tar.bz2">http://git.poky<wbr>linux.org/cgit/<wbr=
>cgit.cgi/poky/s<wbr>napshot/poky-la<wbr>verne-4.0.1.tar<wbr>.bz2</a></span=
></div><div
 style=3D"font-family: arial; font-size: 10pt; "><br></div><div style=3D"fo=
nt-family: arial; font-size: 10pt; ">and rename it as POKY.</div><div style=
=3D"font-size: 10pt; "><pre style=3D"font-family:arial;font-size:10pt;">2. =
Get TI's overlay=0Agit clone git://github.com/mrchapp/meta-texasinstruments=
.git=0Acd meta-texasinstruments=0Agit checkout -b gitomapzoom --track origi=
n/gitomapzoom=0A=0A3. Copy configuration=0Acp -p POKY/meta-texasinstruments=
/conf/misc/local.conf POKY/build/conf/local.conf=0A=0A4. Build!=0Acd POKY=
=0Asource poky-init-build-env</pre><pre style=3D"font-family:arial;font-siz=
e:10pt;">from the link <span class=3D"yiv1904449371Apple-style-span" style=
=3D"background-color:rgb(128, 255, 0);">http://elinux.org/BeagleBoard/Poky<=
/span></pre><pre style=3D"font-family:arial;font-size:10pt;">Help me to sol=
ve this error.</pre><pre style=3D"font-family:arial;font-size:10pt;">Thanks=
 in advance          </pre></div></td></tr></tbody></table></div></td></tr>=
</table><br>

--0-1872261984-1300703377=:2611--
