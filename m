Subject: Install package from on multiconfig into rootfs of another config
To: poky@lists.yoctoproject.org
From: "Kevin" <kevin@smartthings.com>
X-Originating-Location: Minneapolis, Minnesota, US (50.236.136.162)
X-Originating-Platform: Mac Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 13 Dec 2019 09:21:46 -0800
Message-ID: <7lLh.1576257706810062936.oSTJ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="EIZ3oXzhayTBJvQvWOLG"

--EIZ3oXzhayTBJvQvWOLG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Is there a best practice for installing packages from a multiconfig into a=
n image of a dependent configuration?=C2=A0 For example if I have a recipe =
for a binary that builds under a multiconfig configuration X, and I have an=
 image recipe that has the following in it:
do_image[mcdepends] =3D multiconfig::X:my_recipe:do_install

The dependency chain seems to be working OK as I can see my multiconfig de=
pendency being built and installed, but it is naturally in the multiconfig =
TMPDIR as the multiconfig is using it's own TMPDIR, say build/tmpmultiX/.

Is there a best practice for getting this binary from the multiconfig tmpd=
ir staging area into the staging area for the main image recipe?=C2=A0 Or i=
s it basically you have to add your own custom steps in the image recipe to=
 find that multiconfig binary and install it manually?

Thanks in advance for any help/tips.

--EIZ3oXzhayTBJvQvWOLG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />Is there a best practice for installing packages from a m=
ulticonfig into an image of a dependent configuration?&nbsp; For example if=
 I have a recipe for a binary that builds under a multiconfig configuration=
 X, and I have an image recipe that has the following in it:<br /><span sty=
le=3D"font-family: courier_newregular, courier;">do_image[mcdepends] =3D mu=
lticonfig::X:my_recipe:do_install<span style=3D"font-family: 'helvetica neu=
e';"><br /><br /></span></span>The dependency chain seems to be working OK =
as I can see my multiconfig dependency being built and installed, but it is=
 naturally in the multiconfig TMPDIR as the multiconfig is using it's own T=
MPDIR, say build/tmpmultiX/.&nbsp;&nbsp;<br /><br />Is there a best practic=
e for getting this binary from the multiconfig tmpdir staging area into the=
 staging area for the main image recipe?&nbsp; Or is it basically you have =
to add your own custom steps in the image recipe to find that multiconfig b=
inary and install it manually?<br /><br />Thanks in advance for any help/ti=
ps.

--EIZ3oXzhayTBJvQvWOLG--
