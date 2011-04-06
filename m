Return-Path: <sparsh150847@yahoo.com>
Received: from nm1-vm0.bullet.mail.in.yahoo.com
	(nm1-vm0.bullet.mail.in.yahoo.com [121.101.151.211])
	by mx1.pokylinux.org (Postfix) with SMTP id BB7CB4C80AAC
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 08:25:45 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: from [121.101.151.236] by nm1.bullet.mail.in.yahoo.com with NNFMP;
	06 Apr 2011 13:25:43 -0000
Received: from [121.101.151.233] by tm1.bullet.mail.in.yahoo.com with NNFMP;
	06 Apr 2011 13:25:39 -0000
Received: from [127.0.0.1] by omp1002.mail.in.yahoo.com with NNFMP;
	06 Apr 2011 13:29:00 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 865823.82046.bm@omp1002.mail.in.yahoo.com
Received: (qmail 25721 invoked by uid 60001); 6 Apr 2011 13:25:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1302096343; bh=kvuyW+YFh1ZobyBdPtKDkxGt71u+5IKlZ/5P7BPc9KE=;
	h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:Cc:MIME-Version:Content-Type;
	b=VJraKTXFGDrGZNNSH0ONfDKNCW3cHOmMTUpGJSKhJ+UhYepUqGiADhlpZPnR7LIK0x8IxtATsAdJNjzGqY0qfUvCBT1XvbsmamZr6pDXzCXdHcdV9xjO8z3QCNcnjLyRoQboM0lJdXbOk8hVMoUnS7LrW8kJloJn1rcAZ7lEBzU=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:Cc:MIME-Version:Content-Type;
	b=udu9txe+TM17v5Ubz0jAY4B0HlITn0pkUDNrz4Pr8H349qNb2Mt9SRe9J0yj8yqScv8l9yezIE/VNJ010Z6l8Qu1fFQ3BIWIAeG2Vfd1t/rp21E+rgOhVtzrReBRs/bvWNF0nR10L57GAlCp+9NKyNVNRzyzzjY1FsAQHiVnBtk=;
Message-ID: <670496.25176.qm@web95704.mail.in.yahoo.com>
X-YMail-OSG: TU9Of0oVM1kIeoacLN4_8lbeQ18lF6PYNq__Vq7dMvIER5G
	fOT1FNLOS52.nyvPqBmZvNgB_yvj7nKh3jQ5cAcH0wRXE4jGCFJhNQWNsejF
	USY_aQq8sT.JGEVrJxLczQdML303VxQFU37_rHF0WOKovjf0v2eheP_3_atn
	WfShY5Gg36_p9R89nZznAFv2CMObmXqf5ElPvdgUMGj7uirzY2HOHlrKpQ.p
	ZcgK_C9ABxQ2BH.YdfhXo1BbqjS1abmW.ytAR0TdF0U.0pXfDRta__ZEuHHR
	HmFEZAo88wZ.3ogeL30Tfcbo-
Received: from [115.111.25.162] by web95704.mail.in.yahoo.com via HTTP;
	Wed, 06 Apr 2011 18:55:40 IST
X-Mailer: YahooMailClassic/12.0.2 YahooMailWebService/0.8.109.295617
Date: Wed, 6 Apr 2011 18:55:40 +0530 (IST)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: poky <poky@yoctoproject.org>
MIME-Version: 1.0
Subject: Re: facing problem in branch validation for beagleboard
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
X-List-Received-Date: Wed, 06 Apr 2011 13:25:47 -0000
X-Groupsio-MsgNum: 5155
Content-Type: multipart/mixed; boundary="0-419256789-1302096340=:25176"

--0-419256789-1302096340=:25176
Content-Type: multipart/alternative; boundary="0-1787698185-1302096340=:25176"

--0-1787698185-1302096340=:25176
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks for your response but I don't think any package is going to build. I=
'm sending you whole message on my console after bitbake. Please check it a=
nd guide me to solve the problem.Thanks

--- On Wed, 6/4/11, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:

From: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: [poky] facing problem in branch validation for beagleboard
To: "Sparsh Wid hope" <sparsh150847@yahoo.com>
Cc: "poky" <poky@yoctoproject.org>
Date: Wednesday, 6 April, 2011, 12:38 PM



