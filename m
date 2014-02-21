Return-Path: <Javier.Viguera@digi.com>
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A257E007A5
	for <poky@yoctoproject.org>; Fri, 21 Feb 2014 08:54:26 -0800 (PST)
Received: from [216.82.241.196:8361] by server-8.bemta-8.messagelabs.com id
	51/F3-18877-0C487035; Fri, 21 Feb 2014 16:54:24 +0000
X-Env-Sender: Javier.Viguera@digi.com
X-Msg-Ref: server-8.tower-46.messagelabs.com!1393001663!25170450!1
X-Originating-IP: [66.77.174.13]
X-StarScan-Received: 
X-StarScan-Version: 6.9.16; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 23560 invoked from network); 21 Feb 2014 16:54:23 -0000
Received: from mail.mx1.digi.com (HELO mcl-sms-ns1.digi.com) (66.77.174.13)
	by server-8.tower-46.messagelabs.com with RC4-SHA encrypted SMTP;
	21 Feb 2014 16:54:23 -0000
Received: from MCL-VMS-XCH01.digi.com (10.5.8.49) by mail.mx1.digi.com
	(172.16.1.13) with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Fri, 21 Feb 2014 10:54:16 -0600
Received: from dor-sms-exch01.digi.com (10.49.8.100) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Fri, 21 Feb 2014 10:54:22 -0600
Received: from dor-sms-exch01.digi.com ([10.49.8.100]) by
	dor-sms-exch01.digi.com ([10.49.8.100]) with mapi;
	Fri, 21 Feb 2014 17:54:21 +0100
From: "Viguera, Javier" <Javier.Viguera@digi.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Fri, 21 Feb 2014 17:54:18 +0100
Thread-Topic: [for-dora] backport bitbake git fetcher fix
Thread-Index: AQHPLyWPmfyeyYLrbkea4ZyVxzM++Q==
Message-ID: <991B6481567A894BA8E18E29D118D85801558DEB1EF4@dor-sms-exch01.digi.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean
Subject: [for-dora] backport bitbake git fetcher fix
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 21 Feb 2014 16:54:28 -0000
X-Groupsio-MsgNum: 9497
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_991B6481567A894BA8E18E29D118D85801558DEB1EF4dorsmsexch0_"

--_002_991B6481567A894BA8E18E29D118D85801558DEB1EF4dorsmsexch0_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,=0A=
=0A=
I'm using Dora with a customer kernel that happens to have two very =0A=
similar branch names:=0A=
=0A=
af186b498eb8e39ffa419d356010d67d7fa6dee3 refs/heads/android/v3.10/master=0A=
a094f655dc2ba623742a01dcb744ed0e8ebde3ed refs/heads/v3.10/master=0A=
=0A=
My custom linux recipe does the following to get 'v3.10/master' branch:=0A=
=0A=
KBRANCH_DEFAULT =3D "v3.10/master"=0A=
KBRANCH =3D "${KBRANCH_DEFAULT}"=0A=
SRC_URI =3D "${GIT_URL}linux-2.6.git;protocol=3Dgit;branch=3D${KBRANCH}"=0A=
=0A=
But it always fetchs the 'android/v3.10/master' branch.=0A=
=0A=
This seems to be already fixed in master:=0A=
=0A=
d21c1537b7052aa24ec56434b821fee67de33a83=0A=
=0A=
So could that fix be cherry-picked to Dora?=0A=
=0A=
Directly cherry-picking the commit does not apply cleanly so i attach =0A=
here a reworked patch that applies to Dora.=0A=
=0A=
-=0A=
Javier Viguera=0A=
Software Engineer=0A=
Digi International=AE Spain S.A.U.=0A=

--_002_991B6481567A894BA8E18E29D118D85801558DEB1EF4dorsmsexch0_
Content-Type: text/x-diff;
	name="0001-bitbake-fetch2-git-Anchor-names-when-using-ls-remote.patch"
Content-Description: 0001-bitbake-fetch2-git-Anchor-names-when-using-ls-remote.patch
Content-Disposition: attachment;
	filename="0001-bitbake-fetch2-git-Anchor-names-when-using-ls-remote.patch";
	size=1662; creation-date="Fri, 21 Feb 2014 16:54:19 GMT";
	modification-date="Fri, 21 Feb 2014 16:54:19 GMT"
Content-Transfer-Encoding: base64

