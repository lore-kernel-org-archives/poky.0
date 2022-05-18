Subject: Re: Need suggestion to handle COMBINED_FEATURES variable.
To: poky@lists.yoctoproject.org
From: "Rahul Chauhan" <rahulchauhankitps@gmail.com>
X-Originating-Location: Melbourne, Victoria, AU (155.190.53.4)
X-Originating-Platform: Windows Chrome 101
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 18 May 2022 09:30:37 -0700
References: <e84bba5e-3d55-61e7-4809-70ff3960df51@gmail.com>
In-Reply-To: <e84bba5e-3d55-61e7-4809-70ff3960df51@gmail.com>
Message-ID: <24270.1652891437431345669@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5supGcAt7xqB4IOW2wNm"

--5supGcAt7xqB4IOW2wNm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem Raj,

Thank you for quick response.

Actually i am using my own distro derivided from poky.conf and own xyz-mach=
ine.conf file.
In my xyz-machine.conf , wifi is MACHINE_FEATURE.

Since i dont want packagegroup-base-wifi in my build so i am using below li=
ne in my own distro.
DISTRO_FEATURES_remove =3D "wifi" in my distro.

So now my question is how to handle COMBINED_FEATURE to control the package=
/package-group installation.

DISTRO_FEATURES_remove is enough in distro file.
or
MACHINE_FEATURE_remove also required in machine.conf file.
Or
Any one of the above is sufficient.

Is COMBINED_FEATURES_remove =3D "wifi" is recommended by community..

Or suggest me what is the ideal way to remove the combined feature from the=
 build. (I dont't want to keep it in local.conf file)

Thanks in advance.
Rahul Chauhan

--5supGcAt7xqB4IOW2wNm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem Raj,<br /><br />Thank you for quick response.<br /><br />Actually i=
 am using my own distro&nbsp;<span style=3D"white-space: pre-wrap;">derivid=
ed from poky.conf and own xyz-machine.conf file.<br />In my xyz-machine.con=
f , wifi is MACHINE_FEATURE.<br /><br />Since i dont want </span><span styl=
e=3D"white-space: pre-wrap;">packagegroup-base-wifi in my build so i am usi=
ng below line in my own distro.</span><span style=3D"white-space: pre-wrap;=
"><br /></span><span style=3D"white-space: pre-wrap;"> DISTRO_FEATURES_remo=
ve =3D "wifi" in my distro.<br /><br />So now my question is how to handle =
COMBINED_FEATURE to control the package/package-group installation.<br /><b=
r /></span><span style=3D"white-space: pre-wrap;">DISTRO_FEATURES_remove is=
 enough in distro file.<br />or </span><br /><span style=3D"white-space: pr=
e-wrap;">MACHINE_FEATURE_remove also required in machine.conf file.</span><=
br /><span style=3D"white-space: pre-wrap;">Or </span><br /><span style=3D"=
white-space: pre-wrap;">Any one of the above is sufficient.</span><br /><br=
 /><span style=3D"white-space: pre-wrap;">Is COMBINED_FEATURES_remove =3D "=
wifi" is recommended by community..</span><br style=3D"white-space: pre-wra=
p;" /><span style=3D"white-space: pre-wrap;"><br />Or suggest me what is th=
e ideal way to remove the combined feature from the build. (I dont't want t=
o keep it in local.conf file)</span><br style=3D"white-space: pre-wrap;" />=
<span style=3D"white-space: pre-wrap;"><br />Thanks in advance.</span><br s=
tyle=3D"white-space: pre-wrap;" /><span style=3D"white-space: pre-wrap;">Ra=
hul Chauhan</span><span style=3D"white-space: pre-wrap;"><br /><br /><br />=
<br /><br /><br /><br /><br /><br /></span><span style=3D"white-space: pre-=
wrap;"><br /><br /><br /><br /></span>

--5supGcAt7xqB4IOW2wNm--
