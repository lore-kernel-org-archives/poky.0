Subject: Re: Qt sample fails to compile using meta-qt5
To: poky@lists.yoctoproject.org
From: "Rahul Chauhan" <rahulchauhankitps@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (36.255.87.192)
X-Originating-Platform: Linux Firefox 72
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Jan 2020 11:01:48 -0800
References: <jJyU.1580118950042896932.myMR@lists.yoctoproject.org>
In-Reply-To: <jJyU.1580118950042896932.myMR@lists.yoctoproject.org>
Message-ID: <24760.1580151708027036838@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KtPQqGIEoQKh5Cch0hnk"

--KtPQqGIEoQKh5Cch0hnk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Ashish,

If you are using *qtbase-example* in your packagegroup, then you need to e=
nable examples configuration in qtbase.

you can do this by adding=C2=A0 below line in qtbase bbappend file to enab=
le examples configuration .
PACKAGECONFIG_append =3D " examples"

Thanks
Rahul Chauhan

--KtPQqGIEoQKh5Cch0hnk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Ashish,<br /><br />If you are using <strong>qtbase-example </strong>in y=
our packagegroup, then you need to enable examples configuration in qtbase.=
<br /><br />you can do this by adding&nbsp; below line in qtbase bbappend f=
ile to enable examples configuration .<br />PACKAGECONFIG_append =3D " exam=
ples"<br /><br />Thanks<br />Rahul Chauhan

--KtPQqGIEoQKh5Cch0hnk--