On Wed, Apr 6, 2011 at 6:48 AM, Sparsh Wid hope <sparsh150847@yahoo.com> wr=
ote:
=0AHi All,
=0AI'm trying to build a poky image for beagle board with linux-yocto-2.6.3=
7 and got following errors.
Hmm. This should never happen, it means that something has gone=0Awrong wit=
h the clone of linux-yocto-2.6.37.=A0=A0=0A
Unstaged changes after reset:M =A0 =A0 =A0 .gitignoreM =A0 =A0 =A0 Document=
ation/hwmon/jc42=0A...error: Your local changes to the following files woul=
d be overwritten by=0A checkout...Please move or remove them before you can=
 switch branches.=0AAbortingerror: Cannot delete the branch 'meta-temp' whi=
ch you are currently on.error: Your local changes to the following files wo=
uld be overwritten by checkout:..=0A.Please move or remove them before you =
can switch branches.Abortingwarning: could not find ktypes/temp.scc./0-meta=
-temp-a81c58139afe973468e690658cd5f18d.sco: line 14: temp_=0A
If this happens, the system was attempting to construct an automatic defini=
tion=A0and it couldn't since the tree wasn't recognizable.=0A
Do any of the qemu targets build ? I'd like to narrow down what could begoi=
ng wrong.
Cheers,
Bruce=A0=0A68b329da9893e34099c7d8ad5cb9c940: command not foundERROR. Could =
not locate meta series for beagleboard-standard=0AERROR: Function 'do_patch=
'=0A failed (see /home/surya/Surya/pro/my_poky/poky/build/tmp/work/beaglebo=
ard-poky-linux-gnueabi/linux-yocto-2.6.37+git3+17e49db8624324d090dd5aaa18ef=
977bb2dd5f6d_3+17e49db8624324d090dd5aaa18ef977bb2dd5f6d-r16/temp/log.do_pat=
ch.13906 for further information)=0A---------------------------------------=
---------------------------------------------------------------------------=
-----------------please help me to resolve the problem.Thanks in advance=0A=
Sparsh
_______________________________________________
=0Apoky mailing list
=0Apoky@yoctoproject.org
=0Ahttps://lists.yoctoproject.org/listinfo/poky
=0A



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await thee a=
t its end"
=0A

--0-1787698185-1302096340=:25176
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" ><tr><td valign=3D"=
top" style=3D"font: inherit;"><div id=3D"yiv813100461"><table cellspacing=
=3D"0" cellpadding=3D"0" border=3D"0" id=3D"yiv813100461bodyDrftID" class=
=3D"yiv813100461"><tbody><tr><td id=3D"yiv813100461drftMsgContent" style=3D=
"font:inherit;font-family:arial;font-size:10pt;">Thanks for your response b=
ut I don't think any package is going to build. I'm sending you whole messa=
ge on my console after bitbake. Please check it and guide me to solve the p=
roblem.<div>Thanks<br><br>--- On <b>Wed, 6/4/11, Bruce Ashfield <i>&lt;bruc=
e.ashfield@gmail.com&gt;</i></b> wrote:<br><blockquote style=3D"border-left=
:2px solid rgb(16, 16, 255);margin-left:5px;padding-left:5px;"><br>From: Br=
uce Ashfield &lt;bruce.ashfield@gmail.com&gt;<br>Subject: Re: [poky] facing=
 problem in branch validation for beagleboard<br>To: "Sparsh Wid hope" &lt;=
sparsh150847@yahoo.com&gt;<br>Cc: "poky" &lt;poky@yoctoproject.org&gt;<br>D=
ate: Wednesday, 6 April,
 2011, 12:38 PM<br><br><div id=3D"yiv813100461"><br><br><div class=3D"yiv81=
3100461gmail_quote">On Wed, Apr 6, 2011 at 6:48 AM, Sparsh Wid hope <span d=
ir=3D"ltr">&lt;<a rel=3D"nofollow">sparsh150847@yahoo.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"yiv813100461gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex;">=0A<table cellspacing=
=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr><td valign=3D"top" style=
=3D"font:inherit;"><font face=3D"arial" size=3D"2">Hi All,</font><div style=
=3D"font-family:arial;font-size:10pt;"><br></div><div style=3D"font-family:=
arial;font-size:10pt;">=0AI'm trying to build a poky image for beagle board=
 with linux-yocto-2.6.37 and got following errors.</div></td></tr></tbody><=
