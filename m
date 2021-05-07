Subject: Re: no dt overlay example in meta-skeleton
To: poky@lists.yoctoproject.org
From: dan@engineeredarts.co.uk
X-Originating-Location: Hitchin, England, GB (86.16.192.236)
X-Originating-Platform: Linux Chrome 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 07 May 2021 09:02:09 -0700
References: <20210506113521.6fis6kmgiel32bx2@qschulz>
In-Reply-To: <20210506113521.6fis6kmgiel32bx2@qschulz>
Message-ID: <15831.1620403329264636727@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WtG7s2L7zNoxbIOVvzyH"

--WtG7s2L7zNoxbIOVvzyH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

RFC - this seems to work for me.

File : dtbo-standalone.bbclass
>=20
>=20
>> # Inherit this class in a recipe to build an out of kernel tree Device
>> tree overlay (.dtbo) file
>=20
>=20
>> DEPENDS =3D "dtc-native"
>=20
>=20
>> inherit deploy
>=20
>=20
>> do_compile() {
>=20
>=20
>> cd ${S}
>=20
>=20
>> pwd
>=20
>=20
>> for dtbo in ${DT_OVERLAYS}; do
>=20
>=20
>> dtc -@ -Hepapr -I dts -o $dtbo.dtbo $dtbo.dts
>=20
>=20
>> done
>=20
>=20
>> }
>=20
>=20
>> do_deploy() {
>=20
>=20
>> install -d ${DEPLOYDIR}
>=20
>=20
>> for i in ${S}/*.dtbo ; do
>=20
>=20
>> cp $i ${DEPLOYDIR}
>=20
>=20
>> done
>=20
>=20
>> }
>=20
>=20
>> addtask deploy before do_build after do_install
>=20
>=20
>> do_deploy[dirs] +=3D "${DEPLOYDIR}"
>=20
>=20
>> PACKAGE_ARCH =3D "${MACHINE_ARCH}"
>=20
>=20

File :=C2=A0dtbo-standalone-image.bbclass

>=20
> # Inherit this class in your image recipe to include Device tree overlay
> (.dtbo) files built outside of the kernel tree, e.g. by a my-dtbo.bb
> recipe
>=20
> DTBO_STANDLONE ?=3D ""
>=20
> def make_standalone_dtbo_files_list(d):
> # Generate IMAGE_BOOT_FILES entries for device tree files listed in
> # DTBO_STANDLONE.
> dtbs =3D d.getVar('DTBO_STANDLONE')
>=20
> def transform(dtb):
> base =3D os.path.basename(dtb)
> if dtb.endswith('dtbo'):
> # overlay dtb:
> # eg: overlays/hifiberry-amp.dtbo has:
> #=C2=A0 =C2=A0 =C2=A0DEPLOYDIR file: hifiberry-amp.dtbo
> #=C2=A0 =C2=A0 =C2=A0destination: overlays/hifiberry-amp.dtbo
> return '{};{}'.format(base, dtb)
> elif dtb.endswith('dtb'):
> # eg: whatever/bcm2708-rpi-b.dtb has:
> #=C2=A0 =C2=A0 =C2=A0DEPLOYDIR file: bcm2708-rpi-b.dtb
> #=C2=A0 =C2=A0 =C2=A0destination: bcm2708-rpi-b.dtb
> return base
>=20
> return ' '.join([transform(dtb) for dtb in dtbs.split(' ') if dtb])
>=20
> IMAGE_BOOT_FILES +=3D "${@make_standalone_dtbo_files_list(d)}"
>=20

File : my-dtbo.bb

>=20
> inherit dtbo-standalone
>=20
> LICENSE =3D "CLOSED" # For brevity only
> SRC_URI +=3D "file://my-dt.dts;subdir=3D${PN}-${PV}"
> DT_OVERLAYS =3D "my-dt"
>=20

And then in the image where you want to install the DT file

>=20
> DTBO_STANDLONE +=3D "my-dt.dtbo"

>=20
> inherit=C2=A0dtbo-standalone-image

--WtG7s2L7zNoxbIOVvzyH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

RFC - this seems to work for me.<br /><br />File : dtbo-standalone.bbclass
<blockquote>
<blockquote># Inherit this class in a recipe to build an out of kernel tre=
e Device tree overlay (.dtbo) file</blockquote>
<blockquote>DEPENDS =3D "dtc-native"</blockquote>
<blockquote>inherit deploy&nbsp;</blockquote>
<blockquote>do_compile() {</blockquote>
<blockquote>&nbsp; &nbsp; cd ${S}</blockquote>
<blockquote>&nbsp; &nbsp; pwd</blockquote>
<blockquote>&nbsp; &nbsp; for dtbo in ${DT_OVERLAYS}; do</blockquote>
<blockquote>&nbsp; &nbsp; &nbsp; &nbsp; dtc -@ -Hepapr -I dts -o $dtbo.dtb=
o $dtbo.dts</blockquote>
<blockquote>&nbsp; &nbsp; done</blockquote>
<blockquote>}</blockquote>
<blockquote>do_deploy() {</blockquote>
<blockquote>&nbsp; &nbsp; install -d ${DEPLOYDIR}</blockquote>
<blockquote>&nbsp; &nbsp; for i in ${S}/*.dtbo ; do</blockquote>
<blockquote>&nbsp; &nbsp; &nbsp; &nbsp; cp $i ${DEPLOYDIR}</blockquote>
<blockquote>&nbsp; &nbsp; done</blockquote>
<blockquote>}</blockquote>
<blockquote>addtask deploy before do_build after do_install</blockquote>
<blockquote>do_deploy[dirs] +=3D "${DEPLOYDIR}"</blockquote>
<blockquote>PACKAGE_ARCH =3D "${MACHINE_ARCH}"</blockquote>
</blockquote>
<br />File :&nbsp;dtbo-standalone-image.bbclass<br />
<blockquote>
<div># Inherit this class in your image recipe to include Device tree over=
lay (.dtbo) files built outside of the kernel tree, e.g. by a my-dtbo.bb re=
cipe</div>
<div>&nbsp;</div>
<div>DTBO_STANDLONE ?=3D ""</div>
<div>&nbsp;</div>
<div>def make_standalone_dtbo_files_list(d):</div>
<div>&nbsp; &nbsp; # Generate IMAGE_BOOT_FILES entries for device tree fil=
es listed in</div>
<div>&nbsp; &nbsp; # DTBO_STANDLONE.</div>
<div>&nbsp; &nbsp; dtbs =3D d.getVar('DTBO_STANDLONE')</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; def transform(dtb):</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; base =3D os.path.basename(dtb)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; if dtb.endswith('dtbo'):</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # overlay dtb:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # eg: overlays/hifiberry-am=
p.dtbo has:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; #&nbsp; &nbsp; &nbsp;DEPLOY=
DIR file: hifiberry-amp.dtbo</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; #&nbsp; &nbsp; &nbsp;destin=
ation: overlays/hifiberry-amp.dtbo</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return '{};{}'.format(base,=
 dtb)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; elif dtb.endswith('dtb'):</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # eg: whatever/bcm2708-rpi-=
b.dtb has:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; #&nbsp; &nbsp; &nbsp;DEPLOY=
DIR file: bcm2708-rpi-b.dtb</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; #&nbsp; &nbsp; &nbsp;destin=
ation: bcm2708-rpi-b.dtb</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return base</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; return ' '.join([transform(dtb) for dtb in dtbs.split('=
 ') if dtb])</div>
<div>&nbsp;</div>
<div>IMAGE_BOOT_FILES +=3D "${@make_standalone_dtbo_files_list(d)}"</div>
</blockquote>
File : my-dtbo.bb<br />
<blockquote>
<div>inherit dtbo-standalone</div>
<div>&nbsp;</div>
<div>LICENSE =3D "CLOSED" # For brevity only</div>
<div>SRC_URI +=3D "file://my-dt.dts;subdir=3D${PN}-${PV}"</div>
<div>DT_OVERLAYS =3D "my-dt"</div>
</blockquote>
And then in the image where you want to install the DT file<br />
<blockquote>DTBO_STANDLONE +=3D "my-dt.dtbo"</blockquote>
<blockquote>inherit&nbsp;dtbo-standalone-image</blockquote>

--WtG7s2L7zNoxbIOVvzyH--
