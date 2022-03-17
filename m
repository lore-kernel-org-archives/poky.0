Subject: Re: [PULL][PATCH 0/2] Implement debian packages GPG signing
To: poky@lists.yoctoproject.org
From: "Ferry Toth" <fntoth@gmail.com>
X-Originating-Location: Breda, North Brabant, NL (77.172.156.62)
X-Originating-Platform: Linux Firefox 98
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 17 Mar 2022 10:59:32 -0700
References: <29294.1624221743778282039@lists.yoctoproject.org>
In-Reply-To: <29294.1624221743778282039@lists.yoctoproject.org>
Message-ID: <16036.1647539972048006331@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0bWoUwWxthdjTxMortfk"

--0bWoUwWxthdjTxMortfk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It seems nobody is interested in using apt for package management? Strange.

Let me explain: since gatesgart apt requires a repository to be signed. The=
 above linked patches do exactly that. The can still be applied to hardknot=
t and honister. To me seems to be a good addition that brings deb to the sa=
me level as rpm and ipk.

On the signing-keys issue, it may be unrelated. Let me self answer this:

signing-keys-dev depends on signing-keys which doesn't exist. It is not bui=
lt because it is empty.

This is resolved by adding to the recipe:
ALLOW_EMPTY_${PN} =3D "1"

--0bWoUwWxthdjTxMortfk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It seems nobody is interested in using apt for package management? Strange.=
<br /><br />Let me explain: since gatesgart apt requires a repository to be=
 signed. The above linked patches do exactly that. The can still be applied=
 to hardknott and honister. To me seems to be a good addition that brings d=
eb to the same level as rpm and ipk.<br /><br />On the signing-keys issue, =
it may be unrelated. Let me self answer this:<br /><br />signing-keys-dev d=
epends on signing-keys which doesn't exist. It is not built because it is e=
mpty.<br /><br />This is resolved by adding to the recipe:<br />
<pre><em>ALLOW_EMPTY_${PN} =3D "1"</em></pre>

--0bWoUwWxthdjTxMortfk--