/table></blockquote><div><br></div><div>Hmm. This should never happen, it m=
eans that something has gone</div>=0A<div>wrong with the clone of linux-yoc=
to-2.6.37.&nbsp;</div><div>&nbsp;</div><blockquote class=3D"yiv813100461gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex;"><table cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr>=
=0A<td valign=3D"top" style=3D"font:inherit;"><div style=3D"font-family:ari=
al;font-size:10pt;"><br></div><div style=3D"font-family:arial;font-size:10p=
t;"><div>Unstaged changes after reset:</div><div>M &nbsp; &nbsp; &nbsp; .gi=
tignore</div><div>M &nbsp; &nbsp; &nbsp; Documentation/hwmon/jc42</div>=0A<=
/div><div style=3D"font-family:arial;font-size:10pt;">.</div><div style=3D"=
font-family:arial;font-size:10pt;">.</div><div style=3D"font-family:arial;f=
ont-size:10pt;">.</div><div><font face=3D"arial" size=3D"2">error: Your loc=
al changes to the following files would be overwritten by=0A checkout</font=
></div><div><font face=3D"arial" size=3D"2">.</font></div><div><font face=
=3D"arial" size=3D"2">.</font></div><div><font face=3D"arial" size=3D"2">.<=
/font></div><div><font face=3D"arial" size=3D"2"><div>Please move or remove=
 them before you can switch branches.</div>=0A<div>Aborting</div><div>error=
: Cannot delete the branch 'meta-temp' which you are currently on.</div><di=
v>error: Your local changes to the following files would be overwritten by =
checkout:</div><div>.</div><div>.</div>=0A<div>.</div><div><div>Please move=
 or remove them before you can switch branches.</div><div>Aborting</div><di=
v>warning: could not find ktypes/temp.scc</div><div>./0-meta-temp-a81c58139=
afe973468e690658cd5f18d.sco: line 14: temp_</div>=0A</div></font></div></td=
></tr></tbody></table></blockquote><div><br></div><div>If this happens, the=
 system was attempting to construct an automatic definition&nbsp;</div><div=
>and it couldn't since the tree wasn't recognizable.</div>=0A<div><br></div=
><div>Do any of the qemu targets build ? I'd like to narrow down what could=
 be</div><div>going wrong.</div><div><br></div><div>Cheers,</div><div><br><=
/div><div>Bruce</div><div>&nbsp;</div><blockquote class=3D"yiv813100461gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex;">=0A<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><tbody><t=
r><td valign=3D"top" style=3D"font:inherit;"><div><font face=3D"arial" size=
=3D"2"><div><div>68b329da9893e34099c7d8ad5cb9c940: command not found</div><=
div>ERROR. Could not locate meta series for beagleboard-standard</div>=0A<d=
iv>ERROR: Function 'do_patch'=0A failed (see /home/surya/Surya/pro/my_poky/=
poky/build/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-2.6.37+git3+=
17e49db8624324d090dd5aaa18ef977bb2dd5f6d_3+17e49db8624324d090dd5aaa18ef977b=
b2dd5f6d-r16/temp/log.do_patch.13906 for further information)</div>=0A</div=
><div>---------------------------------------------------------------------=
--------------------------------------------------------------</div><div>pl=
ease help me to resolve the problem.</div><div>Thanks in advance</div>=0A<d=
iv>Sparsh</div></font></div></td></tr></tbody></table><br>_________________=
______________________________<br>=0Apoky mailing list<br>=0A<a rel=3D"nofo=
llow">poky@yoctoproject.org</a><br>=0A<a rel=3D"nofollow" target=3D"_blank"=
 href=3D"https://lists.yoctoproject.org/listinfo/poky">https://lists.yoctop=
roject.org/listinfo/poky</a><br>=0A<br></blockquote></div><br><br clear=3D"=
all"><br>-- <br>"Thou shalt not follow the NULL pointer, for chaos and madn=
ess await thee at its end"<br>=0A</div></blockquote></div></td></tr></tbody=
></table></div></td></tr></table>

--0-1787698185-1302096340=:25176--

--0-419256789-1302096340=:25176
Content-Type: application/octet-stream; name="build message on console"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="build message on console"

