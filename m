Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 899E4C021B8
	for <webhook@archiver.kernel.org>; Sat,  1 Mar 2025 21:42:23 +0000 (UTC)
Subject: Creating a hash of a password for my recipe to add a user
To: poky@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Ottawa, Ontario, CA (184.175.41.163)
X-Originating-Platform: Linux Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 01 Mar 2025 13:42:15 -0800
Message-ID: <npf1.1740865335355684020.Dc5N@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jcaqD7GSZjcqLzsUZBxc"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 01 Mar 2025 21:42:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13548

--jcaqD7GSZjcqLzsUZBxc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I tried the extrausers class and I didn't get any errors but I also got no =
joy. Nothing was created on the target and I moved onto using the adduser e=
xample from the meta-skeleton directories. I have joy now, the additional u=
ser is created and I can see the user's home directory various entries requ=
ired in all of the relevant files. yay!

However I have this line in my recipe (ignore the underline):

>=20
> NEWGUY_PASSWORD =3D
> "\$6\$zap5cUSDzKQyKfmL\$g8RRKqDw8U9BlmQFO2GLDPvcGe5mWSnwhMtYbDeKpPEDULJ2y=
LUhI6oHP4xq
> /p7fbE2SftFy4bvPd.ZsHVS55. "
>=20
>=20

I then have this to set the parameters for the added user:

>=20
> USERADD_PARAM:${PN} =3D " -d /home/newguy \
> -m \
> -G tty,audio \
> -p ${NEWGUY_PASSWORD} \
> -U newguy \
> "
>=20

I can't login to the board using the password I created using the command:

>=20
> mkpasswd -m sha512crypt <yeah right... nice try>
>=20

I escaped the character '$' as you can see and cut & pasted it to my recipe=
 file. When I boot the board, I can't login using those credentials (login =
via ssh). I then login via the root account and here is what I find in the =
"/etc/shadow" file:

>=20
> newguy: /p7fbE2SftFy4bvPd.ZsHVS55. :15069:0:99999:7:::
>=20

Now I presume the actual hash is the part that I've underlined and I guess =
the rest is the SALT(?). Is there some other thing I have to do to the hash=
 to make it usable by the login application?

Thanks in advance for any advice.

Cheers!!

--jcaqD7GSZjcqLzsUZBxc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I tried the extrausers class and I didn't get any errors but I also go=
t no joy. Nothing was created on the target and I moved onto using the addu=
ser example from the meta-skeleton directories. I have joy now, the additio=
nal user is created and I can see the user's home directory various entries=
 required in all of the relevant files. yay!</div>
<div>&nbsp;</div>
<div>However I have this line in my recipe (ignore the underline):</div>
<div>&nbsp;</div>
<blockquote>
<div>NEWGUY_PASSWORD =3D "\$6\$zap5cUSDzKQyKfmL\$g8RRKqDw8U9BlmQFO2GLDPvcGe=
5mWSnwhMtYbDeKpPEDULJ2yLUhI6oHP4xq<span style=3D"text-decoration: underline=
;">/p7fbE2SftFy4bvPd.ZsHVS55.</span>"</div>
<div>&nbsp;</div>
</blockquote>
<div>I then have this to set the parameters for the added user:</div>
<div>&nbsp;</div>
<blockquote>
<div>USERADD_PARAM:${PN} =3D " -d /home/newguy \<br />&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -m \<br />&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; -G tty,audio \<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -p ${NEWGUY_PASSWORD} \<br />&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -=
U newguy \<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; "</div>
</blockquote>
<div>I can't login to the board using the password I created using the comm=
and:</div>
<blockquote>
<div>mkpasswd -m sha512crypt &lt;yeah right... nice try&gt;</div>
</blockquote>
<div>&nbsp;</div>
<div>I escaped the character '$' as you can see and cut &amp; pasted it to =
my recipe file. When I boot the board, I can't login using those credential=
s (login via ssh). I then login via the root account and here is what I fin=
d in the "/etc/shadow" file:</div>
<blockquote>
<div>newguy:<span style=3D"text-decoration: underline;">/p7fbE2SftFy4bvPd.Z=
sHVS55.</span>:15069:0:99999:7:::</div>
</blockquote>
<div>&nbsp;</div>
<div>Now I presume the actual hash is the part that I've underlined and I g=
uess the rest is the SALT(?). Is there some other thing I have to do to the=
 hash to make it usable by the login application?</div>
<div>&nbsp;</div>
<div>Thanks in advance for any advice.</div>
<div>&nbsp;</div>
<div>Cheers!!</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--jcaqD7GSZjcqLzsUZBxc--