RnJvbSA0Y2E3Y2NjZDdjZThjZjU4MzMyYjNmMDBlYjFiMWU1YmJmNjFhZWJkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBSaWNoYXJkIFB1cmRpZSA8cmljaGFyZC5wdXJkaWVAbGludXhm
b3VuZGF0aW9uLm9yZz4KRGF0ZTogTW9uLCAyMCBKYW4gMjAxNCAxNDozMDoxMSArMDAwMApTdWJq
ZWN0OiBbUEFUQ0hdIGJpdGJha2U6IGZldGNoMi9naXQ6IEFuY2hvciBuYW1lcyB3aGVuIHVzaW5n
IGxzLXJlbW90ZQoKV2hlbiBzcGVjaWZ5aW5nIHRhZ3MsIHRoZXkncmUgc2VhcmNoZWQgZm9yIHVu
YW5jaG9yZWQgc28gZm9vL2JhciBjb3VsZAptYXRjaDoKCnJlZnMvaGVhZHMvYWJjL2Zvby9iYXIK
cmVmcy9oZWFkcy94eXovZm9vL2JhcgpyZWZzL2hlYWRzL2Zvby9iYXIKClRoaXMgY2hhbmdlIGFu
Y2hvcnMgdGhlIGV4cHJlc3Npb25zIHNvIHRoZXkgYXJlIGJhc2VkIGFnYWluc3QgaGVhZHMKb3Ig
dGFncyAob3IgYW55IG90aGVyIGJhc2UgbGV2ZWwgdHJlZSB0aGF0IGhhcyBiZWVuIGNyZWF0ZWQp
LgoKKEJpdGJha2UgcmV2OiBkZjJlMDk3MmNkMWRiN2FiZDVlYzhiN2NiMjk1ZmIwYzQyZTI4NGE0
KQoKU2lnbmVkLW9mZi1ieTogUmljaGFyZCBQdXJkaWUgPHJpY2hhcmQucHVyZGllQGxpbnV4Zm91
bmRhdGlvbi5vcmc+CihjaGVycnkgcGlja2VkIGZyb20gY29tbWl0IGQyMWMxNTM3YjcwNTJhYTI0
ZWM1NjQzNGI4MjFmZWU2N2RlMzNhODMpClNpZ25lZC1vZmYtYnk6IEphdmllciBWaWd1ZXJhIDxq
YXZpZXIudmlndWVyYUBkaWdpLmNvbT4KCkNvbmZsaWN0czoKCWJpdGJha2UvbGliL2JiL2ZldGNo
Mi9naXQucHkKLS0tCiBiaXRiYWtlL2xpYi9iYi9mZXRjaDIvZ2l0LnB5IHwgNCArKy0tCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2JpdGJha2UvbGliL2JiL2ZldGNoMi9naXQucHkgYi9iaXRiYWtlL2xpYi9iYi9mZXRjaDIvZ2l0
LnB5CmluZGV4IDYxNzVlNGM3Yzk3Ny4uOTg5ZDcyY2IzMTZlIDEwMDY0NAotLS0gYS9iaXRiYWtl
L2xpYi9iYi9mZXRjaDIvZ2l0LnB5CisrKyBiL2JpdGJha2UvbGliL2JiL2ZldGNoMi9naXQucHkK
QEAgLTMwNSw4ICszMDUsOCBAQCBjbGFzcyBHaXQoRmV0Y2hNZXRob2QpOgogICAgICAgICAgICAg
dXNlcm5hbWUgPSAiIgogCiAgICAgICAgIGJhc2VjbWQgPSBkYXRhLmdldFZhcigiRkVUQ0hDTURf
Z2l0IiwgZCwgVHJ1ZSkgb3IgImdpdCIKLSAgICAgICAgY21kID0gIiVzIGxzLXJlbW90ZSAlczov
LyVzJXMlcyAlcyIgJSBcCi0gICAgICAgICAgICAgIChiYXNlY21kLCB1ZC5wcm90bywgdXNlcm5h
bWUsIHVkLmhvc3QsIHVkLnBhdGgsIHVkLmJyYW5jaGVzW25hbWVdKQorICAgICAgICBjbWQgPSAi
JXMgbHMtcmVtb3RlICVzOi8vJXMlcyVzIHJlZnMvaGVhZHMvJXMgcmVmcy90YWdzLyVzIiAlIFwK
KyAgICAgICAgICAgICAgKGJhc2VjbWQsIHVkLnByb3RvLCB1c2VybmFtZSwgdWQuaG9zdCwgdWQu
cGF0aCwgdWQuYnJhbmNoZXNbbmFtZV0sIHVkLmJyYW5jaGVzW25hbWVdKQogICAgICAgICBpZiB1
ZC5wcm90by5sb3dlcigpICE9ICdmaWxlJzoKICAgICAgICAgICAgIGJiLmZldGNoMi5jaGVja19u
ZXR3b3JrX2FjY2VzcyhkLCBjbWQpCiAgICAgICAgIG91dHB1dCA9IHJ1bmZldGNoY21kKGNtZCwg
ZCwgVHJ1ZSkK

--_002_991B6481567A894BA8E18E29D118D85801558DEB1EF4dorsmsexch0_--
