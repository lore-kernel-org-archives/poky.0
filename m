Subject: Kirkstone python3-git recipe patch issue
To: poky@lists.yoctoproject.org
From: "Phil Sutherland" <phil@sutherland.id.au>
X-Originating-Location: South Yarra, Victoria, AU (61.68.14.60)
X-Originating-Platform: Linux Firefox 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 09 Feb 2023 20:21:13 -0800
Message-ID: <M1pL.1676002873271916598.XiKH@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8pWtjSZtyFhIel6wY8eF"

--8pWtjSZtyFhIel6wY8eF
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings all,
There's an error in the recent Kirkstone branch patches to meta/recipes-dev=
tools/python/python3-git here ( https://git.yoctoproject.org/poky/commit/?h=
=3Dkirkstone&id=3D07213601fd865e698b4f7f6bd61d824e9d8181d2 ). Specifically,=
 line 294 of the PR1521 patch results in an indentation error on line 700 o=
f remote.py after the patch is applied. What's the appropriate way to fix t=
his? Should I submit a patch to the patch (seems odd - though that's effect=
ively what I've done locally), or instead submit a complete regenerated pat=
ch file?
Thanks
phil

--8pWtjSZtyFhIel6wY8eF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings all,<br />There's an error in the recent Kirkstone branch patches=
 to meta/recipes-devtools/python/python3-git <a href=3D"https://git.yoctopr=
oject.org/poky/commit/?h=3Dkirkstone&amp;id=3D07213601fd865e698b4f7f6bd61d8=
24e9d8181d2" target=3D"_blank" rel=3D"noopener">here</a>. Specifically, lin=
e 294 of the PR1521 patch results in an indentation error on line 700 of re=
mote.py after the patch is applied. What's the appropriate way to fix this?=
 Should I submit a patch to the patch (seems odd - though that's effectivel=
y what I've done locally), or instead submit a complete regenerated patch f=
ile? <br />Thanks<br />phil

--8pWtjSZtyFhIel6wY8eF--
