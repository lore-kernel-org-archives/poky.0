Return-Path: <Emmanuel_Jee@trimble.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25D39CF9C6F
	for <webhook@archiver.kernel.org>; Mon, 23 Sep 2024 20:54:13 +0000 (UTC)
Subject: Re: cargo patch override
To: poky@lists.yoctoproject.org
From: Emmanuel_Jee@trimble.com
X-Originating-Location: Citrus Heights, California, US (67.181.4.84)
X-Originating-Platform: Linux Chrome 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 23 Sep 2024 13:54:09 -0700
References: <CAKHbFk2SJ9nGjbVkqG-birNnPzK=Rx9j8b+BJsCOqLT=yRxyMQ@mail.gmail.com>
In-Reply-To: <CAKHbFk2SJ9nGjbVkqG-birNnPzK=Rx9j8b+BJsCOqLT=yRxyMQ@mail.gmail.com>
Message-ID: <30082.1727124849235538032@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="ZuHczlCNK9CJ6fYTLSDe"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 23 Sep 2024 20:54:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13444

--ZuHczlCNK9CJ6fYTLSDe
Content-Type: multipart/alternative; boundary="DsvLu038bQm0LIBjCvK4"

--DsvLu038bQm0LIBjCvK4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Running into the same issue when using bitbake with a repo with multiple cr=
ates.=C2=A0 We had to add a 'cratedir' parameter to temporarily work around=
 this problem.=C2=A0 We can try your patch

- Emmanuel Jee

--DsvLu038bQm0LIBjCvK4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Running into the same issue when using bitbake with a repo with multip=
le crates.&nbsp; We had to add a 'cratedir' parameter to temporarily work a=
round this problem.&nbsp; We can try your patch<br /><br />- Emmanuel Jee&n=
bsp;&nbsp;</div>

--DsvLu038bQm0LIBjCvK4--

--ZuHczlCNK9CJ6fYTLSDe
Content-Type: text/x-patch; name="0001-cargo-Add-support-for-multiple-crates-in-same-repo.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="0001-cargo-Add-support-for-multiple-crates-in-same-repo.patch"

ZGlmZiAtLWdpdCBhL21ldGEvY2xhc3Nlcy1yZWNpcGUvY2FyZ29fY29tbW9uLmJiY2xhc3MgYi9t
ZXRhL2NsYXNzZXMtcmVjaXBlL2NhcmdvX2NvbW1vbi5iYmNsYXNzCmluZGV4IGM1MjhhZTdmMzku
LjNhYWRiZWJiOTEgMTAwNjQ0Ci0tLSBhL21ldGEvY2xhc3Nlcy1yZWNpcGUvY2FyZ29fY29tbW9u
LmJiY2xhc3MKKysrIGIvbWV0YS9jbGFzc2VzLXJlY2lwZS9jYXJnb19jb21tb24uYmJjbGFzcwpA
QCAtMTUwLDcgKzE1MCwxMSBAQCBweXRob24gY2FyZ29fY29tbW9uX2RvX3BhdGNoX3BhdGhzKCkg
ewogICAgICAgICAgICAgICAgICAgICByZXBvID0gJyVzOi8vJXNAJXMlcycgJSAodWQucHJvdG8s
IHVkLnVzZXIsIHVkLmhvc3QsIHVkLnBhdGgpCiAgICAgICAgICAgICAgICAgZWxzZToKICAgICAg
ICAgICAgICAgICAgICAgcmVwbyA9ICclczovLyVzJXMnICUgKHVkLnByb3RvLCB1ZC5ob3N0LCB1
ZC5wYXRoKQotICAgICAgICAgICAgICAgIHBhdGggPSAnJXMgPSB7IHBhdGggPSAiJXMiIH0nICUg
KG5hbWUsIG9zLnBhdGguam9pbih3b3JrZGlyLCBkZXN0c3VmZml4KSkKKyAgICAgICAgICAgICAg
ICBjcmF0ZWRpciA9IHVkLnBhcm0uZ2V0KCdjcmF0ZWRpcicpCisgICAgICAgICAgICAgICAgaWYg
Y3JhdGVkaXIgaXMgbm90IE5vbmU6CisgICAgICAgICAgICAgICAgICAgIHBhdGggPSAnJXMgPSB7
IHBhdGggPSAiJXMiIH0nICUgKG5hbWUsIG9zLnBhdGguam9pbih3b3JrZGlyLCBkZXN0c3VmZml4
LCBjcmF0ZWRpcikpCisgICAgICAgICAgICAgICAgZWxzZToKKyAgICAgICAgICAgICAgICAgICAg
cGF0aCA9ICclcyA9IHsgcGF0aCA9ICIlcyIgfScgJSAobmFtZSwgb3MucGF0aC5qb2luKHdvcmtk
aXIsIGRlc3RzdWZmaXgpKQogICAgICAgICAgICAgICAgIHBhdGNoZXMuc2V0ZGVmYXVsdChyZXBv
LCBbXSkuYXBwZW5kKHBhdGgpCiAKICAgICB3aXRoIG9wZW4oY2FyZ29fY29uZmlnLCAiYSsiKSBh
cyBjb25maWc6Cg==

--ZuHczlCNK9CJ6fYTLSDe--

