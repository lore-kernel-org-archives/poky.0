Return-Path: <sparsh150847@yahoo.com>
Received: from nm1-vm0.bullet.mail.in.yahoo.com
	(nm1-vm0.bullet.mail.in.yahoo.com [121.101.151.211])
	by mx1.pokylinux.org (Postfix) with SMTP id 4AEFB4C80579
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 05:49:03 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: from [121.101.151.237] by nm1.bullet.mail.in.yahoo.com with NNFMP;
	06 Apr 2011 10:49:01 -0000
Received: from [121.101.151.233] by tm2.bullet.mail.in.yahoo.com with NNFMP;
	06 Apr 2011 10:49:09 -0000
Received: from [127.0.0.1] by omp1002.mail.in.yahoo.com with NNFMP;
	06 Apr 2011 10:52:18 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 685785.96301.bm@omp1002.mail.in.yahoo.com
Received: (qmail 16913 invoked by uid 60001); 6 Apr 2011 10:49:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1302086941; bh=mu7n65KRjCMxlmbZebTZSlgOaoJio0H/DBXqkp2C3NI=;
	h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:MIME-Version:Content-Type;
	b=FMBljLQxYILplvGTyq79LAe2L5ZacLWMkQ2fHWZxdLt4R+NlxFvoGh5GFp4TX2mp0ExFvChYUXY8tZAPk32kZ6UUgg8E91IMGrGGn3fAEWI9hnlDOII3DDUPY2WEZJu5/KYDoiYFIYtZwwFzkZDCcvlbZ6ZALEqSHc+Z5gdY024=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:MIME-Version:Content-Type;
	b=5cJZhmETx4Vf7XrvdgdyX71fRySI1vm1b5hMnn2Gnv63fa6+idUlxHlWtAapsVoeemdGdw0hIrVw5VLIEnXSAm3QbaauaUN8cH3JUP0WjRZgmAAY11cqdgss28vgtjrfvVLdjeOazqMP2oHegnoCpKhsRUfIsW44bOIT9htDp6A=;
Message-ID: <394068.13723.qm@web95713.mail.in.yahoo.com>
X-YMail-OSG: xBQq_I0VM1nEkMeubP59C2P5xA80ffBdtV3XldWsHIECcCF
	n4_L6ZYbsLnvlt6.f2AfZr5EzG6U6o3mz3J5NhiDejsVL6IyqC9iMyS1CIze
	tqR0qXYyTXzLykuWeMqAmzZKTS9c3iIsBoF7KE1nwk0ZGPRkjM78IpbR9tvv
	P0ufTxkcXx.g0DC9ftkZwVEptHy4f6G53j3Ax_wYOypmctNSLe..C9DjAlCX
	48TnMcHHnEuY1jE_mva_EiEOtAfinbDYjlzRaoLigUd25MLyD.sAvpxYyqF1
	td_XhFGAIFHjgJK5J5oUwlQ--
Received: from [115.111.25.162] by web95713.mail.in.yahoo.com via HTTP;
	Wed, 06 Apr 2011 16:18:58 IST
X-Mailer: YahooMailClassic/12.0.2 YahooMailWebService/0.8.109.295617
Date: Wed, 6 Apr 2011 16:18:58 +0530 (IST)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: poky <poky@yoctoproject.org>
MIME-Version: 1.0
Subject: facing problem in branch validation for beagleboard
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
X-List-Received-Date: Wed, 06 Apr 2011 10:49:05 -0000
Content-Type: multipart/alternative; boundary="0-1832924636-1302086938=:13723"

