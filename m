Subject: Azure Devops repo URL support ? #poky
To: poky@lists.yoctoproject.org
From: "BELHADJ SALEM Talel" <talel.hajsalem@sofia-technologies.com>
X-Originating-Location: TN (193.95.99.62)
X-Originating-Platform: Linux Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 28 Nov 2022 03:11:09 -0800
Message-ID: <NaNK.1669633869916245748.A2O8@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yiZWZDlMtbzlh2LDlDVn"

--yiZWZDlMtbzlh2LDlDVn
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

I have a git repo on Azure devops project, the `git remote -v` command show=
s the URL in the following format:

git@ssh.dev.azure.com:v3/<USERNAME>/<PROJECT_NAME>

When setting it to SRC_URI as:

SRC_URI =3D "git:// git@ssh.dev.azure.com:v3/<USERNAME>/<PROJECT_NAME>;prot=
ocol=3Dssh;nobranch=3D1 ( git@ssh.dev.azure.com:v3/%3CUSERNAME%3E/%3CPROJEC=
T_NAME%3E ) "

it shows the error:

Bitbake Fetcher Error: FetchError('Unable to fetch URL from any source.

I tried too many combinations:
SRC_URI =3D "git:// <USERNAME>@ssh.dev.azure.com:v3/<USERNAME>/<PROJECT_NAM=
E>;protocol=3Dssh;nobranch=3D1 ( git@ssh.dev.azure.com:v3/%3CUSERNAME%3E/%3=
CPROJECT_NAME%3E ) "
SRC_URI =3D "git:// git@ssh.dev.azure.com/v3/<USERNAME>/<PROJECT_NAME>;prot=
ocol=3Dssh;nobranch=3D1 ( git@ssh.dev.azure.com:v3/%3CUSERNAME%3E/%3CPROJEC=
T_NAME%3E ) "
SRC_URI =3D "git:// <USERNAME>@ssh.dev.azure.com/v3/<USERNAME>/<PROJECT_NAM=
E>;protocol=3Dssh;nobranch=3D1 ( git@ssh.dev.azure.com:v3/%3CUSERNAME%3E/%3=
CPROJECT_NAME%3E ) "

I don't know how to make it work.

Anyone has an idea ?
Thanks

--yiZWZDlMtbzlh2LDlDVn
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,<br /><br />I have a git repo on Azure devops project, the `git r=
emote -v` command shows the URL in the following format:<br /><br /><a href=
=3D"mailto:git@ssh.dev.azure.com:v3/&lt;USERNAME&gt;/&lt;PROJECT_NAME&gt;" =
target=3D"_blank" rel=3D"noopener">git@ssh.dev.azure.com:v3/&lt;USERNAME&gt=
;/&lt;PROJECT_NAME&gt;</a><br /><br />When setting it to SRC_URI as:<br /><=
br />SRC_URI =3D "git://<a href=3D"mailto:git@ssh.dev.azure.com:v3/%3CUSERN=
AME%3E/%3CPROJECT_NAME%3E" target=3D"_blank" rel=3D"noopener">git@ssh.dev.a=
zure.com:v3/&lt;USERNAME&gt;/&lt;PROJECT_NAME&gt;;protocol=3Dssh;nobranch=
=3D1</a>"<br /><br />it shows the error:<br /><br /><span style=3D"font-fam=
ily: monospace;"><span style=3D"color: #b21818;">Bitbake Fetcher Error: Fet=
chError('Unable to fetch URL from any source.<br /></span><br />I tried too=
 many combinations:<br /></span>SRC_URI =3D "git://<a href=3D"mailto:git@ss=
h.dev.azure.com:v3/%3CUSERNAME%3E/%3CPROJECT_NAME%3E" target=3D"_blank" rel=
=3D"noopener">&lt;USERNAME&gt;@ssh.dev.azure.com:v3/&lt;USERNAME&gt;/&lt;PR=
OJECT_NAME&gt;;protocol=3Dssh;nobranch=3D1</a>"<br />SRC_URI =3D "git://<a =
href=3D"mailto:git@ssh.dev.azure.com:v3/%3CUSERNAME%3E/%3CPROJECT_NAME%3E" =
target=3D"_blank" rel=3D"noopener">git@ssh.dev.azure.com/v3/&lt;USERNAME&gt=
;/&lt;PROJECT_NAME&gt;;protocol=3Dssh;nobranch=3D1</a>"<br />SRC_URI =3D "g=
it://<a href=3D"mailto:git@ssh.dev.azure.com:v3/%3CUSERNAME%3E/%3CPROJECT_N=
AME%3E" target=3D"_blank" rel=3D"noopener">&lt;USERNAME&gt;@ssh.dev.azure.c=
om/v3/&lt;USERNAME&gt;/&lt;PROJECT_NAME&gt;;protocol=3Dssh;nobranch=3D1</a>=
"<br /><br /><span style=3D"font-family: monospace;">I don't know how to ma=
ke it work.<br /><br />Anyone has an idea ?&nbsp;<br />Thanks</span>

--yiZWZDlMtbzlh2LDlDVn--