QVJOSU5HOiBObyBiYiBmaWxlcyBtYXRjaGVkIEJCRklMRV9QQVRURVJOX3lvY3RvICdeL2hvbWUv
c3VyeWEvU3VyeWEvcHJvL215X3Bva3kvcG9reS9tZXRhLXlvY3RvLycjIyMjIyMjfCBFVEE6ICAw
MDowMDowMApQYXJzaW5nIHJlY2lwZXM6IDEwMCUgfCMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
fCBUaW1lOiAwMDowMDowMApQYXJzaW5nIG9mIDc4NiAuYmIgZmlsZXMgY29tcGxldGUgKDc1MCBj
YWNoZWQsIDM2IHBhcnNlZCkuIDk5NiB0YXJnZXRzLCAzNiBza2lwcGVkLCAwIG1hc2tlZCwgMCBl
cnJvcnMuCgpPRSBCdWlsZCBDb25maWd1cmF0aW9uOgpCQl9WRVJTSU9OICAgICAgICA9ICIxLjEx
LjAiCk1FVEFEQVRBX0JSQU5DSCAgID0gIm1hc3RlciIKTUVUQURBVEFfUkVWSVNJT04gPSAiYWZk
Mjg1OTgzNjg5NjNkYzQ5YmZkMDJlZjJkNmY1NDIxOGQ2NjNhZSIKVEFSR0VUX0FSQ0ggICAgICAg
PSAiYXJtIgpUQVJHRVRfT1MgICAgICAgICA9ICJsaW51eC1nbnVlYWJpIgpNQUNISU5FICAgICAg
ICAgICA9ICJiZWFnbGVib2FyZCIKRElTVFJPICAgICAgICAgICAgPSAicG9reSIKRElTVFJPX1ZF
UlNJT04gICAgPSAiMS4wK3NuYXBzaG90LTIwMTEwNDA2IgpUQVJHRVRfRlBVICAgICAgICA9ICJz
b2Z0IgoKTk9URTogUmVzb2x2aW5nIGFueSBtaXNzaW5nIHRhc2sgcXVldWUgZGVwZW5kZW5jaWVz
Ck5PVEU6IFByZXBhcmluZyBydW5xdWV1ZQpOT1RFOiBFeGVjdXRpbmcgU2V0U2NlbmUgVGFza3MK
Tk9URTogRXhlY3V0aW5nIFJ1blF1ZXVlIFRhc2tzCk5PVEU6IFJ1bm5pbmcgdGFzayA5ODUgb2Yg
MjIyOCAoSUQ6IDQzMywgL2hvbWUvc3VyeWEvU3VyeWEvcHJvL215X3Bva3kvcG9reS9tZXRhL3Jl
Y2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3RvX2dpdC5iYiwgZG9fZmV0Y2gpCk5PVEU6IHBh
Y2thZ2UgbGludXgteW9jdG8tMi42LjM3K2dpdDMrMTdlNDlkYjg2MjQzMjRkMDkwZGQ1YWFhMThl
Zjk3N2JiMmRkNWY2ZF82KzE3ZTQ5ZGI4NjI0MzI0ZDA5MGRkNWFhYTE4ZWY5NzdiYjJkZDVmNmQt
cjE2OiB0YXNrIGRvX2ZldGNoOiBTdGFydGVkCk5PVEU6IHBhY2thZ2UgbGludXgteW9jdG8tMi42
LjM3K2dpdDMrMTdlNDlkYjg2MjQzMjRkMDkwZGQ1YWFhMThlZjk3N2JiMmRkNWY2ZF82KzE3ZTQ5
ZGI4NjI0MzI0ZDA5MGRkNWFhYTE4ZWY5NzdiYjJkZDVmNmQtcjE2OiB0YXNrIGRvX2ZldGNoOiBT
dWNjZWVkZWQKCk5PVEU6IFJ1bm5pbmcgdGFzayA5ODYgb2YgMjIyOCAoSUQ6IDQyOSwgL2hvbWUv
c3VyeWEvU3VyeWEvcHJvL215X3Bva3kvcG9reS9tZXRhL3JlY2lwZXMta2VybmVsL2xpbnV4L2xp
bnV4LXlvY3RvX2dpdC5iYiwgZG9fdW5wYWNrKQpOT1RFOiBwYWNrYWdlIGxpbnV4LXlvY3RvLTIu
Ni4zNytnaXQzKzE3ZTQ5ZGI4NjI0MzI0ZDA5MGRkNWFhYTE4ZWY5NzdiYjJkZDVmNmRfNisxN2U0
OWRiODYyNDMyNGQwOTBkZDVhYWExOGVmOTc3YmIyZGQ1ZjZkLXIxNjogdGFzayBkb191bnBhY2s6
IFN0YXJ0ZWQKTk9URTogcGFja2FnZSBsaW51eC15b2N0by0yLjYuMzcrZ2l0MysxN2U0OWRiODYy
NDMyNGQwOTBkZDVhYWExOGVmOTc3YmIyZGQ1ZjZkXzYrMTdlNDlkYjg2MjQzMjRkMDkwZGQ1YWFh
MThlZjk3N2JiMmRkNWY2ZC1yMTY6IHRhc2sgZG9fdW5wYWNrOiBTdWNjZWVkZWQKCk5PVEU6IFJ1
bm5pbmcgdGFzayAxMDQwIG9mIDIyMjggKElEOiA0MjgsIC9ob21lL3N1cnlhL1N1cnlhL3Byby9t
eV9wb2t5L3Bva3kvbWV0YS9yZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC15b2N0b19naXQuYmIs
IGRvX2tlcm5lbF9jaGVja291dCkKTk9URTogcGFja2FnZSBsaW51eC15b2N0by0yLjYuMzcrZ2l0
MysxN2U0OWRiODYyNDMyNGQwOTBkZDVhYWExOGVmOTc3YmIyZGQ1ZjZkXzYrMTdlNDlkYjg2MjQz
MjRkMDkwZGQ1YWFhMThlZjk3N2JiMmRkNWY2ZC1yMTY6IHRhc2sgZG9fa2VybmVsX2NoZWNrb3V0
OiBTdGFydGVkCk5PVEU6IHBhY2thZ2UgbGludXgteW9jdG8tMi42LjM3K2dpdDMrMTdlNDlkYjg2
MjQzMjRkMDkwZGQ1YWFhMThlZjk3N2JiMmRkNWY2ZF82KzE3ZTQ5ZGI4NjI0MzI0ZDA5MGRkNWFh
YTE4ZWY5NzdiYjJkZDVmNmQtcjE2OiB0YXNrIGRvX2tlcm5lbF9jaGVja291dDogU3VjY2VlZGVk
CgpOT1RFOiBSdW5uaW5nIHRhc2sgMTEyMiBvZiAyMjI4IChJRDogNDI3LCAvaG9tZS9zdXJ5YS9T
dXJ5YS9wcm8vbXlfcG9reS9wb2t5L21ldGEvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9j
dG9fZ2l0LmJiLCBkb192YWxpZGF0ZV9icmFuY2hlcykKTk9URTogcGFja2FnZSBsaW51eC15b2N0
by0yLjYuMzcrZ2l0MysxN2U0OWRiODYyNDMyNGQwOTBkZDVhYWExOGVmOTc3YmIyZGQ1ZjZkXzYr
MTdlNDlkYjg2MjQzMjRkMDkwZGQ1YWFhMThlZjk3N2JiMmRkNWY2ZC1yMTY6IHRhc2sgZG9fdmFs
aWRhdGVfYnJhbmNoZXM6IFN0YXJ0ZWQKTk9URTogcGFja2FnZSBsaW51eC15b2N0by0yLjYuMzcr
Z2l0MysxN2U0OWRiODYyNDMyNGQwOTBkZDVhYWExOGVmOTc3YmIyZGQ1ZjZkXzYrMTdlNDlkYjg2
MjQzMjRkMDkwZGQ1YWFhMThlZjk3N2JiMmRkNWY2ZC1yMTY6IHRhc2sgZG9fdmFsaWRhdGVfYnJh
bmNoZXM6IFN1Y2NlZWRlZAoKTk9URTogUnVubmluZyB0YXNrIDExMjMgb2YgMjIyOCAoSUQ6IDQz
MCwgL2hvbWUvc3VyeWEvU3VyeWEvcHJvL215X3Bva3kvcG9reS9tZXRhL3JlY2lwZXMta2VybmVs
L2xpbnV4L2xpbnV4LXlvY3RvX2dpdC5iYiwgZG9fcGF0Y2gpCk5PVEU6IHBhY2thZ2UgbGludXgt
eW9jdG8tMi42LjM3K2dpdDMrMTdlNDlkYjg2MjQzMjRkMDkwZGQ1YWFhMThlZjk3N2JiMmRkNWY2
ZF82KzE3ZTQ5ZGI4NjI0MzI0ZDA5MGRkNWFhYTE4ZWY5NzdiYjJkZDVmNmQtcjE2OiB0YXNrIGRv
X3BhdGNoOiBTdGFydGVkCgoKCgoKCgo=

--0-419256789-1302096340=:25176--
