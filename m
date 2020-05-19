Subject: Problem building meta-mono gtk-sharp with dunfell release
To: poky@lists.yoctoproject.org
From: "Alex J Lennon" <ajlennon@dynamicdevices.co.uk>
X-Originating-Location: Liverpool, England, GB (92.232.58.145)
X-Originating-Platform: Linux Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 19 May 2020 10:50:15 -0700
Message-ID: <Tkjn.1589910615239216242.Ajap@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cvSZsw4SD6zTxTQ2VZXL"

--cvSZsw4SD6zTxTQ2VZXL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I've run into a problem with my CI building meta-mono gtk-sharp recipe wit=
h dunfell and I wonder if anybody can advise?

>=20
> File: '/data_drive/git/monotest/poky/meta/lib/oe/sstatesig.py', lineno:
> 548, function: process
> 0544:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 add_perm(stat.S_IXOTH, 'x')
> 0545:
> 0546:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if include_=
owners:
> 0547:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 try:
> *** 0548:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 update_hash(" %10s" %
> pwd.getpwuid(s.st_uid).pw_name)
> 0549:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 update_hash(" %10s" %
> grp.getgrgid(s.st_gid).gr_name)
> 0550:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 except KeyError:
> 0551:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 bb.warn("KeyError in %s" % path)
> 0552:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 raise
> Exception: KeyError: 'getpwuid(): uid not found: 1000'
>=20
>=20

Full log is here ( http://jenkins.dynamicdevices.co.uk:8080/job/meta-mono%=
20(dunfell,x86-64)/6/console )

Thanks,

Alex

--cvSZsw4SD6zTxTQ2VZXL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I've run into a problem with my CI building meta-mono gtk-sh=
arp recipe with dunfell and I wonder if anybody can advise?<br /><br />
<blockquote>
<div style=3D"line-height: 1.42857;">
<div style=3D"line-height: 1.42857;">File: '/data_drive/git/monotest/poky/=
meta/lib/oe/sstatesig.py', lineno: 548, function: process</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp;0544:&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; add_perm(stat.S_I=
XOTH, 'x')</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp;0545:</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp;0546:&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if include_owners:</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp;0547:&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; try:</div>
<div style=3D"line-height: 1.42857;">&nbsp;*** 0548:&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; update_hash("=
 %10s" % pwd.getpwuid(s.st_uid).pw_name)</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp;0549:&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; upd=
ate_hash(" %10s" % grp.getgrgid(s.st_gid).gr_name)</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp;0550:&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; except KeyError:<=
/div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp;0551:&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; bb.=
warn("KeyError in %s" % path)</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp;0552:&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; rai=
se</div>
<div style=3D"line-height: 1.42857;">Exception: KeyError: 'getpwuid(): uid=
 not found: 1000'</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
</div>
</blockquote>
Full log is&nbsp;<a href=3D"http://jenkins.dynamicdevices.co.uk:8080/job/m=
eta-mono%20(dunfell,x86-64)/6/console" target=3D"_blank" rel=3D"noopener">h=
ere</a><br /><br />Thanks,<br /><br />Alex

--cvSZsw4SD6zTxTQ2VZXL--