--0-1832924636-1302086938=:13723
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi All,
I'm trying to build a poky image for beagle board with linux-yocto-2.6.37 a=
nd got following errors.
Unstaged changes after reset:M =A0 =A0 =A0 .gitignoreM =A0 =A0 =A0 Document=
ation/hwmon/jc42...error: Your local changes to the following files would b=
e overwritten by checkout...Please move or remove them before you can switc=
h branches.Abortingerror: Cannot delete the branch 'meta-temp' which you ar=
e currently on.error: Your local changes to the following files would be ov=
erwritten by checkout:...Please move or remove them before you can switch b=
ranches.Abortingwarning: could not find ktypes/temp.scc./0-meta-temp-a81c58=
139afe973468e690658cd5f18d.sco: line 14: temp_68b329da9893e34099c7d8ad5cb9c=
940: command not foundERROR. Could not locate meta series for beagleboard-s=
tandardERROR: Function 'do_patch' failed (see /home/surya/Surya/pro/my_poky=
/poky/build/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-2.6.37+git3=
+17e49db8624324d090dd5aaa18ef977bb2dd5f6d_3+17e49db8624324d090dd5aaa18ef977=
bb2dd5f6d-r16/temp/log.do_patch.13906 for further
 information)--------------------------------------------------------------=
---------------------------------------------------------------------please=
 help me to resolve the problem.Thanks in advanceSparsh

--0-1832924636-1302086938=:13723
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" ><tr><td valign=3D"=
top" style=3D"font: inherit;"><font class=3D"Apple-style-span" face=3D"aria=
l" size=3D"2">Hi All,</font><div style=3D"font-family: arial; font-size: 10=
pt; "><br></div><div style=3D"font-family: arial; font-size: 10pt; ">I'm tr=
ying to build a poky image for beagle board with linux-yocto-2.6.37 and got=
 following errors.</div><div style=3D"font-family: arial; font-size: 10pt; =
"><br></div><div style=3D"font-family: arial; font-size: 10pt; "><div>Unsta=
ged changes after reset:</div><div>M &nbsp; &nbsp; &nbsp; .gitignore</div><=
div>M &nbsp; &nbsp; &nbsp; Documentation/hwmon/jc42</div></div><div style=
=3D"font-family: arial; font-size: 10pt; ">.</div><div style=3D"font-family=
: arial; font-size: 10pt; ">.</div><div style=3D"font-family: arial; font-s=
ize: 10pt; ">.</div><div><font class=3D"Apple-style-span" face=3D"arial" si=
ze=3D"2">error: Your local changes to the following files would be overwrit=
ten by
 checkout</font></div><div><font class=3D"Apple-style-span" face=3D"arial" =
size=3D"2">.</font></div><div><font class=3D"Apple-style-span" face=3D"aria=
l" size=3D"2">.</font></div><div><font class=3D"Apple-style-span" face=3D"a=
rial" size=3D"2">.</font></div><div><font class=3D"Apple-style-span" face=
=3D"arial" size=3D"2"><div>Please move or remove them before you can switch=
 branches.</div><div>Aborting</div><div>error: Cannot delete the branch 'me=
ta-temp' which you are currently on.</div><div>error: Your local changes to=
 the following files would be overwritten by checkout:</div><div>.</div><di=
v>.</div><div>.</div><div><div>Please move or remove them before you can sw=
itch branches.</div><div>Aborting</div><div>warning: could not find ktypes/=
temp.scc</div><div>./0-meta-temp-a81c58139afe973468e690658cd5f18d.sco: line=
 14: temp_68b329da9893e34099c7d8ad5cb9c940: command not found</div><div>ERR=
OR. Could not locate meta series for beagleboard-standard</div><div>ERROR: =
Function 'do_patch'
 failed (see /home/surya/Surya/pro/my_poky/poky/build/tmp/work/beagleboard-=
poky-linux-gnueabi/linux-yocto-2.6.37+git3+17e49db8624324d090dd5aaa18ef977b=
b2dd5f6d_3+17e49db8624324d090dd5aaa18ef977bb2dd5f6d-r16/temp/log.do_patch.1=
3906 for further information)</div></div><div>-----------------------------=
---------------------------------------------------------------------------=
---------------------------</div><div>please help me to resolve the problem=
.</div><div>Thanks in advance</div><div>Sparsh</div></font></div></td></tr>=
</table>

--0-1832924636-1302086938=:13723--
